/error/{
    f = 1
    buf = $0
    next
}

f{
    buf = buf ORS $0
}

/state/{
    if(f)
        print buf
    f = 0
}
