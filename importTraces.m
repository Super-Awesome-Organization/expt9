traces_dir = "./traces"; %gets directory
traces_files = dir(fullfile(traces_dir,'*.mat')); %gets all wav files in struct
traces_all = zeros (5003,1);
traces_names = ["hi"];
i = 0;
for k = 1:100%length(traces_files)
    i = i+1;
  baseFileName = traces_files(k).name;
  fullFileName = traces_dir + "/" + baseFileName;
  if mod(k,100) == 0 
    fprintf(1, 'Now reading %d out of %d \n', k, length(traces_files));
  end   
  if i == 1 
       traces =  cell2mat(struct2cell(load (fullFileName)));
  else
      traces = cat(2,traces,cell2mat(struct2cell(load (fullFileName))) );
  end
  
  if mod(k,1) == 0
    traces_all = cat(2,traces_all,traces);
    i = 0;
  end 
  traces_names = cat(2,traces_names,traces_files(k).name(1:16));

end
  traces_names = traces_names(:,2:size(traces_names,2));
  traces_all = traces_all(:,2:size(traces_all,2));
  clear i k traces traces_files