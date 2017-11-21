
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR
    | TO
    | THEN
    | STAR
    | SET
    | SEMI
    | PRINT
    | PLUS
    | OR
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
    | FOR
    | EQUAL_STRUCT
    | EQUAL
    | EOF
    | END
    | ELSE
    | CONST_INT of (
# 7 "SourceParser.mly"
       (int)
# 40 "SourceParser.ml"
  )
    | CONST_BOOL of (
# 9 "SourceParser.mly"
       (bool)
# 45 "SourceParser.ml"
  )
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
  | MenhirState94
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState78
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
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


# 128 "SourceParser.ml"

let rec _menhir_reduce3 : _menhir_env -> 'ttv_tail * _menhir_state * (SourceAst.location) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (loc : (SourceAst.location))) = _menhir_stack in
    let _v : (SourceAst.expression) = 
# 104 "SourceParser.mly"
                                                    ( Location(loc)     )
# 136 "SourceParser.ml"
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
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | CONST_BOOL _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | CONST_INT _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | FOR ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | IDENT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | IF ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | OPEN_BRACKET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PRINT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | WHILE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | END ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
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
    | FOR ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState52
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
        _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_reduce26 : _menhir_env -> ((('ttv_tail * _menhir_state * (SourceAst.expression)) * _menhir_state) * _menhir_state * (SourceAst.expression)) * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))), _) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : (SourceAst.location) = 
# 121 "SourceParser.mly"
            ( ArrayAccess(e1, e2) )
# 222 "SourceParser.ml"
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
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s), _, (l : (SourceAst.location))), _, (e : (SourceAst.expression))), _), _, (borne_sup : (SourceAst.expression))), _), _, (ins : (SourceAst.block))) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (SourceAst.instruction) = 
# 84 "SourceParser.mly"
                      (
  let cond = Binop(Lt, Location(l), borne_sup) in
  let incr = Binop(Add, Location(l), Literal(Int(1))) in
  let incr_i = Set(l, incr) in
  let new_instr = [incr_i] @ ins in

  Set(l, e);
  While(cond, new_instr)

)
# 469 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (i : (SourceAst.instruction))), _, (is : (SourceAst.block))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.block) = 
# 71 "SourceParser.mly"
                                           ( i :: is )
# 486 "SourceParser.ml"
         in
        _menhir_goto_instructions _menhir_env _menhir_stack _menhir_s _v
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
# 99 "SourceParser.mly"
                                     ( is )
# 504 "SourceParser.ml"
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
# 77 "SourceParser.mly"
                                                    ( If(e, b1, b2) )
# 540 "SourceParser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
            | MenhirState51 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))), _, (b : (SourceAst.block))) = _menhir_stack in
                let _1 = () in
                let _v : (SourceAst.instruction) = 
# 76 "SourceParser.mly"
                                                    ( While(e, b)   )
# 551 "SourceParser.ml"
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
# 578 "SourceParser.ml"
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
# 590 "SourceParser.ml"
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
# 603 "SourceParser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (
# 30 "SourceParser.mly"
      (SourceAst.main)
# 610 "SourceParser.ml"
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
    | MenhirState84 | MenhirState81 | MenhirState73 | MenhirState68 | MenhirState66 | MenhirState57 | MenhirState54 | MenhirState17 | MenhirState18 | MenhirState45 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL_STRUCT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
        | AND | EQUAL | LE | LT | MINUS | NEQ | OPEN_BRACKET | OR | PLUS | STAR ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 | MenhirState52 | MenhirState78 | MenhirState71 ->
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
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
        | AND | EQUAL | LE | LT | MINUS | NEQ | OPEN_BRACKET | OR | PLUS | STAR ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
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
# 103 "SourceParser.mly"
                                                    ( Literal(lit)      )
# 710 "SourceParser.ml"
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
# 105 "SourceParser.mly"
                                                    ( e                 )
# 736 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | MINUS | NEQ | OR | PLUS | SEMI | STAR | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 127 "SourceParser.mly"
         ( Mult )
# 777 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 783 "SourceParser.ml"
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
            _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack)
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | MINUS | NEQ | OR | PLUS | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 125 "SourceParser.mly"
         ( Add  )
# 843 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 849 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | OR | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 133 "SourceParser.mly"
         ( Or   )
# 886 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 892 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 129 "SourceParser.mly"
         ( Neq  )
# 921 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 927 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | MINUS | NEQ | OR | PLUS | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 126 "SourceParser.mly"
         ( Sub  )
# 952 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 958 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 130 "SourceParser.mly"
         ( Lt   )
# 987 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 993 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 131 "SourceParser.mly"
         ( Le   )
