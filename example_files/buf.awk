/error/{
    f = 1
    buf = $0
    next
}

f{
    buf = buf ORS $0
}

/state/{
    f = 0
    if(buf)
        print buf
    buf = ""
}
