clear all;
close all;

directory = dir('intel_labeled_data');
dataset = [];
for i=1:2
    file_name = directory(2+i).name;
    disp(file_name)
    data = csvread(strcat('intel_labeled_data/',file_name));
    dataset = [dataset;data];
end

csvwrite('intelDroneData.csv', dataset)
