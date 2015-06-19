.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;
.super Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicExpiresHandler.java"
.field private final datepatterns:[Ljava/lang/String;
.method public constructor <init>([Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Array of date patterns may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;->datepatterns:[Ljava/lang/String;
return-void
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Missing value for expires attribute"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_14
:cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;->datepatterns:[Ljava/lang/String;
invoke-static {p2, v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V
:try_end_1d
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_14 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unable to parse expires attribute: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
.end method