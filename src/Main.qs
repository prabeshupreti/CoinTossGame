/// # Sample
/// Getting started
///
/// # Description
/// This is a minimal Q# program that can be used to start writing Q# code.
namespace MyQuantumProgram {

    open Microsoft.Quantum.Random as Random;
    open CoinToss as Coin;

    @EntryPoint()
    operation Main() : Unit {
        
        mutable int = 0;

        set int = Random.DrawRandomInt(0, 1);

        mutable result = Zero;

        if int == 0
        {
            Message("You chose tail.");
            set result = Coin.Toss(Zero);
        }
        else
        {
            Message("You chose head.");
            set result = Coin.Toss(One);
        }

        if result == One
        {
            Message("It's a head.");
        }
        elif result == Zero
        {
            Message("It's a tail.");
        }
    }
}