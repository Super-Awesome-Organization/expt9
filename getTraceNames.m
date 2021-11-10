function [traces_names,full_names] = getTraceNames

traces_dir = "./traces"; %gets directory
traces_files = dir(fullfile(traces_dir,'*.mat')); %gets all wav files in struct
traces_names = ["hi"];
full_names = ["hi"];
i = 0;
for k = 1:length(traces_files)
    i = i+1;
  baseFileName = traces_files(k).name;
  fullFileName = traces_dir + "/" + baseFileName;
  
  traces_names = cat(2,traces_names,traces_files(k).name(1:16));
  full_names = cat(2,full_names,fullFileName)  ;
end
  traces_names = traces_names(:,2:size(traces_names,2));
  full_names = full_names(:,2:size(full_names,2));
end
  
  
  