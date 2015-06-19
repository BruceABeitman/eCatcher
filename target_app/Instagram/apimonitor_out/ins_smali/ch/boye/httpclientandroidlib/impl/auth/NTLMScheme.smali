.class public Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;
.super Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"
.field private challenge:Ljava/lang/String;
.field private final engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;
.field private state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;)V
.registers 4
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "NTLM engine may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;
sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;
return-void
.end method
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
.registers 9
:try_start_0
check-cast p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;
:try_end_2
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_40
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
if-eq v0, v1, :cond_e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
if-ne v0, v1, :cond_5e
:cond_e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getDomain()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getWorkstation()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
:goto_20
new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v2, 0x20
invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->isProxy()Z
move-result v2
if-eqz v2, :cond_98
const-string v2, "Proxy-Authorization"
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:goto_32
const-string v2, ": NTLM "
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
new-instance v0, Lch/boye/httpclientandroidlib/message/BufferedHeader;
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
return-object v0
:catch_40
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Credentials cannot be used for NTLM authentication: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
if-ne v0, v1, :cond_81
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getUserName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getPassword()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getDomain()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getWorkstation()Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;
invoke-interface/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
goto :goto_20
:cond_81
new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthenticationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_98
const-string v2, "Authorization"
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
goto :goto_32
.end method
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getRealm()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getSchemeName()Ljava/lang/String;
.registers 2
const-string v0, "ntlm"
return-object v0
.end method
.method public isComplete()Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
if-eq v0, v1, :cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
if-ne v0, v1, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isConnectionBased()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
.registers 6
invoke-virtual {p1, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_1d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
if-ne v0, v1, :cond_18
sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
:goto_14
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;
:goto_17
return-void
:cond_18
sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
goto :goto_14
:cond_1d
sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;
goto :goto_17
.end method