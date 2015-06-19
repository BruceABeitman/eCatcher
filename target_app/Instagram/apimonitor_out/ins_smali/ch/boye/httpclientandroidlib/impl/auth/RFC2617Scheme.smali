.class public abstract Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;
.super Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"
.field private params:Ljava/util/Map;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;-><init>()V
return-void
.end method
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter name may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_f
.end method
.method protected getParameters()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
:cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
return-object v0
.end method
.method public getRealm()Ljava/lang/String;
.registers 2
const-string v0, "realm"
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
.registers 10
sget-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v2
invoke-direct {v1, p2, v2}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v1
array-length v0, v1
if-nez v0, :cond_1a
new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
const-string v1, "Authentication challenge is empty"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
new-instance v0, Ljava/util/HashMap;
array-length v2, v1
invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
array-length v2, v1
const/4 v0, 0x0
:goto_24
if-ge v0, v2, :cond_38
aget-object v3, v1, v0
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;
invoke-interface {v3}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v3}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v3
invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_38
return-void
.end method