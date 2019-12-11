left()
{
    SendEvent, {vk25}
    Sleep, 5
    SendEvent, {vk25}
}

right()
{
    SendEvent, {vk27}
    Sleep, 5
    SendEvent, {vk27}
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
        pres := pres - 75
    }
    for k, v in arr 
        v ? right() : left()
}
