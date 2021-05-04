function [] = showStats(source, event)

global score;
global goals;
global assists;
global saves;
global shots;
global game;


% creates strings to put inot massage box
averageScore = num2str(score.average);
averageGoals =  num2str(goals.average);
averageAssists = num2str(assists.average);
averageSaves = num2str(saves.average);
averageShots = num2str(shots.average);
numberGames = num2str(game.count);

%averages massage box
statsBox = msgbox({'Games Played', numberGames, 'Score per Game' averageScore, 'Goals per Game' averageGoals, 'Assists per Game' averageAssists, 'Saves per Game' averageSaves, 'Shots per Game' averageShots},...
    'Career Stats', 'modal');

set(statsBox,'position', [100 100 170 185]);

end