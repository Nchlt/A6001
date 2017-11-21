
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR
    | THEN
    | STAR
    | SET
    | SEMI
    | PRINT
    | PLUS
    | OR
    | OPEN_CBRACKET
    | OPEN_BRACKET
    | NEQ
    | MINUS
    | MAIN
    | LT
    | LE
    | INT
    | IF
    | IDENT of (
# 12 "SourceParser.mly"
       (string)
# 29 "SourceParser.ml"
  )
    | EQUAL
    | EOF
    | END
    | ELSE
    | CONST_INT of (
# 7 "SourceParser.mly"
       (int)
# 38 "SourceParser.ml"
  )
    | CONST_BOOL of (
# 9 "SourceParser.mly"
       (bool)
# 43 "SourceParser.ml"
  )
    | CLOSE_CBRACKET
    | CLOSE_BRACKET
    | BOOL
    | BEGIN
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState89
  | MenhirState83
  | MenhirState82
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState76
  | MenhirState71
  | MenhirState67
  | MenhirState65
  | MenhirState64
  | MenhirState61
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState55
  | MenhirState54
  | MenhirState52
  | MenhirState51
  | MenhirState49
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState22
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState9
  | MenhirState7
  | MenhirState6

# 1 "SourceParser.mly"
  

  open SourceAst


# 122 "SourceParser.ml"

let rec _menhir_goto_separated_nonempty_list_SEMI_CONST_INT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (int list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (
# 7 "SourceParser.mly"
       (int)
# 134 "SourceParser.ml"
        ))), _, (xs : (int list))) = _menhir_stack in
        let _2 = () in
        let _v : (int list) = 
# 217 "/Users/nour/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 140 "SourceParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_CONST_INT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CLOSE_CBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (l : (int list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (int list) = 
# 75 "SourceParser.mly"
                                                                             ( l )
# 158 "SourceParser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (ca : (int list)) = _v in
            let (_menhir_stack, _menhir_s, (l : (SourceAst.location))) = _menhir_stack in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 88 "SourceParser.mly"
                                  (
  SetArray(l, ca)
)
# 170 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "SourceParser.mly"
       (int)
# 185 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST_INT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | CLOSE_CBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 7 "SourceParser.mly"
       (int)
# 208 "SourceParser.ml"
        ))) = _menhir_stack in
        let _v : (int list) = 
# 215 "/Users/nour/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 213 "SourceParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_CONST_INT_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce4 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.location) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (loc : (SourceAst.location))) = _menhir_stack in
    let _v : (SourceAst.expression) = 
# 100 "SourceParser.mly"
                                                    ( Location(loc)     )
# 229 "SourceParser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.instruction) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | CONST_BOOL _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | CONST_INT _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | IDENT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | IF ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | OPEN_BRACKET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PRINT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | WHILE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | END ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | PRINT ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | WHILE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | END ->
        _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_reduce27 : _menhir_env -> ((('ttv_tail * _menhir_state * (SourceAst.expression)) * _menhir_state) * _menhir_state * (SourceAst.expression)) * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))), _) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : (SourceAst.location) = 
# 117 "SourceParser.mly"
            ( ArrayAccess(e1, e2) )
# 311 "SourceParser.ml"
     in
    _menhir_goto_location _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.expression) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_goto_instructions : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (is : (SourceAst.block))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.block) = 
# 95 "SourceParser.mly"
                                     ( is )
# 544 "SourceParser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState59 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BEGIN ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState61 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))), _), _, (b1 : (SourceAst.block))), _, (b2 : (SourceAst.block))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (SourceAst.instruction) = 
# 82 "SourceParser.mly"
                                                    ( If(e, b1, b2) )
# 580 "SourceParser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
            | MenhirState51 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))), _, (b : (SourceAst.block))) = _menhir_stack in
                let _1 = () in
                let _v : (SourceAst.instruction) = 
# 81 "SourceParser.mly"
                                                    ( While(e, b)   )
# 591 "SourceParser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (i : (SourceAst.instruction))), _, (is : (SourceAst.block))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.block) = 
# 71 "SourceParser.mly"
                                           ( i :: is )
