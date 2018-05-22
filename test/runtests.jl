using NanStats
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

# write your own tests here
#@test 1 == 2

vec1=[NaN,3,4,NaN];

mn=nanmean(vec1);
varn=nanvar(vec1);
kurn=nankurt(vec1);
sken=nanskew(vec1);

print("vec1=$(vec1)\n");
print("The mean for vec1 ignoring NaN values is $(mn)\n");
print("The variance for vec1 ignoring NaN values is $(varn)\n")
print("The kurtosis for vec1 ignoring NaN values is $(kurn)\n");
print("The skewness for vec1 ignoring NaN values is $(sken)\n");
