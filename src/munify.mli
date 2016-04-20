type unif = 
    Success of Logger.log * Evd.evar_map 
  | Err of Logger.log

type stats = {
  unif_problems : Big_int.big_int;
  instantiations : Big_int.big_int
}

val unify_evar_conv : Names.transparent_state -> Evarsolve.conv_fun

val unify_match : Evar.Set.t -> Names.transparent_state -> Evarsolve.conv_fun

val get_stats : unit -> stats