# 610 "SourceParser.ml"
         in
        _menhir_goto_instructions _menhir_env _menhir_stack _menhir_s _v
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, (x : (
# 12 "SourceParser.mly"
       (string)
# 629 "SourceParser.ml"
                ))), _, (vds : (SourceAst.identifier_info SourceAst.Symb_Tbl.t))), _, (is : (SourceAst.block))) = _menhir_stack in
                let _10 = () in
                let _9 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 30 "SourceParser.mly"
      (SourceAst.main)
# 641 "SourceParser.ml"
                ) = 
# 36 "SourceParser.mly"
                                                   (
    let infox = { typ=TypInteger; kind=FormalX } in
    let init  = Symb_Tbl.singleton x infox in
    let merge_vars _ v1 v2 = match v1, v2 with
      | _, Some(v) -> Some v
      | Some(v), _ -> Some v
      | _, _       -> None
    in
    let locals = Symb_Tbl.merge merge_vars init vds in
    {locals = locals; code=is} )
# 654 "SourceParser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (
# 30 "SourceParser.mly"
      (SourceAst.main)
# 661 "SourceParser.ml"
                )) = _v in
                Obj.magic _1
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_location : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.location) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState82 | MenhirState79 | MenhirState64 | MenhirState57 | MenhirState54 | MenhirState17 | MenhirState18 | MenhirState45 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState16 | MenhirState76 | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | OPEN_CBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState64 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CONST_INT _v ->
                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
        | AND | EQUAL | LE | LT | MINUS | NEQ | OPEN_BRACKET | OR | PLUS | STAR ->
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_literal : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.literal) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (lit : (SourceAst.literal)) = _v in
    let _v : (SourceAst.expression) = 
# 99 "SourceParser.mly"
                                                    ( Literal(lit)      )
# 742 "SourceParser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState25 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (SourceAst.expression) = 
# 101 "SourceParser.mly"
                                                    ( e                 )
# 768 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | MINUS | NEQ | OR | PLUS | SEMI | STAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 123 "SourceParser.mly"
         ( Mult )
# 809 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 815 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | CLOSE_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState29 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | MINUS | NEQ | OR | PLUS | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 121 "SourceParser.mly"
         ( Add  )
# 875 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 881 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | AND | BEGIN | CLOSE_BRACKET | END | OR | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 129 "SourceParser.mly"
         ( Or   )
# 918 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 924 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 125 "SourceParser.mly"
         ( Neq  )
# 953 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 959 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | MINUS | NEQ | OR | PLUS | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 122 "SourceParser.mly"
         ( Sub  )
# 984 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 990 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 126 "SourceParser.mly"
         ( Lt   )
# 1019 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1025 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 127 "SourceParser.mly"
         ( Le   )
# 1054 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1060 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 124 "SourceParser.mly"
         ( Eq   )
# 1089 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1095 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | AND | BEGIN | CLOSE_BRACKET | END | OR | SEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 128 "SourceParser.mly"
         ( And  )
# 1132 "SourceParser.ml"
              
            in
            
# 102 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1138 "SourceParser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | CLOSE_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState48 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | INT ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | OPEN_BRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | BEGIN ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState55 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.instruction) = 
# 83 "SourceParser.mly"
                                                    ( Print(e)      )
# 1241 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState58 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (l : (SourceAst.location))), _, (e : (SourceAst.expression))) = _menhir_stack in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 80 "SourceParser.mly"
                                                    ( Set(l, e)     )
# 1340 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
    | MenhirState16 | MenhirState52 | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | OPEN_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState78 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | CLOSE_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState80 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | CONST_BOOL _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | CONST_INT _v ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | IDENT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | OPEN_BRACKET ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
            | AND | EQUAL | LE | LT | MINUS | NEQ | OPEN_BRACKET | OR | PLUS | STAR ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))), _), _, (e3 : (SourceAst.expression))) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 84 "SourceParser.mly"
                                                                                (
    let loc = ArrayAccess(e1, e2) in
    Set(loc, e3)
)
# 1495 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.block) = 
# 70 "SourceParser.mly"
                                           ( []      )
