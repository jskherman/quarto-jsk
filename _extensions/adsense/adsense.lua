function adsense(args, meta)
    -- adsense creds vars
    local inArticleSlot = pandoc.utils.stringify(args[1])
    local client = pandoc.utils.stringify(meta["adsense"])

    -- Assemble script to be returned
    local adsense = '<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" crossorigin="anonymous"></script>\n'
        ..
        '<ins class="adsbygoogle"\n style="display:block; text-align:center;"\n data-ad-layout="in-article"\n data-ad-format="fluid"\n '
        .. 'data-ad-client="'
        .. client
        .. '"\n data-ad-slot="'
        .. inArticleSlot
        .. '"></ins>\n '
        .. '<script>(adsbygoogle = window.adsbygoogle || []).push({});</script>\n'

    if quarto.doc.isFormat('html') then
        return pandoc.RawBlock('html', adsense)
    else
        return pandoc.Null()
    end
end
