.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;
.super Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicMaxAgeHandler.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;-><init>()V
return-void
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 11
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Missing value for max-age attribute"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
:try_start_14
invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_17
.catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_2f
move-result v0
if-gez v0, :cond_45
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Negative max-age attribute: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:catch_2f
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid max-age attribute: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
new-instance v1, Ljava/util/Date;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
int-to-long v4, v0
const-wide/16 v6, 0x3e8
mul-long/2addr v4, v6
add-long/2addr v2, v4
invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V
return-void
.end method