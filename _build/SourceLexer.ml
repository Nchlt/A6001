# 1 "SourceLexer.mll"
 

  open Lexing
  open SourceParser

  let id_or_keyword =
    let h = Hashtbl.create 17 in
    List.iter (fun (s, k) -> Hashtbl.add h s k)
      [ "true",     CONST_BOOL(true);
	"false",    CONST_BOOL(false);
	"while",    WHILE;
	"if",       IF;
	"then",     THEN;
	"else",     ELSE;
	"integer",  INT;
	"boolean",  BOOL;
	"print",    PRINT;
	"main",     MAIN;
	"var",      VAR;
  "for",      FOR;
  "to",       TO
      ] ;
    fun s ->
      try  Hashtbl.find h s
      with Not_found -> IDENT(s)


# 30 "SourceLexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\231\255\232\255\234\255\235\255\236\255\237\255\002\000\
    \001\000\001\000\002\000\003\000\245\255\246\255\247\255\004\000\
    \249\255\250\255\088\000\018\000\002\000\002\000\254\255\248\255\
    \244\255\243\255\240\255\239\255\238\255\036\000\252\255\253\255\
    \005\000\005\000\255\255\254\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\000\
    \023\000\014\000\023\000\013\000\255\255\255\255\255\255\023\000\
    \255\255\255\255\003\000\002\000\004\000\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \002\000\002\000\255\255\255\255";
  Lexing.lex_default =
   "\002\000\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \255\255\255\255\255\255\255\255\000\000\000\000\000\000\255\255\
    \000\000\000\000\255\255\255\255\255\255\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\031\000\000\000\000\000\
    \255\255\255\255\000\000\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\021\000\021\000\021\000\021\000\021\000\000\000\021\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \021\000\010\000\021\000\000\000\000\000\000\000\008\000\027\000\
    \020\000\017\000\012\000\014\000\022\000\013\000\035\000\034\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\015\000\016\000\009\000\011\000\026\000\025\000\
    \024\000\023\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\033\000\000\000\032\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\006\000\000\000\005\000\000\000\018\000\
    \000\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\004\000\007\000\003\000\028\000\018\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\000\000\000\000\000\000\000\000\018\000\
    \000\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\021\000\021\000\000\000\255\255\021\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\021\000\255\255\255\255\255\255\000\000\008\000\
    \000\000\000\000\000\000\000\000\020\000\000\000\032\000\033\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\009\000\010\000\
    \011\000\015\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\029\000\255\255\029\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\000\000\255\255\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\007\000\018\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\255\255\255\255\255\255\255\255\018\000\
    \255\255\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\029\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 35 "SourceLexer.mll"
      ( token lexbuf )
# 161 "SourceLexer.ml"

  | 1 ->
# 37 "SourceLexer.mll"
      ( comment lexbuf; token lexbuf )
# 166 "SourceLexer.ml"

  | 2 ->
# 39 "SourceLexer.mll"
      ( CONST_INT (int_of_string (lexeme lexbuf)) )
# 171 "SourceLexer.ml"

  | 3 ->
# 41 "SourceLexer.mll"
      ( id_or_keyword (lexeme lexbuf) )
# 176 "SourceLexer.ml"

  | 4 ->
# 43 "SourceLexer.mll"
      ( BEGIN )
# 181 "SourceLexer.ml"

  | 5 ->
# 45 "SourceLexer.mll"
      ( END )
# 186 "SourceLexer.ml"

  | 6 ->
# 47 "SourceLexer.mll"
      ( SEMI )
# 191 "SourceLexer.ml"

  | 7 ->
# 49 "SourceLexer.mll"
      ( SET )
# 196 "SourceLexer.ml"

  | 8 ->
# 51 "SourceLexer.mll"
      ( PLUS )
# 201 "SourceLexer.ml"

  | 9 ->
# 53 "SourceLexer.mll"
      ( MINUS )
# 206 "SourceLexer.ml"

  | 10 ->
# 55 "SourceLexer.mll"
      ( STAR )
# 211 "SourceLexer.ml"

  | 11 ->
# 57 "SourceLexer.mll"
      ( EQUAL )
# 216 "SourceLexer.ml"

  | 12 ->
# 59 "SourceLexer.mll"
      ( NEQ )
# 221 "SourceLexer.ml"

  | 13 ->
# 61 "SourceLexer.mll"
      ( EQUAL_STRUCT )
# 226 "SourceLexer.ml"

  | 14 ->
# 63 "SourceLexer.mll"
      ( LT )
# 231 "SourceLexer.ml"

  | 15 ->
# 65 "SourceLexer.mll"
      ( LE )
# 236 "SourceLexer.ml"

  | 16 ->
# 67 "SourceLexer.mll"
      ( AND )
# 241 "SourceLexer.ml"

  | 17 ->
# 69 "SourceLexer.mll"
      ( OR )
# 246 "SourceLexer.ml"

  | 18 ->
# 71 "SourceLexer.mll"
      ( OPEN_BRACKET )
# 251 "SourceLexer.ml"

  | 19 ->
# 73 "SourceLexer.mll"
      ( CLOSE_BRACKET )
# 256 "SourceLexer.ml"

  | 20 ->
# 75 "SourceLexer.mll"
      ( OPEN_CBRACKET )
# 261 "SourceLexer.ml"

  | 21 ->
# 77 "SourceLexer.mll"
      ( CLOSE_CBRACKET )
# 266 "SourceLexer.ml"

  | 22 ->
# 79 "SourceLexer.mll"
      ( EQUAL_STRUCT )
# 271 "SourceLexer.ml"

  | 23 ->
# 81 "SourceLexer.mll"
      ( failwith ("Unknown character : " ^ (lexeme lexbuf)) )
# 276 "SourceLexer.ml"

  | 24 ->
# 83 "SourceLexer.mll"
      ( EOF )
# 281 "SourceLexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and comment lexbuf =
   __ocaml_lex_comment_rec lexbuf 29
and __ocaml_lex_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 87 "SourceLexer.mll"
      ( comment lexbuf; comment lexbuf )
# 293 "SourceLexer.ml"

  | 1 ->
# 89 "SourceLexer.mll"
      ( () )
# 298 "SourceLexer.ml"

  | 2 ->
# 91 "SourceLexer.mll"
      ( comment lexbuf )
# 303 "SourceLexer.ml"

  | 3 ->
# 93 "SourceLexer.mll"
      ( failwith "Unterminated comment" )
# 308 "SourceLexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_comment_rec lexbuf __ocaml_lex_state

;;
