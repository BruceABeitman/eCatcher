.class public Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
.field private exceptions:Ljava/util/Set;
.field private suffixes:Ljava/util/Set;
.field private final wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
.method public constructor <init>(Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
return-void
.end method
.method private isForPublicSuffix(Lch/boye/httpclientandroidlib/cookie/Cookie;)Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v0
const-string v3, "."
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_12
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_12
invoke-static {v0}, Lch/boye/httpclientandroidlib/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;
if-eqz v3, :cond_24
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;
invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_24
move v0, v1
:goto_23
return v0
:cond_24
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;
if-nez v3, :cond_2a
move v0, v1
goto :goto_23
:cond_2a
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;
invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_34
move v0, v2
goto :goto_23
:cond_34
const-string v3, "*."
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_41
const/4 v3, 0x2
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_41
const/16 v3, 0x2e
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_63
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "*"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-gtz v3, :cond_2a
:cond_63
move v0, v1
goto :goto_23
.end method
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
.registers 4
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lch/boye/httpclientandroidlib/cookie/Cookie;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
move-result v0
goto :goto_7
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
return-void
.end method
.method public setExceptions(Ljava/util/Collection;)V
.registers 3
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;
return-void
.end method
.method public setPublicSuffixes(Ljava/util/Collection;)V
.registers 3
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;
return-void
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->wrapped:Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
return-void
.end method