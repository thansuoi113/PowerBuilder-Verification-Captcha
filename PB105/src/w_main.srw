$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_gettext from commandbutton within w_main
end type
type sle_text_verification from singlelineedit within w_main
end type
type dw_verification from uo_verification within w_main
end type
end forward

global type w_main from window
integer width = 1641
integer height = 604
boolean titlebar = true
string title = "Verification Captcha"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_gettext cb_gettext
sle_text_verification sle_text_verification
dw_verification dw_verification
end type
global w_main w_main

on w_main.create
this.cb_gettext=create cb_gettext
this.sle_text_verification=create sle_text_verification
this.dw_verification=create dw_verification
this.Control[]={this.cb_gettext,&
this.sle_text_verification,&
this.dw_verification}
end on

on w_main.destroy
destroy(this.cb_gettext)
destroy(this.sle_text_verification)
destroy(this.dw_verification)
end on

type cb_gettext from commandbutton within w_main
integer x = 1170
integer y = 388
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get Text"
end type

event clicked;Messagebox("Text Verification", dw_verification.of_getext( ) )
end event

type sle_text_verification from singlelineedit within w_main
integer x = 46
integer y = 388
integer width = 1106
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
end type

type dw_verification from uo_verification within w_main
integer x = 41
integer y = 44
integer width = 1536
integer taborder = 10
end type

event clicked;call super::clicked;sle_text_verification.Text = This.Text

end event

