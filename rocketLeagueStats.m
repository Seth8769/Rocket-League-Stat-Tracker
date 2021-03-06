function [] = rocketLeagueStats()

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