open IrAst
open IrLiveness

(* Élimination des instructions mortes.
   Renvoie un couple [(f, p)] où [p] est le programme simplifié, et
   où le booléen [b] vaut [true] si au moins une instruction a été
   éliminée.
     [dce_step: IrAst.main -> bool * IrAst.main]
 *)
let dce_step p =

  (* Calcul des informations de vivacité *)
  let _, lv_out = mk_lv p in
  
  (* À partir d'une instruction et de son étiquette, répond [true]
     si l'instruction est vivante, et [false] sinon.
     [live_instr: IrAst.label * IrAst.instruction -> bool]
     
     Une instruction morte est une instruction affectant une valeur à
     un registre virtuel qui n'est pas vivant en sortie de cette instruction.
     Toutes les autres sont vivantes.
  *)
  let live_instr = function
    (* Si affectation, tester la vivacité de l'identifiant visé *)
    | (l, Value(id,_))
    | (l, Binop(id,_,_,_)) ->  VarSet.mem id (Hashtbl.find lv_out l)
    (* Les autres instructions sont vivantes *)
    | _ -> true
  in

  (* Filtre la liste pour ne garder que les instructions vivantes *)
  let filtered_code = List.filter live_instr p.code in
  (* Renvoie le booléen et le code simplifié *)
  List.length p.code <> List.length filtered_code, { p with code=filtered_code }

    
(* Élimination itérée *)
let rec dce p =
  (* Appliquer une étape *)
  let f, p = dce_step p in
  (* Tant que le booléen vaut vrai, continuer avec un appel récursif *)
  if f
  then dce p
  (* Sinon renvoyer le résultat obtenu *)
  else p
