.class public Lcom/tencent/utils/DataConvert;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt2([B)I
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static bytesToInt([B)I
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static intToBytes(I)[B
    .registers 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static intToBytes2(I)[B
    .registers 5

    const/4 v3, 0x4

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_12

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method public static putBytes2Bytes([BI[BI)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_c

    add-int v1, p3, v0

    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    array-length v0, p0

    return v0
.end method

.method public static putBytes2Bytes([B[BI)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    add-int v1, p2, v0

    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    array-length v0, p0

    return v0
.end method

.method public static putInt2Bytes(I[BI)I
    .registers 7

    invoke-static {p0}, Lcom/tencent/utils/DataConvert;->intToBytes2(I)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_11

    add-int v2, p2, v0

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    array-length v0, v1

    return v0
.end method

.method public static putShort2Bytes(I[BI)I
    .registers 7

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/tencent/utils/DataConvert;->intToBytes2(I)[B

    move-result-object v0

    add-int/lit8 v1, p2, 0x0

    aget-byte v2, v0, v3

    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    aput-byte v0, p1, v1

    return v3
.end method

.method public static putString2Bytes(Ljava/lang/String;[BI)I
    .registers 7

    invoke-static {p0}, Lcom/tencent/utils/DataConvert;->string2bytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_11

    add-int v2, p2, v0

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    array-length v0, v1

    return v0
.end method

.method public static string2ascii(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_19

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return-object v2
.end method

.method public static string2bytes(Ljava/lang/String;)[B
    .registers 7

    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_2d
    new-array v3, v0, [B

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v0, :cond_48

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_48
    return-object v3
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_3b

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
