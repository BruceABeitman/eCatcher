.class public Lch/boye/httpclientandroidlib/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"
.implements Lch/boye/httpclientandroidlib/auth/Credentials;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x667f466566109701L
.field private final password:Ljava/lang/String;
.field private final principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
.field private final workstation:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 7
const/4 v2, 0x0
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Username:password string may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
const/16 v0, 0x3a
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ltz v1, :cond_46
invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;
move-object p1, v0
:goto_24
const/16 v0, 0x2f
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_49
new-instance v1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
:goto_43
iput-object v4, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
return-void
:cond_46
iput-object v4, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;
goto :goto_24
:cond_49
new-instance v1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v4, v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
goto :goto_43
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "User name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-instance v0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-direct {v0, p4, p1}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;
if-eqz p3, :cond_21
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
:goto_20
return-void
:cond_21
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
goto :goto_20
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x1
if-ne p0, p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;
if-eqz v1, :cond_1e
check-cast p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3
:cond_1e
const/4 v0, 0x0
goto :goto_3
.end method
.method public getDomain()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->getDomain()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPassword()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;
return-object v0
.end method
.method public getUserName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->getUsername()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getUserPrincipal()Ljava/security/Principal;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
return-object v0
.end method
.method public getWorkstation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 3
const/16 v0, 0x11
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[principal: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v1, "][workstation: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method