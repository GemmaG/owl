(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

type ('a, 'b) kind = ('a, 'b) Bigarray.kind

type ('a, 'b) t


(** {6 Create sparse ndarray} *)

val empty : ('a, 'b) kind -> int array -> ('a, 'b) t


(** {6 Obtain basic properties} *)

val shape : ('a, 'b) t -> int array

val num_dims : ('a, 'b) t -> int

val nth_dim : ('a, 'b) t -> int -> int

val numel : ('a, 'b) t -> int

val nnz : ('a, 'b) t -> int

val density : ('a, 'b) t -> float

val same_shape : ('a, 'b) t -> ('a, 'b) t -> bool

val kind : ('a, 'b) t -> ('a, 'b) kind


(** {6 Manipulate a N-dimensional array} *)

val get : ('a, 'b) t -> int array -> 'a

val set : ('a, 'b) t -> int array -> 'a -> unit

val clone : ('a, 'b) t -> ('a, 'b) t


(** {6 Iterate array elements} *)

val iteri : ?axis:int option array -> (int array -> 'a -> unit) -> ('a, 'b) t -> unit

val iter : ?axis:int option array -> ('a -> unit) -> ('a, 'b) t -> unit

val mapi : ?axis:int option array -> (int array -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

val map : ?axis:int option array -> ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

val iteri_nz : ?axis:int option array -> (int array -> 'a -> unit) -> ('a, 'b) t -> unit

val iter_nz : ?axis:int option array -> ('a -> unit) -> ('a, 'b) t -> unit

val mapi_nz : ?axis:int option array -> (int array -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

val map_nz : ?axis:int option array -> ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t


(** {6 Examine array elements or compare two arrays } *)

val exists : ('a -> bool) -> ('a, 'b) t -> bool

val not_exists : ('a -> bool) -> ('a, 'b) t -> bool

val for_all : ('a -> bool) -> ('a, 'b) t -> bool

val is_zero : ('a, 'b) t -> bool

val is_positive : ('a, 'b) t -> bool

val is_negative : ('a, 'b) t -> bool

val is_nonpositive : ('a, 'b) t -> bool

val is_nonnegative : ('a, 'b) t -> bool
(*
val is_equal : ('a, 'b) t -> ('a, 'b) t -> bool

val is_unequal : ('a, 'b) t -> ('a, 'b) t -> bool

val is_greater : ('a, 'b) t -> ('a, 'b) t -> bool

val is_smaller : ('a, 'b) t -> ('a, 'b) t -> bool

val equal_or_greater : ('a, 'b) t -> ('a, 'b) t -> bool

val equal_or_smaller : ('a, 'b) t -> ('a, 'b) t -> bool
*)


(** {6 Input/Output and helper functions} *)

val print : ('a, 'b) t -> unit

val pp_spnda : ('a, 'b) t -> unit



(* ends here *)