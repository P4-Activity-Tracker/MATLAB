%% Setup
clc
close all
clearvars

%% Gorilla loader (virker)
% load('3.txt')
% 
% datafile = csvread('35.txt');
% subplot(2,1,1)
% plot(datafile(:,1)*100)
% hold on
% plot(datafile(:,2)*100)
% hold on
% plot(datafile(:,3)*100)
% hold on
% plot(datafile(:,4))
% hold on
% plot(datafile(:,5))
% hold on
% plot(datafile(:,6))
% 
% datafile1 = csvread('36
% .txt');
% 
% subplot(2,1,2)
% plot(datafile1(:,1)*100)
% hold on
% plot(datafile1(:,2)*100)
% hold on
% plot(datafile1(:,3)*100)
% hold on
% plot(datafile1(:,4))
% hold on
% plot(datafile1(:,5))
% hold on
% plot(datafile1(:,6))

%% Rafineret loader
% 
files = cellstr(ls('*.txt'));
% 
% for k = 1:length(files)
% 
% end
H = figure(1);
set(H,'windowstyle','modal')
data = csvread("36.txt");
plot(data)
key = '';
lastkey = '';
while(~strcmp(key, "q"))
    drawnow
    key = lower(get(H,'CurrentCharacter'));
    if ~strcmp(key, lastkey)
        lastkey = key;
        disp(key)    
    end
end
close all



