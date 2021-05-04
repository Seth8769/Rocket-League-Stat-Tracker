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