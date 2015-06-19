.class Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected ipad:[B

.field protected md5:Ljava/security/MessageDigest;

.field protected opad:[B


# direct methods
.method constructor <init>([B)V
    .registers 7

    const/16 v4, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_3c

    new-array v0, v4, [B

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    array-length v0, p1

    if-le v0, v4, :cond_24

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v0, p1

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_74

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :catch_3c
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting md5 message digest implementation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_56
    if-ge v0, v4, :cond_67

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_67
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    return-void

    :cond_74
    move v0, v1

    goto :goto_56
.end method


# virtual methods
.method getOutput()[B
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method update([B)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method update([BII)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
