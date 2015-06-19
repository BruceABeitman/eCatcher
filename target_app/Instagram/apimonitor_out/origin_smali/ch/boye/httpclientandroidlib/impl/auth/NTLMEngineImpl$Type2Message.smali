.class Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;
.super Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# instance fields
.field protected challenge:[B

.field protected flags:I

.field protected target:Ljava/lang/String;

.field protected targetInfo:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x14

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->readBytes([BI)V

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->readULong(I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3b

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NTLM type 2 message has flags that make no sense: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iput-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v0

    if-lt v0, v2, :cond_55

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_55

    :try_start_4c
    new-instance v1, Ljava/lang/String;

    const-string v2, "UnicodeLittleUnmarked"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_55} :catch_6b

    :cond_55
    iput-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6a

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_6a

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    :cond_6a
    return-void

    :catch_6b
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getChallenge()[B
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    return-object v0
.end method

.method getFlags()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    return v0
.end method

.method getTarget()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method getTargetInfo()[B
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    return-object v0
.end method
