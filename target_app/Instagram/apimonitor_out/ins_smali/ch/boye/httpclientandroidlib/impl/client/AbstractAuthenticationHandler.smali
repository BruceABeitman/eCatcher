.class public abstract Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"
.implements Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "negotiate"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "NTLM"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "Digest"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "Basic"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
return-void
.end method
.method protected getAuthPreferences()Ljava/util/List;
.registers 2
sget-object v0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
return-object v0
.end method
.method protected getAuthPreferences(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/List;
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->getAuthPreferences()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected parseChallenges([Lch/boye/httpclientandroidlib/Header;)Ljava/util/Map;
.registers 11
const/4 v2, 0x0
new-instance v6, Ljava/util/HashMap;
array-length v0, p1
invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V
array-length v7, p1
move v5, v2
:goto_9
if-ge v5, v7, :cond_74
aget-object v1, p1, v5
instance-of v0, v1, Lch/boye/httpclientandroidlib/FormattedHeader;
if-eqz v0, :cond_32
move-object v0, v1
check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v3
move-object v0, v1
check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I
move-result v0
:goto_1f
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v4
if-ge v0, v4, :cond_4f
invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v4
if-eqz v4, :cond_4f
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_32
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_40
new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
const-string v1, "Header value is null"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_40
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
invoke-direct {v0, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
move-object v3, v0
move v0, v2
goto :goto_1f
:cond_4f
move v4, v0
:goto_50
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v8
if-ge v4, v8, :cond_63
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v8
invoke-static {v8}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v8
if-nez v8, :cond_63
add-int/lit8 v4, v4, 0x1
goto :goto_50
:cond_63
invoke-virtual {v3, v0, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v0
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v5, 0x1
move v5, v0
goto :goto_9
:cond_74
return-object v6
.end method
.method public selectScheme(Ljava/util/Map;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/auth/AuthScheme;
.registers 11
const-string v0, "http.authscheme-registry"
invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
if-nez v0, :cond_12
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "AuthScheme registry not set in HTTP context"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->getAuthPreferences(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/List;
move-result-object v1
if-nez v1, :cond_1a
sget-object v1, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
:cond_1a
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_36
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Authentication schemes in the order of preference: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_36
const/4 v3, 0x0
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_3b
:cond_3b
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_dd
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lch/boye/httpclientandroidlib/Header;
if-eqz v2, :cond_b8
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_75
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " authentication scheme selected"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_start_75
:cond_75
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/auth/AuthScheme;
:try_end_7c
.catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_7c} :catch_94
move-result-object v0
:goto_7d
if-nez v0, :cond_dc
new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthenticationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unable to respond to any of these challenges: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V
throw v0
:catch_94
move-exception v2
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Authentication scheme "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, " not supported"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V
goto :goto_3b
:cond_b8
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractAuthenticationHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Challenge for "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, " authentication scheme not available"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
goto/16 :goto_3b
:cond_dc
return-object v0
:cond_dd
move-object v0, v3
goto :goto_7d
.end method