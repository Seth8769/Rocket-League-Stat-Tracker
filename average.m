
function [] = average(source,event)

global score;
global goals;
global assists;
global saves;
global shots;
global game;

% starts stat arrays 
score.count = 0;
assists.count = 0;
goals.count = 0;
saves.count = 0;
shots.count = 0;

%takes numbers from edit boxes
score.count = str2double(score.enterScore.String);
goals.count = str2double(goals.enterScore.String);
assists.count = str2double(assists.enterScore.String);
saves.count = str2double(saves.enterScore.String);
shots.count = str2double(shots.enterScore.String);
    
    % checks if all stats are inputted 
    if isnan(score.count) || isnan(goals.count) || isnan(assists.count) || isnan(saves.count) || isnan(shots.count)
        msgbox('Enter All Stats Before Clicking Enter', 'Error', 'error', 'modal');
       
    else
        score.array(1)=0;
        score.array(end+1) = score.count;
        goals.array(1)=0;
        goals.array(end+1) = goals.count;
        assists.array(1)=0;
        assists.array(end+1) = assists.count;
        saves.array(1)=0;
        saves.array(end+1) = saves.count;
        shots.array(1)=0;
        shots.array(end+1) = shots.count;
        
        game.count = game.count + 1;
        
       
    end 
    
    
%takes the average of all score
score.average = mean(score.array(2:end));
disp(score.average)

%takes the average of all goals
goals.average = mean(goals.array(2:end));
disp(goals.average)

%takes the average of all assists
assists.average = mean(assists.array(2:end));
disp(assists.average)

%takes the average of all saves
saves.average = mean(saves.array(2:end));
disp(saves.average)

%takes the average of all shots
shots.average = mean(shots.array(2:end));
disp(shots.average)

end