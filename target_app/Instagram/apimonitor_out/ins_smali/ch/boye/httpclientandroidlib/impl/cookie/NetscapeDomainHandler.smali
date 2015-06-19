.class public Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDomainHandler;
.super Lch/boye/httpclientandroidlib/impl/cookie/BasicDomainHandler;
.source "NetscapeDomainHandler.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicDomainHandler;-><init>()V
return-void
.end method
.method private static isSpecialDomain(Ljava/lang/String;)Z
.registers 3
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
const-string v1, ".COM"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3e
const-string v1, ".EDU"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3e
const-string v1, ".NET"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3e
const-string v1, ".GOV"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3e
const-string v1, ".MIL"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3e
const-string v1, ".ORG"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3e
const-string v1, ".INT"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_40
:cond_3e
const/4 v0, 0x1
:goto_3f
return v0
:cond_40
const/4 v0, 0x0
goto :goto_3f
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
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getHost()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_20
const/4 v0, 0x0
:goto_1f
return v0
:cond_20
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
goto :goto_1f
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 7
invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicDomainHandler;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getHost()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v1
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_60
new-instance v0, Ljava/util/StringTokenizer;
const-string v2, "."
invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I
move-result v0
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDomainHandler;->isSpecialDomain(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_42
const/4 v2, 0x2
if-ge v0, v2, :cond_60
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Domain attribute \""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" violates the Netscape cookie specification for special domains"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_42
const/4 v2, 0x3
if-ge v0, v2, :cond_60
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Domain attribute \""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" violates the Netscape cookie specification"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_60
return-void
.end method