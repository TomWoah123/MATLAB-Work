resp = input("Do you want to play Blackjack, if so type in yes: ",'s');
while resp == "yes"
    first = randi(12) + 1;
    second = randi(12) + 1;
    arr = [first, second];
    while sum(arr) <= 21 && length(arr) < 7
        disp("These are your cards:");
        disp( arr );
        r = input("Do you want to draw another card, if so type in yes: ",'s');
        if r == "yes"
            num = randi(12) + 1;
            arr( length(arr) + 1 ) = num;
        else
            break
        end
    end
    arrDeal = [randi(12) + 1, randi(12) + 1];
    disp( arr );
    disp("These are the dealer's cards:");
    disp(arrDeal);
    disp("The dealer has a point total of:");
    disp(sum(arrDeal));
    disp("These are your cards:");
    disp(arr);
    disp("You have a point total of:");
    disp(sum(arr));
    if sum(arr) > 21
        disp("Sorry!!! You lose");
    elseif sum(arrDeal) <= 21 && sum(arrDeal) >= sum(arr)
        disp("Sorry!!! You lose");
    else
        disp("Winner!!!");
    end
    resp = input("Do you want to continue, if so type in yes: ",'s');
end
disp("Thanks for playing!!!");
