// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;

fn main() {
    let arr0 = ArrayTrait::new();

    //let mut _arr1 = fill_arr(arr0.clone());
    //fill_arr_by_ref(ref arr0);
    let mut _arr1 = fill_arr_by_snap(@arr0);

    // Do not change the following line!
    arr0.print();
}

fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;
    arr.append(22);
    arr.append(44);
    arr.append(66);
    arr
}

fn fill_arr_by_ref(ref arr: Array<felt252>) {
    arr.append(22);
    arr.append(44);
    arr.append(66);
}

fn fill_arr_by_snap(arr: @Array<felt252>) -> Array<felt252> {
    let mut arr = arr.clone();
    arr.append(22);
    arr.append(44);
    arr.append(66);
    arr
}
