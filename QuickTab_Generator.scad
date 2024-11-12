//QuickTab_Generator, generates tabs quickly

//model setup 
$fa = 2;
$fs = 0.05;

//input dimensions

    //input dimensions
    tabDepth = 0.25;
    tabLength = 4;
    pipeDiameter = 1.5;
    holeDiameter = .5;
   
   
//compute positioning

difference(){
cube([tabLength,pipeDiameter,tabDepth], center = true);
translate([tabLength/2,0,0])
    cylinder(h = tabDepth + 0.1, d = pipeDiameter, center = true);
    
translate([-(tabLength/2) + pipeDiameter/2,0,0])
    cylinder(h = tabDepth + 0.1, d = holeDiameter, center = true);
}

//echo("test echo");

