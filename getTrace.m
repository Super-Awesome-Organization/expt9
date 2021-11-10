function [trace] = getTrace(traceName)

traces_dir = "./traces"; %gets directory

  fullFileName =  traceName;
       trace =  cell2mat(struct2cell(load (fullFileName)));

  
end
  
  
  