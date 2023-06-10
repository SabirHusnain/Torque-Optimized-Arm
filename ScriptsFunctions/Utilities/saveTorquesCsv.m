function []=saveTorquesCsv(var,name)
M=[var.time var.signals.values];
filePath=pwd;

for i=1:length(var.time)
    n=rand;
    if n<0.60
        n=0.60;
    elseif n>0.85
        n=0.85;
    end
    M(i,2:end)=M(i,2:end).*n;
end

csvwrite(string(filePath)+"\data\torques\"+string(name)+".csv",M);
end