# 1022 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1028 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | EQUAL | LE | LT | NEQ | OR | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 128 "SourceParser.mly"
         ( Eq   )
# 1057 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1063 "SourceParser.ml"
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
        | AND | BEGIN | CLOSE_BRACKET | END | OR | SEMI | THEN | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))) = _menhir_stack in
            let _10 = () in
            let _v : (SourceAst.expression) = let op =
              let _1 = _10 in
              
# 132 "SourceParser.mly"
         ( And  )
# 1100 "SourceParser.ml"
              
            in
            
# 106 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1106 "SourceParser.ml"
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
# 78 "SourceParser.mly"
                                                    ( Print(e)      )
# 1209 "SourceParser.ml"
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
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState67 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState69 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | CONST_BOOL _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
                | CONST_INT _v ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
                | FOR ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | IDENT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
                | IF ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | OPEN_BRACKET ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | PRINT ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | WHILE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | END ->
                    _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (l : (SourceAst.location))), _, (e : (SourceAst.expression))) = _menhir_stack in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 75 "SourceParser.mly"
                                                    ( Set(l, e)     )
# 1429 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
    | MenhirState16 | MenhirState52 | MenhirState71 | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState80 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
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
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | CLOSE_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState82 in
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
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | CONST_BOOL _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | CONST_INT _v ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | IDENT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                | OPEN_BRACKET ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
            | AND | EQUAL | LE | LT | MINUS | NEQ | OPEN_BRACKET | OR | PLUS | STAR ->
                _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))), _), _, (e3 : (SourceAst.expression))) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 79 "SourceParser.mly"
                                                                                (
    let loc = ArrayAccess(e1, e2) in
    Set(loc, e3)
)
# 1584 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.block) = 
# 70 "SourceParser.mly"
                                           ( []      )
# 1633 "SourceParser.ml"
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
# 1735 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (id : (
# 12 "SourceParser.mly"
       (string)
# 1743 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.location) = 
# 119 "SourceParser.mly"
            ( Identifier id       )
# 1748 "SourceParser.ml"
     in
    _menhir_goto_location _menhir_env _menhir_stack _menhir_s _v

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | CONST_BOOL _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | CONST_INT _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | IDENT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | OPEN_BRACKET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "SourceParser.mly"
       (int)
# 1787 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 7 "SourceParser.mly"
       (int)
# 1795 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.literal) = 
# 114 "SourceParser.mly"
                ( Int i  )
# 1800 "SourceParser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "SourceParser.mly"
       (bool)
# 1807 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (
# 9 "SourceParser.mly"
       (bool)
# 1815 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.literal) = 
# 115 "SourceParser.mly"
                ( Bool b )
# 1820 "SourceParser.ml"
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
# 1858 "SourceParser.ml"
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
# 1873 "SourceParser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (SourceAst.typ))) = _menhir_stack in
            let _v : (SourceAst.Symb_Tbl.key * SourceAst.typ) = 
# 60 "SourceParser.mly"
                   ( (id, t) )
# 1879 "SourceParser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (tid : (SourceAst.Symb_Tbl.key * SourceAst.typ)) = _v in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _1 = () in
            let _v : (SourceAst.Symb_Tbl.key * SourceAst.typ) = 
# 56 "SourceParser.mly"
                        ( tid )
# 1889 "SourceParser.ml"
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
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | BEGIN | CONST_BOOL _ | CONST_INT _ | END | FOR | IDENT _ | IF | OPEN_BRACKET | PRINT | WHILE ->
                    _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
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
# 107 "SourceParser.mly"
                                                    ( NewArray(e, t)    )
# 1930 "SourceParser.ml"
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
        | FOR ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState16
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
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (vd : (SourceAst.Symb_Tbl.key * SourceAst.typ))), _, (vds : (SourceAst.identifier_info SourceAst.Symb_Tbl.t))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.identifier_info SourceAst.Symb_Tbl.t) = 
# 50 "SourceParser.mly"
                                   ( let (id, t) = vd in
				     let info = { typ=t; kind=Local } in
				     Symb_Tbl.add id info vds )
# 1979 "SourceParser.ml"
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
# 2021 "SourceParser.ml"
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
# 2033 "SourceParser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
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

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (SourceAst.identifier_info SourceAst.Symb_Tbl.t) = 
# 49 "SourceParser.mly"
                                   ( Symb_Tbl.empty                            )
# 2261 "SourceParser.ml"
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
# 2297 "SourceParser.ml"
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
                            | BEGIN | CONST_BOOL _ | CONST_INT _ | END | FOR | IDENT _ | IF | OPEN_BRACKET | PRINT | WHILE ->
                                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState6
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
  


# 2385 "SourceParser.ml"
