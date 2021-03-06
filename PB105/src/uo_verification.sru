$PBExportHeader$uo_verification.sru
forward
global type uo_verification from datawindow
end type
end forward

global type uo_verification from datawindow
integer width = 549
integer height = 320
boolean livescroll = true
end type
global uo_verification uo_verification

type variables
string text
end variables

forward prototypes
public subroutine of_draw_code ()
public function string of_getext ()
end prototypes

public subroutine of_draw_code ();//====================================================================
// Function: uo_verification.of_draw_code()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/01/16
//--------------------------------------------------------------------
// Usage: uo_verification.of_draw_code ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_sCode[]
String ls_text,ls_syntax,ls_content
Dec li_radian,li_random
Int li_index,li_x,li_y,li_x2,li_y2
Int li_i
Long ll_rgb
Int li_r,li_g,li_b
ls_sCode = {"A","B","C","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0"}

Randomize(0)

For li_i = 1 To 4
	This.Modify("destroy char_"+String(li_i))
	li_index = Rand(UpperBound(ls_sCode))
	ls_text = ls_sCode[li_index] //random content
	li_radian = Rand(300)
	li_random = Rand(100) / 100
	If li_i = 1 Then
		
	ElseIf li_i = 1 Then
	ElseIf li_i = 1 Then
	Else
	End If
	//li_x=(((this.width -30)/4) *li_i) - 110 //text x coordinate
	li_x = ((This.Width -5 ) / 4) * li_i
	li_x = (li_x /1.5) -30
	li_y = 20 + li_random * 8 //text y coordinate
	li_r = (Rand(100) / 100 )*256
	li_g = (Rand(100) / 100 )*256
	li_b = (Rand(100) / 100 )*256
	ll_rgb = 65536 * li_b + 256 * li_g + li_r
	
	This.Modify('create text(band=detail alignment="2" text="'+ls_text+'" border="0"  &
		Color = "'+string(ll_rgb)+'" X = "'+string(li_x)+'" Y = "'+string(li_y)+'" Height = "96" Width = "100" html.valueishtml = "0"  &
		Name = char_'+string(li_i)+' Visible = "1"  font.face = "Arial" font.Height = "-40" font.Weight = "700"  &
		font.family = "2" font.pitch = "2" font.charset = "134" background.mode = "1" background.Color = "536870912" )')
	This.Modify("char_"+String(li_i)+".font.escapement="+String(li_radian)+"")
	ls_content = ls_content+ls_text
Next

This.Text = ls_content
//line
For li_i = 1 To 5
	This.Modify("destroy line_"+String(li_i))
	li_r = (Rand(100) / 100 )*256
	li_g = (Rand(100) / 100 )*256
	li_b = (Rand(100) / 100 )*256
	ll_rgb = 65536 * li_b + 256 * li_g + li_r
	
	li_x = (Rand(100) / 100 )*This.Width
	li_x2 = (Rand(100) / 100 )*This.Width
	li_y = (Rand(100) / 100 )*This.Height
	li_y2 = (Rand(100) / 100 )*This.Height
	This.Modify('create line(band=detail x1="'+String(li_x)+'" y1="'+String(li_x2)+'" &
		x2 = "'+string(li_y)+'" y2 = "'+string(li_y2)+'"  Name = line_'+string(li_i)+' Visible = "1" pen.Style = "0" &
		pen.Width = "5" pen.Color = "'+string(ll_rgb)+'"  background.mode = "2" background.Color = "1073741824" )')
Next

//dots
For li_i = 1 To 30
	This.Modify("destroy oval_"+String(li_i))
	li_r = (Rand(100) / 100 )*256
	li_g = (Rand(100) / 100 )*256
	li_b = (Rand(100) / 100 )*256
	ll_rgb = 65536 * li_b + 256 * li_g + li_r
	
	li_x = Long((Rand(100) / 100 )*This.Width)
	li_y = Long((Rand(100) / 100 )*This.Height)
	This.Modify('create ellipse(band=detail x="'+String(li_x)+'" y="'+String(li_y)+'" height="19" width="18"  &
		Name = oval_'+string(li_i)+' Visible = "1" brush.hatch = "6" brush.Color = "'+string(ll_rgb)+'" pen.Style = "5" pen.Width = "4" &
		pen.Color = "'+string(ll_rgb)+'"  background.mode = "2" background.Color = "0" )&
		')
Next


end subroutine

public function string of_getext ();Return Text

end function

on uo_verification.create
end on

on uo_verification.destroy
end on

event constructor;String ls_syntax

ls_syntax = 'release 10.5; &
	datawindow(units = 0 timer_interval = 0 Color = 1073741824 processing = 0 HTMLDW = no Print.printername = "" Print.DocumentName = "" Print.orientation = 0 Print.margin.Left = 110 Print.margin.Right = 110 Print.margin.Top = 96 Print.margin.bottom = 96 Print.paper.Source = 0 Print.paper.size = 0 Print.canusedefaultprinter = yes Print.prompt = no Print.buttons = no Print.Preview.buttons = no Print.cliptext = no Print.overrideprintjob = no Print.collate = yes hidegrayline = no )&
	summary(Height = 0 Color = "536870912" )&
	footer(Height = 0 Color = "536870912" )&
	detail(Height = 998 Color = "536870912" )&
	Table(column = (Type = Char(10) updatewhereclause = yes Name = a dbname = "a" )&
	)&
	htmltable(Border = "1" )&
	htmlgen(clientevents = "1" clientvalidation = "1" clientcomputedfields = "1" clientformatting = "0" clientscriptable = "0" generatejavascript = "1" encodeselflinkargs = "1" netscapelayers = "0" )&
	export.xml(headgroups = "1" includewhitespace = "0" metadatatype = 0 savemetadata = 0 )&
	import.xml()&
	export.pdf(method = 0 distill.custompostscript = "0" xslfop.Print = "0" )'

This.Create(ls_syntax)
This.InsertRow(0)
This.of_draw_code()

end event

event clicked;This.of_draw_code()


end event

