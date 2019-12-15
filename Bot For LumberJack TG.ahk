SendKey(key)
{
SendEvent, % "{" key "}"
Sleep, 5
SendEvent, % "{" key "}"
}

!1::
While(true)
{
    pres := 425
    arr := []
    Sleep, 165
    while (pres > 100)
    {
        PixelGetColor, var, 618, pres
        arr.push(var == 0x4FAD7E ? 1 : 0)
        pres -= 75
    }
    for k, v in arr 
        v ? SendKey("vk27") : SendKey("vk25")
}
