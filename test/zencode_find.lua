print'===================='
print'= Zencode internals'
print'===================='

require'zencode_simple'
require'zencode_coconut'
CONF.input.encoding = get_encoding('url64')
CONF.output.encoding = get_encoding('base64')
CONF.input.tagged = false
IN = { 
   test = "root element OK",
   tree = { treetest = "tree element OK" },
   KEYS = JSON.decode([[
{"MadHatter":{"issuer_keypair":{"issuer_sign":{"y":"fIHc-Nk2D1A4DXG6yc4bZZECSZJ0fKVCbfhkpB_MGeo","x":"hiBTTvtxFBsRXWal7Dc-CA8mmdr4Ds0MElnvsIOAroI"},"verifier":{"alpha":"Pdh5oEj9ml06sPocszmyZk7RuJztkH960N7TGW6avmHSTh4PToO_Pg0T1OL6K00ZQScEQ_h6g-iGWybYr34zjHIJW3Y0JwP0Bzxn-f07wFQzLnf3A5M5vTZPNQDsXtdVP1X3zoFSgYXNNsx_e7k9pyH1rZ5pNiH4u68JILDGmoHvjyEAptmOcGNUbkeUHtbyB0v7V7tOgjHuevpy0Ff2__8wZD58i8guFdI9YSxsQXoSKTntrFXrqS_E-747043M","beta":"UlLlOHnZoPjsAm1GC6FgR2u2Rudp2EwVbtzRtR1Y7dPTnaQq5FR_xbHfhT62GXHbJWXlyT-0j8sv72qj0LX47TOVkFP_9VtYCQ5Seh-VtgFq6Pca_Efyv2s43RPHUN4UOBBGsmGip-qo3tNORmEOO3SWrpengCm1v3Ygzul8mOKDTB8HPS39UUMOi7RPgvZdFWcxQhDt7rtALwwDyVlum3uuJ4Mq-0lIxNvDRdfIuxubLDMY72I-CRsX-DX5mFSF"}}}}
]]),
   Bob = { public_key = 'BOCaGAjuy_dfWXLxW72BtP6s79K9acSGtL60heLhW9lKDjZAzUPtsJSGxMz3iXzpfS4Bat2IcOxwimtBIGbfHNkljZ_rorI_9GrPaqSJ2GEQIJXxi7Q7GIszf0mRQ-h_T_oqYmg2p7JUBlzRVKFICPA'},
   Alice = { public_key = 'BGymcSkKJko3KxBv-eVm_tVAm0GksIQZ8SGDJ8F23TzZoMxNXRFunPe30aYO9eBTcmUQvu_-LRDfe8E86Pw7X4Uh05yC0pB6Nh0K0DKM76ZQwCps999lq0ClJSOV6XWgHuboMo1yLXiR_Dt5qxMr6N4'}
}
ACK = { whoami = "MadHatter" }
print("pick strings")
ZEN:pick('test')
ZEN:pick('treetest')
print("pick url64 crypto stuff")
ZEN:pickin('MadHatter','issuer_keypair')
ZEN:pickin('Bob','public_key')
print'= Zencode pick(), pickmy() and pickin() OK'


ZEN:validate('issuer_keypair')
print'= Zencode validate() OK'
ZEN:ack('issuer_keypair')
ZEN:ack('test')
ZEN:ack('treetest')
ZEN:ack('public')
ZEN:debug()
print'= Zencode ack() OK'
