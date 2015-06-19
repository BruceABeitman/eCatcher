.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;
.super Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"
.method public constructor <init>()V
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>([Ljava/lang/String;Z)V
.registers 5
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V
const-string v0, "domain"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DomainAttributeHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "port"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965PortAttributeHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965PortAttributeHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "commenturl"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965CommentUrlAttributeHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "discard"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DiscardAttributeHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "version"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965VersionAttributeHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
return-void
.end method
.method private static adjustEffectiveHost(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Lch/boye/httpclientandroidlib/cookie/CookieOrigin;
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getHost()Ljava/lang/String;
move-result-object v3
const/4 v2, 0x1
move v0, v1
:goto_7
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-ge v0, v4, :cond_44
invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x2e
if-eq v4, v5, :cond_19
const/16 v5, 0x3a
if-ne v4, v5, :cond_41
:cond_19
:goto_19
if-eqz v1, :cond_40
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".local"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPort()I
move-result v2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->isSecure()Z
move-result v4
invoke-direct {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
move-object p0, v0
:cond_40
return-object p0
:cond_41
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_44
move v1, v2
goto :goto_19
.end method
.method private createCookies([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
.registers 14
const/4 v2, 0x0
new-instance v3, Ljava/util/ArrayList;
array-length v0, p1
invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V
array-length v4, p1
move v1, v2
:goto_9
if-ge v1, v4, :cond_a6
aget-object v0, p1, v1
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v6
if-eqz v5, :cond_1d
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_25
:cond_1d
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Cookie name may not be empty"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
new-instance v7, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;
invoke-direct {v7, v5, v6}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getDefaultPath(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v7, v5}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->setPath(Ljava/lang/String;)V
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getDefaultDomain(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v7, v5}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->setDomain(Ljava/lang/String;)V
const/4 v5, 0x1
new-array v5, v5, [I
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPort()I
move-result v6
aput v6, v5, v2
invoke-virtual {v7, v5}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->setPorts([I)V
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameters()[Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v5
new-instance v6, Ljava/util/HashMap;
array-length v0, v5
invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V
array-length v0, v5
add-int/lit8 v0, v0, -0x1
:goto_51
if-ltz v0, :cond_65
aget-object v8, v5, v0
invoke-interface {v8}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v9
sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v9
invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, -0x1
goto :goto_51
:cond_65
invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_6d
:cond_6d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/NameValuePair;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v6
sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v6
invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v6, v8}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v6}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
move-result-object v6
if-eqz v6, :cond_6d
invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
invoke-interface {v6, v7, v0}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
goto :goto_6d
:cond_9e
invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_9
:cond_a6
return-object v3
.end method
.method protected formatCookieAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/cookie/Cookie;I)V
.registers 8
invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/cookie/Cookie;I)V
instance-of v0, p2, Lch/boye/httpclientandroidlib/cookie/ClientCookie;
if-eqz v0, :cond_48
move-object v0, p2
check-cast v0, Lch/boye/httpclientandroidlib/cookie/ClientCookie;
const-string v1, "port"
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_48
const-string v1, "; $Port"
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const-string v1, "=\""
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_43
invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPorts()[I
move-result-object v1
if-eqz v1, :cond_43
const/4 v0, 0x0
array-length v2, v1
:goto_2e
if-ge v0, v2, :cond_43
if-lez v0, :cond_37
const-string v3, ","
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_37
aget v3, v1, v0
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2e
:cond_43
const-string v0, "\""
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_48
return-void
.end method
.method public getVersion()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v1, 0x28
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
const-string v1, "Cookie2"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const-string v1, ": "
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const-string v1, "$Version="
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getVersion()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
new-instance v1, Lch/boye/httpclientandroidlib/message/BufferedHeader;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
return-object v1
.end method
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Lch/boye/httpclientandroidlib/cookie/CookieOrigin;
move-result-object p2
invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
move-result v0
return v0
.end method
.method public parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "Set-Cookie2"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3f
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unrecognized cookie header \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Lch/boye/httpclientandroidlib/cookie/CookieOrigin;
move-result-object p2
invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v0
invoke-direct {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->createCookies([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
.registers 4
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Lch/boye/httpclientandroidlib/cookie/CookieOrigin;
move-result-object p2
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->createCookies([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "rfc2965"
return-object v0
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Lch/boye/httpclientandroidlib/cookie/CookieOrigin;
move-result-object p2
invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
return-void
.end method