# 1515 "SourceParser.ml"
     in
    _menhir_goto_instructions _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | CONST_BOOL _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | CONST_INT _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | IDENT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | OPEN_BRACKET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "SourceParser.mly"
       (string)
# 1617 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (id : (
# 12 "SourceParser.mly"
       (string)
# 1625 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.location) = 
# 115 "SourceParser.mly"
            ( Identifier id       )
# 1630 "SourceParser.ml"
     in
    _menhir_goto_location _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "SourceParser.mly"
       (int)
# 1637 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 7 "SourceParser.mly"
       (int)
# 1645 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.literal) = 
# 110 "SourceParser.mly"
                ( Int i  )
# 1650 "SourceParser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "SourceParser.mly"
       (bool)
# 1657 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (
# 9 "SourceParser.mly"
       (bool)
# 1665 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.literal) = 
# 111 "SourceParser.mly"
                ( Bool b )
# 1670 "SourceParser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | CONST_BOOL _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | CONST_INT _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | IDENT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | OPEN_BRACKET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (t : (SourceAst.typ))) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (SourceAst.typ) = 
# 66 "SourceParser.mly"
                                      ( TypArray(t) )
# 1708 "SourceParser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (id : (
# 12 "SourceParser.mly"
       (string)
# 1723 "SourceParser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (SourceAst.typ))) = _menhir_stack in
            let _v : (SourceAst.Symb_Tbl.key * SourceAst.typ) = 
# 60 "SourceParser.mly"
                   ( (id, t) )
# 1729 "SourceParser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (tid : (SourceAst.Symb_Tbl.key * SourceAst.typ)) = _v in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _1 = () in
            let _v : (SourceAst.Symb_Tbl.key * SourceAst.typ) = 
# 56 "SourceParser.mly"
                        ( tid )
# 1739 "SourceParser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | VAR ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | BEGIN | CONST_BOOL _ | CONST_INT _ | END | IDENT _ | IF | OPEN_BRACKET | PRINT | WHILE ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))), _), _, (t : (SourceAst.typ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (SourceAst.expression) = 
# 103 "SourceParser.mly"
                                                    ( NewArray(e, t)    )
# 1780 "SourceParser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (SourceAst.identifier_info SourceAst.Symb_Tbl.t) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | CONST_BOOL _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | CONST_INT _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IDENT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IF ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | OPEN_BRACKET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PRINT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | WHILE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | END ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (vd : (SourceAst.Symb_Tbl.key * SourceAst.typ))), _, (vds : (SourceAst.identifier_info SourceAst.Symb_Tbl.t))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.identifier_info SourceAst.Symb_Tbl.t) = 
# 50 "SourceParser.mly"
                                   ( let (id, t) = vd in
				     let info = { typ=t; kind=Local } in
				     Symb_Tbl.add id info vds )
# 1827 "SourceParser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLOSE_BRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | INT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | OPEN_BRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.typ) = 
# 64 "SourceParser.mly"
                                      ( TypInteger   )
# 1869 "SourceParser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (SourceAst.typ) = 
# 65 "SourceParser.mly"
                                      ( TypBoolean   )
# 1881 "SourceParser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.identifier_info SourceAst.Symb_Tbl.t) = 
# 49 "SourceParser.mly"
                                   ( Symb_Tbl.empty                            )
# 2089 "SourceParser.ml"
     in
    _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | INT ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | OPEN_BRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 30 "SourceParser.mly"
      (SourceAst.main)
# 2125 "SourceParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MAIN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | INT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | END ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | BEGIN ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | VAR ->
                                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                            | BEGIN | CONST_BOOL _ | CONST_INT _ | END | IDENT _ | IF | OPEN_BRACKET | PRINT | WHILE ->
                                _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            raise _eRR)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        raise _eRR)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 219 "/Users/nour/.opam/system/lib/menhir/standard.mly"
  


# 2213 "SourceParser.ml"
