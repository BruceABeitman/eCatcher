.class  Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"
.field private currentOutputPosition:I
.field private messageContents:[B
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
return-void
.end method
.method constructor <init>(Ljava/lang/String;I)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
const-string v1, "ASCII"
invoke-static {p1, v1}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v1
const/4 v2, 0x2
invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/Base64;->decode([BI)[B
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
array-length v1, v1
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$000()[B
move-result-object v2
array-length v2, v2
if-ge v1, v2, :cond_2a
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM message decoding error - packet too short"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
add-int/lit8 v0, v0, 0x1
:cond_2a
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$000()[B
move-result-object v1
array-length v1, v1
if-ge v0, v1, :cond_45
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
aget-byte v1, v1, v0
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$000()[B
move-result-object v2
aget-byte v2, v2, v0
if-eq v1, v2, :cond_28
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM message expected - instead got unrecognized bytes"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$000()[B
move-result-object v0
array-length v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->readULong(I)I
move-result v0
if-eq v0, p2, :cond_77
new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "NTLM type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " message expected - instead got type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v1
:cond_77
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
array-length v0, v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
return-void
.end method
.method protected addByte(B)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
aput-byte p1, v0, v1
iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
return-void
.end method
.method protected addBytes([B)V
.registers 6
const/4 v0, 0x0
:goto_1
array-length v1, p1
if-ge v0, v1, :cond_15
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
aget-byte v3, p1, v0
aput-byte v3, v1, v2
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_15
return-void
.end method
.method protected addULong(I)V
.registers 3
and-int/lit16 v0, p1, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V
shr-int/lit8 v0, p1, 0x8
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V
shr-int/lit8 v0, p1, 0x10
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V
shr-int/lit8 v0, p1, 0x18
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V
return-void
.end method
.method protected addUShort(I)V
.registers 3
and-int/lit16 v0, p1, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V
shr-int/lit8 v0, p1, 0x8
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V
return-void
.end method
.method protected getMessageLength()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
return v0
.end method
.method protected getPreambleLength()I
.registers 2
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$000()[B
move-result-object v0
array-length v0, v0
add-int/lit8 v0, v0, 0x4
return v0
.end method
.method  getResponse()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
array-length v0, v0
iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
if-le v0, v1, :cond_24
iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
new-array v1, v0, [B
const/4 v0, 0x0
:goto_c
iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
if-ge v0, v2, :cond_19
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
aget-byte v2, v2, v0
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_19
move-object v0, v1
:goto_1a
const/4 v1, 0x2
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/Base64;->encode([BI)[B
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_24
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
goto :goto_1a
.end method
.method protected prepareResponse(II)V
.registers 4
new-array v0, p1, [B
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I
invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$000()[B
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V
return-void
.end method
.method protected readByte(I)B
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
array-length v0, v0
add-int/lit8 v1, p1, 0x1
if-ge v0, v1, :cond_f
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM: Message too short"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
aget-byte v0, v0, p1
return v0
.end method
.method protected readBytes([BI)V
.registers 6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
array-length v0, v0
array-length v1, p1
add-int/2addr v1, p2
if-ge v0, v1, :cond_f
new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
const-string v1, "NTLM: Message too short"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
const/4 v1, 0x0
array-length v2, p1
invoke-static {v0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method protected readSecurityBuffer(I)[B
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readSecurityBuffer([BI)[B
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$300([BI)[B
move-result-object v0
return-object v0
.end method
.method protected readULong(I)I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readULong([BI)I
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$200([BI)I
move-result v0
return v0
.end method
.method protected readUShort(I)I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B
#calls: Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->readUShort([BI)I
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$100([BI)I
move-result v0
return v0
.end method