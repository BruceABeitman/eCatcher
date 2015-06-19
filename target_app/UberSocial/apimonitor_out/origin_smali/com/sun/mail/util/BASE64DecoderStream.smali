.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_30

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    move v1, v0

    :goto_11
    const/16 v2, 0xff

    if-lt v1, v2, :cond_1b

    :goto_15
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_23

    return-void

    :cond_1b
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_23
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    nop

    :array_30
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    :try_start_19
    const-string v1, "mail.mime.base64.ignoreerrors"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2c} :catch_2d

    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    return-void
.end method

.method private decode([BII)I
    .registers 14

    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, -0x1

    move v5, p2

    :goto_6
    const/4 v2, 0x3

    if-ge p3, v2, :cond_c

    sub-int v0, v5, p2

    :goto_b
    return v0

    :cond_c
    move v4, v1

    move v2, v1

    :goto_e
    const/4 v3, 0x4

    if-lt v2, v3, :cond_2e

    add-int/lit8 v2, v5, 0x2

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    shr-int/lit8 v2, v4, 0x8

    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 v2, v5, 0x3

    move v5, v2

    goto :goto_6

    :cond_2e
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v6

    if-eq v6, v7, :cond_36

    if-ne v6, v8, :cond_100

    :cond_36
    if-ne v6, v7, :cond_85

    if-nez v2, :cond_3d

    sub-int v0, v5, p2

    goto :goto_b

    :cond_3d
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v1, :cond_64

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    move v3, v0

    :goto_65
    add-int/lit8 v1, v2, -0x1

    if-nez v1, :cond_10a

    :goto_69
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v4, 0x6

    :goto_6d
    const/4 v4, 0x4

    if-lt v2, v4, :cond_b6

    shr-int/lit8 v1, v1, 0x8

    if-ne v0, v9, :cond_7b

    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :cond_7b
    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    add-int/2addr v0, v5

    sub-int/2addr v0, p2

    goto :goto_b

    :cond_85
    if-ge v2, v9, :cond_ae

    iget-boolean v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v3, :cond_ae

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before padding character (=)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    if-nez v2, :cond_b4

    sub-int v0, v5, p2

    goto/16 :goto_b

    :cond_b4
    move v3, v1

    goto :goto_65

    :cond_b6
    if-nez v3, :cond_fa

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v4

    if-ne v4, v7, :cond_db

    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v4, :cond_fa

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    if-eq v4, v8, :cond_fa

    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v4, :cond_fa

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fa
    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6d

    :cond_100
    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v2, 0x1

    or-int v2, v4, v6

    move v4, v2

    move v2, v3

    goto/16 :goto_e

    :cond_10a
    move v0, v1

    goto/16 :goto_69
.end method

.method public static decode([B)[B
    .registers 11

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v9, 0x3d

    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_c

    :goto_b
    return-object p0

    :cond_c
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v9, :cond_1e

    add-int/lit8 v0, v0, -0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p0, v3

    if-ne v3, v9, :cond_1e

    add-int/lit8 v0, v0, -0x1

    :cond_1e
    new-array v5, v0, [B

    array-length v0, p0

    move v6, v2

    move v7, v0

    :goto_23
    if-gtz v7, :cond_27

    move-object p0, v5

    goto :goto_b

    :cond_27
    const/4 v0, 0x3

    sget-object v3, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x6

    sget-object v3, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v3, v3, v8

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, p0, v4

    if-eq v3, v9, :cond_85

    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v8, v4

    or-int/2addr v2, v4

    :goto_50
    shl-int/lit8 v2, v2, 0x6

    aget-byte v4, p0, v3

    if-eq v4, v9, :cond_88

    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v8, v3

    or-int/2addr v2, v3

    move v3, v4

    :goto_62
    if-le v0, v1, :cond_6b

    add-int/lit8 v4, v6, 0x2

    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    :cond_6b
    shr-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-le v0, v4, :cond_77

    add-int/lit8 v4, v6, 0x1

    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    :cond_77
    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    add-int/2addr v0, v6

    add-int/lit8 v2, v7, -0x4

    move v6, v0

    move v7, v2

    move v2, v3

    goto :goto_23

    :cond_85
    move v0, v1

    move v3, v4

    goto :goto_50

    :cond_88
    add-int/lit8 v0, v0, -0x1

    goto :goto_62
.end method

.method private getByte()I
    .registers 5

    const/4 v0, -0x1

    :cond_1
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-lt v1, v2, :cond_19

    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_11} :catch_33

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-gtz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    :cond_19
    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2b

    const/4 v0, -0x2

    goto :goto_15

    :cond_2b
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v1, v2, v1

    if-eq v1, v0, :cond_1

    move v0, v1

    goto :goto_15

    :catch_33
    move-exception v1

    goto :goto_15
.end method

.method private recentChars()Ljava/lang/String;
    .registers 5

    const/16 v1, 0xa

    const-string v0, ""

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-le v2, v1, :cond_43

    move v2, v1

    :goto_9
    if-lez v2, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", the "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " most recent characters were: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int/2addr v0, v2

    :goto_2b
    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-lt v0, v2, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    return-object v0

    :cond_43
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    move v2, v1

    goto :goto_9

    :cond_47
    iget-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    packed-switch v2, :pswitch_data_c2

    :pswitch_51
    const/16 v3, 0x20

    if-lt v2, v3, :cond_a9

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_a9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :pswitch_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :pswitch_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :pswitch_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :cond_a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    nop

    :pswitch_data_c2
    .packed-switch 0x9
        :pswitch_95
        :pswitch_81
        :pswitch_51
        :pswitch_51
        :pswitch_6d
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-gtz v0, :cond_18

    const/4 v0, -0x1

    :goto_17
    return v0

    :cond_18
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    :cond_1a
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_17
.end method

.method public read([BII)I
    .registers 10

    const/4 v2, -0x1

    move v0, p2

    :goto_2
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v1, v3, :cond_a

    if-gtz p3, :cond_27

    :cond_a
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v1, v3, :cond_15

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    :cond_15
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_4d

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr p3, v3

    if-eq v3, v1, :cond_4d

    if-ne v0, p2, :cond_39

    move v0, v2

    :goto_26
    return v0

    :cond_27
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v1

    goto :goto_2

    :cond_39
    sub-int/2addr v0, p2

    goto :goto_26

    :cond_3b
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v3

    if-ne v3, v2, :cond_45

    :goto_41
    if-ne v0, p2, :cond_50

    move v0, v2

    goto :goto_26

    :cond_45
    add-int/lit8 v1, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v1

    :cond_4d
    if-gtz p3, :cond_3b

    goto :goto_41

    :cond_50
    sub-int/2addr v0, p2

    goto :goto_26
.end method
