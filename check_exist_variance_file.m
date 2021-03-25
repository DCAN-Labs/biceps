function [exist_variance_file dtseries_var_path] = check_exist_variance_file(dtseries_var_path,handles)

exist_variance_file=isfile(dtseries_var_path);

if exist_variance_file==0
    
    [filepath,name,ext] = fileparts(dtseries_var_path);
%     alt_dtseries_var_path=[handles.alternative_path_variances filesep name ext];
    
    opt{2}=[handles.alternative_path_variances filesep name ext];
    opt{1}=strrep( opt{2} , '_task-rest_bold_timeseries_variance.txt' , '_task-rest_bold_desc-filtered_timeseries_variance.txt');
    
    ix=find(isfile(opt));
    
    alt_dtseries_var_path=opt{ix};
    if isfile(alt_dtseries_var_path)
        dtseries_var_path=alt_dtseries_var_path;
    end
end
exist_variance_file=isfile(dtseries_var_path);