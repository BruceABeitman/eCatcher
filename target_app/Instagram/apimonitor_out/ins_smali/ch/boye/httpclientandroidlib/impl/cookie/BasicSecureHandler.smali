.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;
.super Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicSecureHandler.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;-><init>()V
return-void
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
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isSecure()Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->isSecure()Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x1
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setSecure(Z)V
return-void
.end method