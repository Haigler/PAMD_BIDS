rows1 = 31;
rows2 = 6;

cd('/mnt/magaj/Levin/Data/PAMD/TempFolder');


load(inputfile);

Sub = repelem(sub, rows1, 1);
Sub = num2cell(Sub);

Run = repelem(run, rows1, 1);
Run = num2cell(Run);

Names = repelem(names, rows2);
Names = Names';
namesa = ['fixation'];
Names = vertcat(Names, namesa);

Durations = cell2mat(durations);
Durations = Durations';
Durations = num2cell(Durations);

Onsets = cell2mat(onsets);
Onsets = Onsets';
Onsets = num2cell(Onsets);

Task = [Sub, Run, Names, Onsets, Durations];

columnNames = {'Subject', 'Run', 'Stimuli', 'Onset', 'Duration'};
Task = array2table(Task, 'VariableNames',columnNames);

cd('/mnt/magaj/Levin/Data/PAMD/TempFolder/TaskJson');
writetable(Task, outputfile, 'delimiter', '\t');

"file written"

cd('/mnt/magaj/Levin/Data/PAMD/Code/CreatingTaskJsons');
