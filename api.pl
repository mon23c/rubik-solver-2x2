:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_pwp)).
:- use_module(library(http/html_head)).
:- include('rubiks2x2.pl').
:- initialization(server(5000)).

:- http_handler('/', index, []).
:- http_handler('/start', start, []).
:- http_handler('/easy', diff(easy), []).
:- http_handler('/medium', diff(medium), []).
:- http_handler('/hard', diff(hard), []).
:- http_handler('/front', doRotate(front), []).
:- http_handler('/top', doRotate(top), []).
:- http_handler('/right', doRotate(right), []).
:- http_handler('/undo', undo, []).
:- http_handler('/restart', restart, []).
:- http_handler('/rubik2x2.jpg', http_reply_file('rubik2x2.jpg', []), []).

server(Port) :- 
	http_server(http_dispatch, [port(Port)]).

index(Request) :-
	reply_pwp_page('templates/index.html', [mime_type('text/html')], Request).

start(Request) :-
	start,
	reply_pwp_page('templates/start.html', [mime_type('text/html')], Request).

diff(Level, Request) :-
	difficulty(Level),
	reply_pwp_page('templates/game.html', [mime_type('text/html')], Request).

doRotate(Direction, Request) :-
	move(Direction),
	reply_pwp_page('templates/game.html', [mime_type('text/html')], Request).

undo(Request) :-
	undo,
	reply_pwp_page('templates/game.html', [mime_type('text/html')], Request).

restart(Request) :-
	restart,
	reply_pwp_page('templates/index.html', [mime_type('text/html')], Request).