clear all;
close all;

directory = dir('simulation_labeled_data');
dataset = []
for i=1:15
    file_name = directory(2+i).name;
    disp(file_name)
    data = csvread(strcat('simulation_labeled_data/',file_name));
    dataset = [dataset;data];
end

csvwrite('gazeboSimulationData.csv', dataset)
