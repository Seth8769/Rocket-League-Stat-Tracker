function [] = reset(source,event)

global score;
global goals;
global assists;
global saves;
global shots;
global game;

%sets all values back to zero
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