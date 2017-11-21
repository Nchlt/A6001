
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
  | MenhirState90
  | MenhirState84
  | MenhirState83
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState77
  | MenhirState72
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
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (l : (int list))) = _menhir_stack in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : (int list) = 
# 76 "SourceParser.mly"
                                           ( l )
# 164 "SourceParser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (ca : (int list)) = _v in
                let (_menhir_stack, _menhir_s, (l : (SourceAst.location))) = _menhir_stack in
                let _2 = () in
                let _v : (SourceAst.instruction) = 
# 89 "SourceParser.mly"
                                  (
  SetArray(l, ca)
)
# 176 "SourceParser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
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

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "SourceParser.mly"
       (int)
# 197 "SourceParser.ml"
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
# 220 "SourceParser.ml"
        ))) = _menhir_stack in
        let _v : (int list) = 
# 215 "/Users/nour/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 225 "SourceParser.ml"
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
# 101 "SourceParser.mly"
                                                    ( Location(loc)     )
# 241 "SourceParser.ml"
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
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | CONST_BOOL _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | CONST_INT _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | IDENT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | IF ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | OPEN_BRACKET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | PRINT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | WHILE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | END ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
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
# 118 "SourceParser.mly"
            ( ArrayAccess(e1, e2) )
# 323 "SourceParser.ml"
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
# 96 "SourceParser.mly"
                                     ( is )
# 556 "SourceParser.ml"
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
# 83 "SourceParser.mly"
                                                    ( If(e, b1, b2) )
# 592 "SourceParser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
            | MenhirState51 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (e : (SourceAst.expression))), _, (b : (SourceAst.block))) = _menhir_stack in
                let _1 = () in
                let _v : (SourceAst.instruction) = 
# 82 "SourceParser.mly"
                                                    ( While(e, b)   )
# 603 "SourceParser.ml"
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
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (i : (SourceAst.instruction))), _, (is : (SourceAst.block))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.block) = 
# 71 "SourceParser.mly"
                                           ( i :: is )
# 622 "SourceParser.ml"
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
# 641 "SourceParser.ml"
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
# 653 "SourceParser.ml"
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
# 666 "SourceParser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (
# 30 "SourceParser.mly"
      (SourceAst.main)
# 673 "SourceParser.ml"
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
    | MenhirState83 | MenhirState80 | MenhirState64 | MenhirState57 | MenhirState54 | MenhirState17 | MenhirState18 | MenhirState45 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState16 | MenhirState77 | MenhirState52 ->
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
# 100 "SourceParser.mly"
                                                    ( Literal(lit)      )
# 754 "SourceParser.ml"
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
# 102 "SourceParser.mly"
                                                    ( e                 )
# 780 "SourceParser.ml"
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
              
# 124 "SourceParser.mly"
         ( Mult )
# 821 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 827 "SourceParser.ml"
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
              
# 122 "SourceParser.mly"
         ( Add  )
# 887 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 893 "SourceParser.ml"
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
              
# 130 "SourceParser.mly"
         ( Or   )
# 930 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 936 "SourceParser.ml"
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
              
# 126 "SourceParser.mly"
         ( Neq  )
# 965 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 971 "SourceParser.ml"
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
              
# 123 "SourceParser.mly"
         ( Sub  )
# 996 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1002 "SourceParser.ml"
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
              
# 127 "SourceParser.mly"
         ( Lt   )
# 1031 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1037 "SourceParser.ml"
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
              
# 128 "SourceParser.mly"
         ( Le   )
# 1066 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1072 "SourceParser.ml"
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
              
# 125 "SourceParser.mly"
         ( Eq   )
# 1101 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1107 "SourceParser.ml"
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
              
# 129 "SourceParser.mly"
         ( And  )
# 1144 "SourceParser.ml"
              
            in
            
# 103 "SourceParser.mly"
                                                    ( Binop(op, e1, e2) )
# 1150 "SourceParser.ml"
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
# 84 "SourceParser.mly"
                                                    ( Print(e)      )
# 1253 "SourceParser.ml"
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (l : (SourceAst.location))), _, (e : (SourceAst.expression))) = _menhir_stack in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 81 "SourceParser.mly"
                                                    ( Set(l, e)     )
# 1352 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
    | MenhirState16 | MenhirState52 | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | OPEN_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState79 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | CONST_BOOL _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | CONST_INT _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | IDENT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | OPEN_BRACKET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | CLOSE_BRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState81 in
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
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | CONST_BOOL _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | CONST_INT _v ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | IDENT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | OPEN_BRACKET ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
            | AND | EQUAL | LE | LT | MINUS | NEQ | OPEN_BRACKET | OR | PLUS | STAR ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | EQUAL ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | OPEN_BRACKET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | OR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | STAR ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (e1 : (SourceAst.expression))), _), _, (e2 : (SourceAst.expression))), _), _, (e3 : (SourceAst.expression))) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : (SourceAst.instruction) = 
# 85 "SourceParser.mly"
                                                                                (
    let loc = ArrayAccess(e1, e2) in
    Set(loc, e3)
)
# 1507 "SourceParser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
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
# 1527 "SourceParser.ml"
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
# 1629 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (id : (
# 12 "SourceParser.mly"
       (string)
# 1637 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.location) = 
# 116 "SourceParser.mly"
            ( Identifier id       )
# 1642 "SourceParser.ml"
     in
    _menhir_goto_location _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "SourceParser.mly"
       (int)
# 1649 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 7 "SourceParser.mly"
       (int)
# 1657 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.literal) = 
# 111 "SourceParser.mly"
                ( Int i  )
# 1662 "SourceParser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "SourceParser.mly"
       (bool)
# 1669 "SourceParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (
# 9 "SourceParser.mly"
       (bool)
# 1677 "SourceParser.ml"
    )) = _v in
    let _v : (SourceAst.literal) = 
# 112 "SourceParser.mly"
                ( Bool b )
# 1682 "SourceParser.ml"
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
# 1720 "SourceParser.ml"
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
# 1735 "SourceParser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (SourceAst.typ))) = _menhir_stack in
            let _v : (SourceAst.Symb_Tbl.key * SourceAst.typ) = 
# 60 "SourceParser.mly"
                   ( (id, t) )
# 1741 "SourceParser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (tid : (SourceAst.Symb_Tbl.key * SourceAst.typ)) = _v in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _1 = () in
            let _v : (SourceAst.Symb_Tbl.key * SourceAst.typ) = 
# 56 "SourceParser.mly"
                        ( tid )
# 1751 "SourceParser.ml"
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
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | BEGIN | CONST_BOOL _ | CONST_INT _ | END | IDENT _ | IF | OPEN_BRACKET | PRINT | WHILE ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
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
# 104 "SourceParser.mly"
                                                    ( NewArray(e, t)    )
# 1792 "SourceParser.ml"
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
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (vd : (SourceAst.Symb_Tbl.key * SourceAst.typ))), _, (vds : (SourceAst.identifier_info SourceAst.Symb_Tbl.t))) = _menhir_stack in
        let _2 = () in
        let _v : (SourceAst.identifier_info SourceAst.Symb_Tbl.t) = 
# 50 "SourceParser.mly"
                                   ( let (id, t) = vd in
				     let info = { typ=t; kind=Local } in
				     Symb_Tbl.add id info vds )
# 1839 "SourceParser.ml"
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
# 1881 "SourceParser.ml"
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
# 1893 "SourceParser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
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
# 2101 "SourceParser.ml"
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
# 2137 "SourceParser.ml"
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
  


# 2225 "SourceParser.ml"
