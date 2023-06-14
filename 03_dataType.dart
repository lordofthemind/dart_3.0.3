main(){
    /*
    int
    double
    string
    bool
    dynamic
    */

    int amount1 = 100;
    var amount2 = 200;
    print('Amount1: $amount1 | Amount2: $amount2 \n');

    double dAmount1 = 100.11;
    var dAmount2 = 200.11;
    print('Double Amount1: $dAmount1 | Amount2: $dAmount2 \n');

    String name1 = 'Manish';
    var name2 = 'Mayank';
    print('String Name1: $name1 | Name2: $name2 \n');

    bool isItTrue1 = true;
    var isItTrue2 = false;
    print('Boolean IsItTrue1: $isItTrue1 | IsItTrue1: $isItTrue2 \n');

    dynamic weakVariable = 100;
    print('weakvariable1: $weakVariable\n');

    weakVariable = 'Dart Programming';
    print('weakvariable2: $weakVariable\n');

    weakVariable = null;
    print('weakvariable3: $weakVariable\n');

}