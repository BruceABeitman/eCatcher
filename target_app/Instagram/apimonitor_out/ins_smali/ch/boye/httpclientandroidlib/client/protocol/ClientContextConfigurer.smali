.class public Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;
.source "ClientContextConfigurer.java"
.implements Lch/boye/httpclientandroidlib/client/protocol/ClientContext;
.field private final context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
return-void
.end method
.method public setAuthSchemePref(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
const-string v1, "http.auth.scheme-pref"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public setAuthSchemeRegistry(Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
const-string v1, "http.authscheme-registry"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public setCookieSpecRegistry(Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
const-string v1, "http.cookiespec-registry"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
const-string v1, "http.cookie-store"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public setCredentialsProvider(Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;
const-string v1, "http.auth.credentials-provider"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method