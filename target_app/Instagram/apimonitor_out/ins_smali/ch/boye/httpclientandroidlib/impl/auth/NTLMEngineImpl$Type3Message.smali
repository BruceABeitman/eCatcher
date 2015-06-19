.class  Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;
.super Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"
.field protected domainBytes:[B
.field protected hostBytes:[B
.field protected lmResp:[B
.field protected ntResp:[B
.field protected type2Flags:I
.field protected userBytes:[B
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
.registers 15
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V
iput p6, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$400(Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;
invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$500(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
if-eqz p8, :cond_43
if-eqz p7, :cond_43
:try_start_11
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->makeRandomChallenge()[B
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$600()[B
move-result-object v4
move-object v0, p7
move-object v1, p3
move-object v2, p4
move-object v3, p5
move-object v5, p8
invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B
invoke-static {p7, p3, p4, p5, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
:goto_26
:try_end_26
.catch Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException; {:try_start_11 .. :try_end_26} :catch_55
:try_start_26
invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string v1, "UnicodeLittleUnmarked"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B
const-string v0, "UnicodeLittleUnmarked"
invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B
const-string v0, "UnicodeLittleUnmarked"
invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
:try_end_42
.catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_42} :catch_6f
return-void
:cond_43
const/high16 v0, 0x8
and-int/2addr v0, p6
if-eqz v0, :cond_62
:try_start_48
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->makeNTLM2RandomChallenge()[B
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$700()[B
move-result-object v0
invoke-static {p4, p5, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
:try_end_54
.catch Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException; {:try_start_48 .. :try_end_54} :catch_55
goto :goto_26
:catch_55
move-exception v0
const/4 v0, 0x0
new-array v0, v0, [B
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B
invoke-static {p4, p5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getLMResponse(Ljava/lang/String;[B)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
goto :goto_26
:try_start_62
:cond_62
invoke-static {p4, p5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getNTLMResponse(Ljava/lang/String;[B)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B
invoke-static {p4, p5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->getLMResponse(Ljava/lang/String;[B)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
:try_end_6e
.catch Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException; {:try_start_62 .. :try_end_6e} :catch_55
goto :goto_26
:catch_6f
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unicode not supported: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method  getResponse()Ljava/lang/String;
.registers 12
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B
array-length v0, v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
array-length v1, v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B
array-length v2, v2
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B
array-length v3, v3
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
array-length v4, v4
add-int/lit8 v5, v1, 0x40
add-int v6, v5, v0
add-int v7, v6, v2
add-int v8, v7, v4
add-int v9, v8, v3
add-int/lit8 v9, v9, 0x0
const/4 v10, 0x3
invoke-virtual {p0, v9, v10}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->prepareResponse(II)V
invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
const/16 v1, 0x40
invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
invoke-virtual {p0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V
invoke-virtual {p0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
invoke-virtual {p0, v9}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
const v0, 0x20000205
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I
const/high16 v2, 0x8
and-int/2addr v1, v2
or-int/2addr v0, v1
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I
and-int/lit8 v1, v1, 0x10
or-int/2addr v0, v1
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I
and-int/lit8 v1, v1, 0x20
or-int/2addr v0, v1
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I
const/high16 v2, 0x4000
and-int/2addr v1, v2
or-int/2addr v0, v1
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I
const v2, 0x8000
and-int/2addr v1, v2
or-int/2addr v0, v1
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V
invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;
move-result-object v0
return-object v0
.end method