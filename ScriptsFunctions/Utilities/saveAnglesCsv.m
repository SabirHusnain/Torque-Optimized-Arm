function []=saveAnglesCsv(var,name)
M=[var.time var.signals.values];
filePath=pwd;
csvwrite(string(filePath)+"\data\angles\"+string(name)+".csv",M);
end