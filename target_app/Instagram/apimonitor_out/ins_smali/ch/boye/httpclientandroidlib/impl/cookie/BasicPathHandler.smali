.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;
.super Ljava/lang/Object;
.source "BasicPathHandler.java"
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p2, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPath()Ljava/lang/String;
move-result-object v4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_22
const-string v0, "/"
:cond_22
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-le v3, v1, :cond_3a
const-string v3, "/"
invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3a
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_3a
invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_62
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v6
if-eq v5, v6, :cond_62
const-string v5, "/"
invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_62
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v3, 0x2f
if-ne v0, v3, :cond_60
move v0, v1
:goto_5f
return v0
:cond_60
move v0, v2
goto :goto_5f
:cond_62
move v0, v3
goto :goto_5f
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-eqz p2, :cond_16
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_18
:cond_16
const-string p2, "/"
:cond_18
invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setPath(Ljava/lang/String;)V
return-void
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 6
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
move-result v0
if-nez v0, :cond_33
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Illegal path attribute \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\". Path of origin: \""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
return-void
.end method