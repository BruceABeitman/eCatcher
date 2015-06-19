.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2109VersionHandler;
.super Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;
.source "RFC2109VersionHandler.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;-><init>()V
return-void
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Missing value for version attribute"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_26
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Blank value for version attribute"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
:try_start_26
invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setVersion(I)V
:try_end_2d
.catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2d} :catch_2e
return-void
:catch_2e
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid version: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I
move-result v0
if-gez v0, :cond_18
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
const-string v1, "Cookie version may not be negative"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
return-void
.end method