function adsense(args, kwargs, meta)
    -- adsense creds vars
    local inArticleSlot = pandoc.utils.stringify(args[1])
    local client = pandoc.utils.stringify(meta["website.adsense-client"])

    -- Assemble script to be returned
    local adsense = '<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>'
        ..
        '<ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid"'
        .. 'data-ad-client="'
        .. client
        .. '" data-ad-slot="'
        .. inArticleSlot
        .. '"></ins>'
        .. '<script>(adsbygoogle = window.adsbygoogle || []).push({});</script>'

    if quarto.doc.isFormat('html') then
        return pandoc.RawBlock('html', adsense)
    else
        return pandoc.Null()
    end
end
