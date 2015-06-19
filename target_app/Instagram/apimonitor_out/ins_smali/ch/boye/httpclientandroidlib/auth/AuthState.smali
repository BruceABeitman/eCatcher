.class public Lch/boye/httpclientandroidlib/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"
.field private authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;
.field private authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;
.field private credentials:Lch/boye/httpclientandroidlib/auth/Credentials;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;
return-object v0
.end method
.method public getAuthScope()Lch/boye/httpclientandroidlib/auth/AuthScope;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;
return-object v0
.end method
.method public getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;
return-object v0
.end method
.method public invalidate()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;
iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;
return-void
.end method
.method public isValid()Z
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public setAuthScheme(Lch/boye/httpclientandroidlib/auth/AuthScheme;)V
.registers 2
if-nez p1, :cond_6
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V
:goto_5
return-void
:cond_6
iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScheme:Lch/boye/httpclientandroidlib/auth/AuthScheme;
goto :goto_5
.end method
.method public setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;
return-void
.end method
.method public setCredentials(Lch/boye/httpclientandroidlib/auth/Credentials;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "auth scope ["
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->authScope:Lch/boye/httpclientandroidlib/auth/AuthScope;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v0, "]; credentials set ["
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/AuthState;->credentials:Lch/boye/httpclientandroidlib/auth/Credentials;
if-eqz v0, :cond_27
const-string v0, "true"
:goto_1a
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "]"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_27
const-string v0, "false"
goto :goto_1a
.end method