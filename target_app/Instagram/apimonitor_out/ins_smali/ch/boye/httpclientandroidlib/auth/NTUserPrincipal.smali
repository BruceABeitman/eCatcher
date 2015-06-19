.class public Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;
.field private static final serialVersionUID:J = -0x5f57bf080fe6c66eL
.field private final domain:Ljava/lang/String;
.field private final ntname:Ljava/lang/String;
.field private final username:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "User name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
if-eqz p1, :cond_40
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
:goto_19
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
if-eqz v0, :cond_44
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_44
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v1, 0x2f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;
:goto_3f
return-void
:cond_40
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
goto :goto_19
:cond_44
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;
goto :goto_3f
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x1
if-ne p0, p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
if-eqz v1, :cond_1e
check-cast p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3
:cond_1e
const/4 v0, 0x0
goto :goto_3
.end method
.method public getDomain()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;
return-object v0
.end method
.method public getUsername()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 3
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;
return-object v0
.end method