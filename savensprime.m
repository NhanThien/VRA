function savensprime(n)
    rArray = findnsprime(n);
    strFileName = ['prime',num2str(n),'.mat'];
    save(strFileName,'rArray')
end
