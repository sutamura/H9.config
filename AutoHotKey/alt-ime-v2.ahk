#Requires AutoHotkey v2.0
#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxThreadsPerHotkey 350

; 主要なキーを HotKey に設定し、何もせずパススルーする
#HotIf
~*a::
~*b::
~*c::
~*d::
~*e::
~*f::
~*g::
~*h::
~*i::
~*j::
~*k::
~*l::
~*m::
~*n::
~*o::
~*p::
~*q::
~*r::
~*s::
~*t::
~*u::
~*v::
~*w::
~*x::
~*y::
~*z::
~*1::
~*2::
~*3::
~*4::
~*5::
~*6::
~*7::
~*8::
~*9::
~*0::
~*F1::
~*F2::
~*F3::
~*F4::
~*F5::
~*F6::
~*F7::
~*F8::
~*F9::
~*F10::
~*F11::
~*F12::
~*`::
~*~::
~*!::
~*@::
~*#::
~*$::
~*%::
~*^::
~*&::
~**::
~*(::
~*)::
~*-::
~*_::
~*=::
~*+::
~*[::
~*{::
~*]::
~*}::
~*\::
~*|::
~*;::
~*'::
~*"::
~*,::
~*<::
~*.::
~*>::
~*/::
~*?::
~*Escape::
~*Tab::
~*Space::
~*Left::
~*Right::
~*Up::
~*Down::
~*Enter::
~*PrintScreen::
~*Delete::
~*Home::
~*End::
~*PgUp::
~*PgDn::
{
    Return
}

; 上部メニューがアクティブになるのを抑制
~*LAlt::Send "{Blind}{vk07}"
~*RAlt::Send "{Blind}{vk07}"


; 英語レイアウトへの切替
LAlt up:: {
    if (A_PriorHotkey == "~*LAlt") {
        ru := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
        PostMessage(0x50, 0, ru,, "A")  ; WM_INPUTLANGCHANGEREQUEST
    }
}

; 日本語レイアウトへの切替
RAlt up:: {
    if (A_PriorHotkey == "~*RAlt") {
        ru := DllCall("LoadKeyboardLayout", "Str", "00000411", "Int", 1)
        PostMessage(0x50, 0, ru,, "A")  ; WM_INPUTLANGCHANGEREQUEST
        IME_SET(1)  ; IMEをONに
    }
}