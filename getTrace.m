% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 9 Part 2
% 11/15/21
%
% Description:
%	getTrace.m function converts the specific trace into a matrix so
%	computations can be performed on the trace.

function [trace] = getTrace(traceName)
%go into traces subdirectory and get trace with given name and covert to
%matrix
traces_dir = "./traces"; %gets directory

  fullFileName =  traceName;
       trace =  cell2mat(struct2cell(load (fullFileName)));

  
end
  
  
  