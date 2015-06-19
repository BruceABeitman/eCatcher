.class public Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"
.implements Lch/boye/httpclientandroidlib/auth/Credentials;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x36087f34635c8cbL
.field private final password:Ljava/lang/String;
.field private final principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Username:password string may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
const/16 v0, 0x3a
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_2a
new-instance v1, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
const/4 v2, 0x0
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;
:goto_29
return-void
:cond_2a
new-instance v0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;
goto :goto_29
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Username may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-instance v0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x1
if-ne p0, p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;
if-eqz v1, :cond_14
check-cast p1, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;
iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3
:cond_14
const/4 v0, 0x0
goto :goto_3
.end method
.method public getPassword()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;
return-object v0
.end method
.method public getUserName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getUserPrincipal()Ljava/security/Principal;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method