.class public Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"
.implements Lch/boye/httpclientandroidlib/client/UserTokenHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;
.registers 3
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;
move-result-object v0
if-eqz v0, :cond_1d
invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z
move-result v1
if-eqz v1, :cond_1d
invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;
move-result-object v0
if-eqz v0, :cond_1d
invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;
move-result-object v0
:goto_1c
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public getUserToken(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
.registers 5
const/4 v1, 0x0
const-string v0, "http.auth.target-scope"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthState;
if-eqz v0, :cond_1d
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;
move-result-object v1
if-nez v1, :cond_1d
const-string v0, "http.auth.proxy-scope"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthState;
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;
move-result-object v1
:cond_1d
if-nez v1, :cond_38
const-string v0, "http.connection"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->isOpen()Z
move-result v2
if-eqz v2, :cond_38
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;
move-result-object v0
if-eqz v0, :cond_38
invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;
move-result-object v0
:goto_37
return-object v0
:cond_38
move-object v0, v1
goto :goto_37
.end method