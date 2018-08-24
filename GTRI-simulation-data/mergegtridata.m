clear all;
close all;

trainData = csvread('trainset.csv');
testData = csvread('testset.csv');

totalData = [trainData;testData];

csvwrite('dataset.csv', totalData);