function [] = rlStats()

global score;
global goals;
global assists;
global saves;
global shots;
global game;



%create figure
figure('numbertitle', 'off', 'name', 'Stat Tracker');

%display message to enter stats
enterStatsDisplayMessage = uicontrol('style', 'text', 'units', 'normalized', 'position', [.32 .85 .3 .095],...
    'string', 'Enter Game Stats', 'horizontalalignment', 'right', 'FontSize', 18);

%titles over stat collection
score.scoreDisplay = uicontrol('style', 'text', 'units', 'normalized', 'position', [.05 .7 .1 .095],...
    'string', 'Score', 'horizontalalignment', 'right', 'FontSize', 15);

goals.scoreDisplay = uicontrol('style', 'text', 'units', 'normalized', 'position', [.25 .7 .1 .095],...
    'string', 'Goals', 'horizontalalignment', 'right', 'FontSize', 15);

assists.scoreDisplay = uicontrol('style', 'text', 'units', 'normalized', 'position', [.45 .7 .1 .095],...
    'string', 'Assists', 'horizontalalignment', 'right', 'FontSize', 15);

saves.scoreDisplay = uicontrol('style', 'text', 'units', 'normalized', 'position', [.65 .7 .1 .095],...
    'string', 'Saves', 'horizontalalignment', 'right', 'FontSize', 15);

shots.scoreDisplay = uicontrol('style', 'text', 'units', 'normalized', 'position', [.83 .7 .1 .095],...
    'string', 'Shots', 'horizontalalignment', 'right', 'FontSize', 15);

%stat collection boxes
score.enterScore = uicontrol('style', 'edit', 'units', 'normalized', 'position', [.06 .6 .1 .095],...
    'string', '', 'horizontalalignment', 'center');

goals.enterScore = uicontrol('style', 'edit', 'units', 'normalized', 'position', [.26 .6 .1 .095],...
    'string', '', 'horizontalalignment', 'center');

assists.enterScore = uicontrol('style', 'edit', 'units', 'normalized', 'position', [.45 .6 .1 .095],...
    'string', '', 'horizontalalignment', 'center');

saves.enterScore = uicontrol('style', 'edit', 'units', 'normalized', 'position', [.66 .6 .1 .095],...
    'string', '', 'horizontalalignment', 'center');

shots.enterScore = uicontrol('style', 'edit', 'units', 'normalized', 'position', [.84 .6 .1 .095],...
    'string', '', 'horizontalalignment', 'center');

%enter message
beforeEnterDisplayMessage = uicontrol('style', 'text', 'units', 'normalized', 'position', [.25 .4 .5 .095],...
    'string', 'Enter all Stats Before Clicking Enter', 'horizontalalignment', 'center', 'FontSize', 12);

%enter button
enterButton = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.45 .3 .1 .095],...
    'string', 'Enter', 'horizontalalignment', 'right', 'FontSize', 12,'callback',{@average});

%reset button
resetButton = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.75 .85 .2 .095],...
    'string', 'Reset All-time', 'horizontalalignment', 'right', 'FontSize', 10,'callback',{@reset});

%career averages title and button
averageTitle = uicontrol('style', 'text', 'units', 'normalized', 'position', [.17 .153 .2 .095],...
    'string', 'Career Averages', 'horizontalalignment', 'right', 'FontSize', 13);

averageButton = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.23 .1 .1 .095],...
    'string', 'Show me', 'horizontalalignment', 'right', 'FontSize', 10, 'callback', {@showStats});

%last 10 graph title and button
graphTitle = uicontrol('style', 'text', 'units', 'normalized', 'position', [.615 .2 .2 .095],...
    'string', 'Graph of Last 10 Games Stats', 'horizontalalignment', 'center', 'FontSize', 13);

graphButton = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.66 .1 .1 .095],...
    'string', 'Show me', 'horizontalalignment', 'right', 'FontSize', 10, 'callback', {@graphStats});




end


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
    
    % checks if all stats are inputted and numbers 
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

function [] = reset(source,event)

global score;
global goals;
global assists;
global saves;
global shots;
global game;

%resets all averages and game count
game.count = 0; 

shots.array = [];
score.array = [];
goals.array = [];
assists.array = [];
saves.array = [];

shots.average = 0;
score.average = 0;
goals.average = 0;
assists.average = 0;
saves.average = 0;

end

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

function [] = graphStats(source, event)

global score;
global goals;
global assists;
global saves;
global shots;

figure('numbertitle', 'off', 'name', 'Stats Over Last Ten Games Played')

% sees if ten or mor games have been inputted. If yes shows last ten if no shows all it has 
    if numel(score.array(2:end)) >= 11
        hold on;

        subplot(5,1,1); %plot for score
        bar(1:length(score.array(end-9:end)), score.array(end-9:end))
        title('Score Over Last Ten Games')
        ylabel('Score')
        xlabel('Game')

        subplot(5,1,2); %plot for goals
        bar(1:length(goals.array(end-9:end)), goals.array(end-9:end))
        title('Goals Over Last Ten Games')
        ylabel('Goals')
        xlabel('Game')

        subplot(5,1,3); %plot for assists
        bar(1:length(assists.array(end-9:end)), assists.array(end-9:end))
        title('Assists Over Last Ten Games')
        ylabel('Assists')
        xlabel('Game')

        subplot(5,1,4); %plot for saves
        bar(1:length(saves.array(end-9:end)), saves.array(end-9:end))
        title('Saves Over Last Ten Games')
        ylabel('Saves')
        xlabel('Game')

        subplot(5,1,5); %plot for shots
        bar(1:length(shots.array(end-9:end)), shots.array(end-9:end))
        title('Shots Over Last Ten Games')
        ylabel('Shots')
        xlabel('Game')

    else
        hold on;

        subplot(5,1,1); %plot for score
        bar(1:length(score.array(2:end)), score.array(2:end))
        title('Score Over Last Ten Games')
        ylabel('Score')
        xlabel('Game')

        subplot(5,1,2); %plot for goals
        bar(1:length(goals.array(2:end)), goals.array(2:end))
        title('Goals Over Last Ten Games')
        ylabel('Goals')
        xlabel('Game')

        subplot(5,1,3); %plot for assists
        bar(1:length(assists.array(2:end)), assists.array(2:end))
        title('Assists Over Last Ten Games')
        ylabel('Assists')
        xlabel('Game')

        subplot(5,1,4); %plot for saves
        bar(1:length(saves.array(2:end)), saves.array(2:end))
        title('Saves Over Last Ten Games')
        ylabel('Saves')
        xlabel('Game')

        subplot(5,1,5); %plot for shots
        bar(1:length(shots.array(2:end)), shots.array(2:end))
        title('Shots Over Last Ten Games')
        ylabel('Shots')
        xlabel('Game')

    end





end