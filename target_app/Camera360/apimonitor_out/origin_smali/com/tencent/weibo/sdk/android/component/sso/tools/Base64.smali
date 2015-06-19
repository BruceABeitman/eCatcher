.class public Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    div-int/lit8 v7, v7, 0x8

    sub-int v3, v7, v4

    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_29

    return-object v5

    :cond_24
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_29
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->getValue(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x12

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->getValue(C)I

    move-result v8

    shl-int/lit8 v8, v8, 0xc

    add-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->getValue(C)I

    move-result v8

    shl-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->getValue(C)I

    move-result v8

    add-int v0, v7, v8

    const/4 v2, 0x0

    :goto_5a
    const/4 v7, 0x3

    if-ge v2, v7, :cond_62

    add-int v7, v6, v2

    array-length v8, v5

    if-lt v7, v8, :cond_67

    :cond_62
    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1d

    :cond_67
    add-int v7, v6, v2

    rsub-int/lit8 v8, v2, 0x2

    mul-int/lit8 v8, v8, 0x8

    shr-int v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_e
    invoke-static {p0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->encodeBlock([BI)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x3

    goto :goto_6
.end method

.method protected static encodeBlock([BI)[C
    .registers 14

    const/16 v11, 0x3d

    const/4 v10, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    array-length v9, p0

    sub-int/2addr v9, p1

    add-int/lit8 v7, v9, -0x1

    if-lt v7, v8, :cond_1f

    move v3, v8

    :goto_c
    const/4 v4, 0x0

    :goto_d
    if-le v4, v3, :cond_21

    new-array v1, v10, [C

    const/4 v4, 0x0

    :goto_12
    if-lt v4, v10, :cond_35

    const/4 v9, 0x1

    if-ge v7, v9, :cond_19

    aput-char v11, v1, v8

    :cond_19
    if-ge v7, v8, :cond_1e

    const/4 v8, 0x3

    aput-char v11, v1, v8

    :cond_1e
    return-object v1

    :cond_1f
    move v3, v7

    goto :goto_c

    :cond_21
    add-int v9, p1, v4

    aget-byte v0, p0, v9

    if-gez v0, :cond_33

    add-int/lit16 v5, v0, 0x100

    :goto_29
    rsub-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x8

    shl-int v9, v5, v9

    add-int/2addr v2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_33
    move v5, v0

    goto :goto_29

    :cond_35
    rsub-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x6

    ushr-int v9, v2, v9

    and-int/lit8 v6, v9, 0x3f

    invoke-static {v6}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->getChar(I)C

    move-result v9

    aput-char v9, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method

.method protected static getChar(I)C
    .registers 3

    const/16 v0, 0x3f

    if-ltz p0, :cond_c

    const/16 v1, 0x19

    if-gt p0, v1, :cond_c

    add-int/lit8 v0, p0, 0x41

    int-to-char v0, v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/16 v1, 0x1a

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x33

    if-gt p0, v1, :cond_1a

    add-int/lit8 v0, p0, -0x1a

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_b

    :cond_1a
    const/16 v1, 0x34

    if-lt p0, v1, :cond_28

    const/16 v1, 0x3d

    if-gt p0, v1, :cond_28

    add-int/lit8 v0, p0, -0x34

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_b

    :cond_28
    const/16 v1, 0x3e

    if-ne p0, v1, :cond_2f

    const/16 v0, 0x2b

    goto :goto_b

    :cond_2f
    if-ne p0, v0, :cond_b

    const/16 v0, 0x2f

    goto :goto_b
.end method

.method protected static getValue(C)I
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x41

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_a

    :cond_18
    const/16 v0, 0x30

    if-lt p0, v0, :cond_25

    const/16 v0, 0x39

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    goto :goto_a

    :cond_25
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2c

    const/16 v0, 0x3e

    goto :goto_a

    :cond_2c
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_33

    const/16 v0, 0x3f

    goto :goto_a

    :cond_33
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_39

    const/4 v0, 0x0

    goto :goto_a

    :cond_39
    const/4 v0, -0x1

    goto :goto_a
.end method
