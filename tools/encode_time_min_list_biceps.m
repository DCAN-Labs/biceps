function fconn_text = encode_time_min_list_biceps(path_gui_env_list)

%%
bef{1}='FD_th_';
bef{2}='min_frames_';
bef{3}='TRseconds_';


aft{1}='_min_frames';
aft{2}='_skip_frames';
aft{3}='.txt';

n=numel(aft);
bet=cell(n,1);
bet_num=nan(n,1);
old='_';
new='.';

for i=1:n
    bet{i}=extractBetween(path_gui_env_list,bef{i},aft{i});
    temp=replace( bet{i} , old , new );
    bet_num(i)=str2double(temp);
end
time_min=prod(bet_num(2:3))/60;
fconn_text = [bef{1} bet{1}{1} '_time_min_' num2str(time_min) '_' bef{3} bet{3}{1} '.csv'];