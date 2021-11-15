

function [trace] = getTrace(traceName)
%go into traces subdirectory and get trace with given name and covert to
%matrix
traces_dir = "./traces"; %gets directory

  fullFileName =  traceName;
       trace =  cell2mat(struct2cell(load (fullFileName)));

  
end
  
  
  