.class  Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;
.super Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"
.field protected domainBytes:[B
.field protected hostBytes:[B
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V
:try_start_3
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;
invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$400(Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;
invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$500(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
const-string v0, "UnicodeLittleUnmarked"
invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B
invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string v1, "UnicodeLittleUnmarked"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
:try_end_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unicode unsupported: "
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
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B
array-length v0, v0
add-int/lit8 v0, v0, 0x20
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
array-length v1, v1
add-int/2addr v0, v1
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->prepareResponse(II)V
const v0, 0x20080235
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
array-length v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
array-length v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B
array-length v0, v0
add-int/lit8 v0, v0, 0x20
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B
array-length v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B
array-length v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V
const/16 v0, 0x20
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addBytes([B)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type1Message;->addBytes([B)V
invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;
move-result-object v0
return-object v0
.end method