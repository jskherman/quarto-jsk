function inadsense(args, kwargs, meta)
    -- adsense creds vars
    -- local inArticleSlot = pandoc.utils.stringify(args[1])
    -- local adclient = pandoc.utils.stringify(args[2])
    local adclient = pandoc.utils.stringify(meta['adsense.client'])
    local inArticleSlot = pandoc.utils.stringify(meta['adsense.slot'])

    -- Assemble script to be returned
    local adscript = '<script async type="text/plain" cookie-consent="targeting" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>'
        ..
        '<ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" '
        .. 'data-ad-client="'
        .. adclient
        .. '" data-ad-slot="'
        .. inArticleSlot
        .. '"></ins> '
        .. '<script>(adsbygoogle = window.adsbygoogle || []).push({});</script>\n'
        .. '<center><p>Advertisement</p><center>'

    if quarto.doc.isFormat('html') then
        return pandoc.RawBlock('html', adscript)
    else
        return pandoc.Null()
    end
end
