(* Some Basic Sorting Funtion *)

(* selection sort *)

(* ins : int * int list -> int list *)
(* ins will insert x into its appropriate location in a sorted list *)
fun ins(a : int,[] : int list) : int list = [a]
  | ins (x : int, y::ys : int list) : int list = 
    case Int.compare(x,y) of
         GREATER => [y] @ ins(x,ys)
       | _ => [x] @ y::ys

(* TEST CASES *)
val [1,2,3] = ins(3,[1,2])
val [2] = ins(2,[])
val [1,4,5,6,8] = ins(5,[1,4,6,8])

(* ssort : int list -> int list *)
fun ssort( [] : int list) : int list = []
  | ssort(x::xs : int list) : int list =
    ins(x,ssort(xs))
