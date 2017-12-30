# import the necessary packages
from keras.preprocessing.image import img_to_array
from keras.models import load_model
import numpy as np
import argparse
import imutils
import cv2
from keras import backend as K

K.set_image_dim_ordering('th')

ap = argparse.ArgumentParser()
ap.add_argument("-m", "--model", required=True,
	help="path to trained model model")
ap.add_argument("-i", "--image", required=True,
	help="path to input image")
args = vars(ap.parse_args())

# load the image
image = cv2.imread(args["image"])
orig = image.copy()
 
# pre-process the image for classification
image = cv2.resize(image, (32, 32))
image = image.astype("float") / 255.0
image = img_to_array(image)
image = np.expand_dims(image, axis=0)

print("[INFO] loading network...")
model = load_model(args["model"])
# print (model)
# classify the input image
# print(image)
(notnude, nude) = model.predict(image)[0]
# build the label
label = "Nude" if nude > notnude else "Not Nude"
proba = nude if nude > notnude else notnude
label = "{}: {:.2f}%".format(label, proba * 100)
 
# draw the label on the image
output = imutils.resize(orig, width=400)
cv2.putText(output, label, (10, 25),  cv2.FONT_HERSHEY_SIMPLEX,
	0.7, (0, 255, 0), 2)
 
# show the output image
cv2.imshow("Output", output)
cv2.waitKey(0)