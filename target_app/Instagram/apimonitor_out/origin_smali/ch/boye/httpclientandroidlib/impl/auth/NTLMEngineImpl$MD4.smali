.class Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected count:J

.field protected dataBuffer:[B


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x67452301

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    const v0, -0x10325477

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    const v0, -0x67452302

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    const v0, 0x10325476

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    return-void
.end method


# virtual methods
.method getOutput()[B
    .registers 11

    const/16 v9, 0x8

    const/4 v2, 0x0

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v3, 0x3f

    and-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_2b

    rsub-int/lit8 v0, v0, 0x38

    :goto_f
    add-int/lit8 v1, v0, 0x8

    new-array v3, v1, [B

    const/16 v1, -0x80

    aput-byte v1, v3, v2

    move v1, v2

    :goto_18
    if-ge v1, v9, :cond_2e

    add-int v4, v0, v1

    iget-wide v5, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    mul-int/lit8 v7, v1, 0x8

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2b
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_f

    :cond_2e
    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v1, v9}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    return-object v0
.end method

.method protected processBuffer()V
    .registers 7

    const/16 v5, 0x10

    new-array v1, v5, [I

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_3b

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3b
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->round1([I)V

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->round2([I)V

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->round3([I)V

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    add-int/2addr v0, v1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    add-int/2addr v0, v2

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    add-int/2addr v0, v3

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    add-int/2addr v0, v4

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    return-void
.end method

.method protected round1([I)V
    .registers 10

    const/16 v7, 0x13

    const/16 v6, 0xb

    const/4 v5, 0x7

    const/4 v4, 0x3

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v4

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    return-void
.end method

.method protected round2([I)V
    .registers 11

    const/16 v8, 0xd

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x3

    const v4, 0x5a827999

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    return-void
.end method

.method protected round3([I)V
    .registers 11

    const/16 v8, 0xf

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x3

    const v4, 0x6ed9eba1

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->B:I

    return-void
.end method

.method update([B)V
    .registers 10

    const/4 v1, 0x0

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v0, v2

    move v2, v0

    move v0, v1

    :goto_9
    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_26

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->processBuffer()V

    move v2, v1

    goto :goto_9

    :cond_26
    array-length v1, p1

    if-ge v0, v1, :cond_36

    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$MD4;->count:J

    :cond_36
    return-void
.end method
