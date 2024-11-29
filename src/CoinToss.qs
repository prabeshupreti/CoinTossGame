namespace CoinToss 
{
    operation Toss(target: Result): Result
    {
        use qubit = Qubit();
        mutable result = Zero;

        H(qubit);

        set result = M(qubit);

        if result == target
        {
            X(qubit);
            set result = M(qubit);
        }

        Reset(qubit);

        return result;

    }
}