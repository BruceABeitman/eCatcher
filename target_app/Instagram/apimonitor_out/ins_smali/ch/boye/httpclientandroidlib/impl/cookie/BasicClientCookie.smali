.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
.super Ljava/lang/Object;
.source "BasicClientCookie.java"
.implements Lch/boye/httpclientandroidlib/cookie/ClientCookie;
.implements Lch/boye/httpclientandroidlib/cookie/SetCookie;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.field private static final serialVersionUID:J = -0x35b4469645674e32L
.field private attribs:Ljava/util/Map;
.field private cookieComment:Ljava/lang/String;
.field private cookieDomain:Ljava/lang/String;
.field private cookieExpiryDate:Ljava/util/Date;
.field private cookiePath:Ljava/lang/String;
.field private cookieVersion:I
.field private isSecure:Z
.field private final name:Ljava/lang/String;
.field private value:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 4
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
new-instance v1, Ljava/util/HashMap;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;
invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
iput-object v1, v0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;
return-object v0
.end method
.method public containsAttribute(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getComment()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieComment:Ljava/lang/String;
return-object v0
.end method
.method public getCommentURL()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getDomain()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;
return-object v0
.end method
.method public getExpiryDate()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;
return-object v0
.end method
.method public getPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;
return-object v0
.end method
.method public getPorts()[I
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;
return-object v0
.end method
.method public getVersion()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieVersion:I
return v0
.end method
.method public isExpired(Ljava/util/Date;)Z
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Date may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;
if-eqz v0, :cond_1e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v2
cmp-long v0, v0, v2
if-gtz v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public isPersistent()Z
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isSecure()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->isSecure:Z
return v0
.end method
.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public setComment(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieComment:Ljava/lang/String;
return-void
.end method
.method public setDomain(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_b
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;
:goto_a
return-void
:cond_b
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;
goto :goto_a
.end method
.method public setExpiryDate(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;
return-void
.end method
.method public setPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;
return-void
.end method
.method public setSecure(Z)V
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->isSecure:Z
return-void
.end method
.method public setValue(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;
return-void
.end method
.method public setVersion(I)V
.registers 2
iput p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieVersion:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[version: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieVersion:I
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "[name: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "[value: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "[domain: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "[path: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "[expiry: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method