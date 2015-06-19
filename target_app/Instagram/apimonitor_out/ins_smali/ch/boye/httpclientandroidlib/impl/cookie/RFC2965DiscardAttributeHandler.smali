.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DiscardAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DiscardAttributeHandler.java"
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
.registers 4
const/4 v0, 0x1
return v0
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 4
instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;
if-eqz v0, :cond_a
check-cast p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;
const/4 v0, 0x1
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/SetCookie2;->setDiscard(Z)V
:cond_a
return-void
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 3
return-void
.end method