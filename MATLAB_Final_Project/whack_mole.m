%ECEN 2310 - Final Project
%Stefan Stroessner
%David Wade

score = 0;
specificLED = 'none';
configurePin(a,'D4', 'pullup'); %sets green button high
configurePin(a,'D3', 'pullup'); %sets yellow button high
configurePin(a,'D2', 'pullup'); %sets red button high
configurePin(a,'D6', 'PWM'); %declares the buzzer
hit = 0;

while (score < 10) %Condition to continue playing game
    if hit == 0
        writeDigitalPin(a, 'D11', 0); %turns off all leds initially
        writeDigitalPin(a, 'D10', 0);
        writeDigitalPin(a, 'D9', 0);
        writeDigitalPin(a, 'D5', 0);
        randomNumber =  randi(3); %choose a random number
        specificLED = randomNumber; %sets the variable led equal to said random number
        hit = 1;
        
    end
    
    if specificLED == 1 
       writeDigitalPin(a, 'D11', 1); %turns on 1st led
       b1 = readDigitalPin(a,'D4'); %reads green button
       b2 = readDigitalPin(a,'D3'); %reads yellow button
       b3 = readDigitalPin(a,'D2'); %reads red button
       speaker_statusb1 = readDigitalPin(a,'D4'); %speaker status checks if the button is pushed down
       speaker_statusb2 = readDigitalPin(a,'D3');
       speaker_statusb3 = readDigitalPin(a,'D2');
       
       if b1 == 0 && b2 == 1 && b3 == 1 
           if speaker_statusb1 == 0
              playTone(a, 'D6', 220, 1); %turns on the speaker to musical note A
           else
              %Change duration to zero to mute the speaker
              playTone(a, 'D6', 247, 0);
           end
            score = score + 1;
            disp('Score: ') %displays the score as player presses buttons
            disp(score)
            hit = 0;
       elseif  b2 == 0 || b3 == 0 
           writeDigitalPin(a, 'D5', 1);
           if speaker_statusb2 == 0 || speaker_statusb3 == 0
               playTone(a, 'D6', 4800, 1); 
           else
              playTone(a, 'D6', 1200, 0);
           end
               
           score = score - 1;
           disp('Score: ')
           disp(score)
           hit = 0;  
       end
     end
    
    
    if specificLED == 2
        writeDigitalPin(a, 'D10', 1);
        b1 = readDigitalPin(a,'D4');
        b2 = readDigitalPin(a,'D3'); 
        b3 = readDigitalPin(a,'D2');
        speaker_statusb1 = readDigitalPin(a,'D4');
       speaker_statusb2 = readDigitalPin(a,'D3');
       speaker_statusb3 = readDigitalPin(a,'D2');
        
       if b1 == 1 && b2 == 0 && b3 == 1 
            if speaker_statusb2 == 0
              playTone(a, 'D6', 220, 1); %turns on the speaker to musical note B 
            else
              playTone(a, 'D6', 247, 0);
           end
           
           score = score + 1;
           disp('Score: ')
           disp(score)
           hit = 0;
           
       elseif b1 == 0 || b3 == 0 
       writeDigitalPin(a, 'D5', 1);
       if speaker_statusb1 == 0 || speaker_statusb3 == 0
               playTone(a, 'D6', 4800, 1);  
       else
              playTone(a, 'D6', 1200, 0);
       end
       
       score = score - 1 ;
       disp('Score: ')
           disp(score)
       hit = 0;     
       end
    end
       
       
    if specificLED == 3
        writeDigitalPin(a, 'D9', 1);
        b1 = readDigitalPin(a,'D4');
        b2 = readDigitalPin(a,'D3');
        b3 = readDigitalPin(a,'D2');
       speaker_statusb1 = readDigitalPin(a,'D4');
       speaker_statusb2 = readDigitalPin(a,'D3');
       speaker_statusb3 = readDigitalPin(a,'D2');
        
       if b1 == 1 && b2 == 1 && b3 == 0 
           
           if speaker_statusb3 == 0
              playTone(a, 'D6', 220, 1); %turns on the speaker to musical note C
           else
              playTone(a, 'D6', 247, 0);
           end
           
           score = score + 1;
           disp('Score: ')
           disp(score)
           hit = 0;
       elseif b1 == 0 || b2 == 0 
       writeDigitalPin(a, 'D5', 1);
       if speaker_statusb1 == 0 || speaker_statusb2 == 0
               playTone(a, 'D6', 4800, 1);  
       else
              playTone(a, 'D6', 1200, 0);
           end
       
       score = score - 1;
       disp('Score: ')
           disp(score)
       hit = 0;
       end
       end
end

if score == 10
    writeDigitalPin(a, 'D11', 1);
    writeDigitalPin(a, 'D10', 1);
    writeDigitalPin(a, 'D9', 1);
    writeDigitalPin(a, 'D5', 1);
    hit = 1;
end