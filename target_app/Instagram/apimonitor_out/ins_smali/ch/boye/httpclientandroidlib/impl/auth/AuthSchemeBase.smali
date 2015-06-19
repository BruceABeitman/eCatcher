.class public abstract Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"
.implements Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;
.field private proxy:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;
.registers 5
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
return-object v0
.end method
.method public isProxy()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->proxy:Z
return v0
.end method
.method protected abstract parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
.end method
.method public processChallenge(Lch/boye/httpclientandroidlib/Header;)V
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;
move-result-object v0
const-string v2, "WWW-Authenticate"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_3d
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->proxy:Z
:goto_19
instance-of v0, p1, Lch/boye/httpclientandroidlib/FormattedHeader;
if-eqz v0, :cond_5e
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
check-cast p1, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I
move-result v1
:goto_2a
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v2
if-ge v1, v2, :cond_79
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v2
if-eqz v2, :cond_79
add-int/lit8 v1, v1, 0x1
goto :goto_2a
:cond_3d
const-string v2, "Proxy-Authenticate"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_49
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->proxy:Z
goto :goto_19
:cond_49
new-instance v1, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected header name: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5e
invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_6c
new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
const-string v1, "Header value is null"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6c
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v0, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
goto :goto_2a
:cond_79
move v2, v1
:goto_7a
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v3
if-ge v2, v3, :cond_8d
invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v3
invoke-static {v3}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v3
if-nez v3, :cond_8d
add-int/lit8 v2, v2, 0x1
goto :goto_7a
:cond_8d
invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_b0
new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid scheme identifier: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v1
invoke-virtual {p0, v0, v2, v1}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method