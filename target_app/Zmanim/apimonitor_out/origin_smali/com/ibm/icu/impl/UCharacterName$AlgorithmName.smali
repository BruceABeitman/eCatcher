.class final Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlgorithmName"
.end annotation


# static fields
.field static final TYPE_0_:I = 0x0

.field static final TYPE_1_:I = 0x1


# instance fields
.field private m_factor_:[C

.field private m_factorstring_:[B

.field private m_prefix_:Ljava/lang/String;

.field private m_rangeend_:I

.field private m_rangestart_:I

.field private m_type_:B

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;

.field private m_variant_:B


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    return v0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    return v0
.end method

.method private compareFactorString([IILjava/lang/String;I)Z
    .registers 13

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v3, v5

    if-eqz p1, :cond_8

    if-eq p2, v3, :cond_a

    :cond_8
    move v5, v7

    :goto_9
    return v5

    :cond_a
    const/4 v0, 0x0

    move v4, p4

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    :goto_f
    if-gt v2, v3, :cond_36

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v5, v2

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    invoke-static {v5, v0, v6}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {p3, v5, v4, v0}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v4

    if-gez v4, :cond_27

    move v5, v7

    goto :goto_9

    :cond_27
    if-eq v2, v3, :cond_33

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    sub-int v6, v1, v6

    invoke-static {v5, v0, v6}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_36
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_3e

    move v5, v7

    goto :goto_9

    :cond_3e
    const/4 v5, 0x1

    goto :goto_9
.end method

.method private getFactorString([II)Ljava/lang/String;
    .registers 11

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v3, v4

    if-eqz p1, :cond_7

    if-eq p2, v3, :cond_9

    :cond_7
    const/4 v4, 0x0

    :goto_8
    return-object v4

    :cond_9
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v4

    :try_start_c
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    :goto_1c
    if-gt v2, v3, :cond_43

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v5, v2

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    invoke-static {v5, v0, v6}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {v5, v6, v0}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v0

    if-eq v2, v3, :cond_40

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v2

    sub-int v6, v1, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v5, v0, v6}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v0

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_43
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    move-object v4, v5

    goto :goto_8

    :catchall_4c
    move-exception v5

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_4c

    throw v5
.end method


# virtual methods
.method add([II)I
    .registers 12

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    #calls: Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/String;)I
    invoke-static {p1, v5}, Lcom/ibm/icu/impl/UCharacterName;->access$200([ILjava/lang/String;)I

    move-result v3

    iget-byte v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v5, :pswitch_data_5a

    :cond_b
    :goto_b
    if-le v3, p2, :cond_57

    move v5, v3

    :goto_e
    return v5

    :pswitch_f
    iget-byte v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/2addr v3, v5

    goto :goto_b

    :pswitch_13
    iget-byte v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    const/4 v6, 0x1

    sub-int v2, v5, v6

    :goto_18
    if-lez v2, :cond_b

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v5, v2

    :goto_20
    if-lez v1, :cond_53

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v5

    :try_start_25
    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {v6, v7, v0}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v0

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #calls: Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I
    invoke-static {p1, v6}, Lcom/ibm/icu/impl/UCharacterName;->access$300([ILjava/lang/StringBuffer;)I

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v4, :cond_4c

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    :cond_4c
    monitor-exit v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    :catchall_50
    move-exception v6

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_50

    throw v6

    :cond_53
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_57
    move v5, p2

    goto :goto_e

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method appendName(ILjava/lang/StringBuffer;)V
    .registers 10

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v4, :pswitch_data_40

    :goto_a
    return-void

    :pswitch_b
    iget-byte v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-static {p1, v4, p2}, Lcom/ibm/icu/impl/Utility;->hex(IILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_11
    iget v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v3, p1, v4

    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v4

    :try_start_1a
    iget-byte v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    const/4 v6, 0x1

    sub-int v1, v5, v6

    :goto_1f
    if-lez v1, :cond_2f

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v5, v5, v1

    and-int/lit16 v0, v5, 0xff

    rem-int v5, v3, v0

    aput v5, v2, v1

    div-int/2addr v3, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_2f
    const/4 v5, 0x0

    aput v3, v2, v5

    iget-byte v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v2, v5}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->getFactorString([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v4

    goto :goto_a

    :catchall_3d
    move-exception v5

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_3d

    throw v5

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method contains(I)Z
    .registers 3

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getChar(Ljava/lang/String;)I
    .registers 14

    const/4 v9, 0x0

    const/4 v11, -0x1

    iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v6, :cond_1a

    iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    :cond_1a
    move v8, v11

    :goto_1b
    return v8

    :cond_1c
    iget-byte v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v8, :pswitch_data_74

    :cond_21
    move v8, v11

    goto :goto_1b

    :pswitch_23
    :try_start_23
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    iget v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v8, v7, :cond_21

    iget v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_33} :catch_37

    if-gt v7, v8, :cond_21

    move v8, v7

    goto :goto_1b

    :catch_37
    move-exception v8

    move-object v1, v8

    move v8, v11

    goto :goto_1b

    :pswitch_3b
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    :goto_3d
    iget v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt v0, v8, :cond_21

    iget v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v5, v0, v8

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v8

    :try_start_4a
    iget-byte v9, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    const/4 v10, 0x1

    sub-int v3, v9, v10

    :goto_4f
    if-lez v3, :cond_5f

    iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v9, v9, v3

    and-int/lit16 v2, v9, 0xff

    rem-int v9, v5, v2

    aput v9, v4, v3

    div-int/2addr v5, v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_4f

    :cond_5f
    const/4 v9, 0x0

    aput v5, v4, v9

    iget-byte v9, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v4, v9, p1, v6}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->compareFactorString([IILjava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6d

    monitor-exit v8

    move v8, v0

    goto :goto_1b

    :cond_6d
    monitor-exit v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :catchall_71
    move-exception v9

    monitor-exit v8
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_71

    throw v9

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_23
        :pswitch_3b
    .end packed-switch
.end method

.method setFactor([C)Z
    .registers 4

    array-length v0, p1

    iget-byte v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    if-ne v0, v1, :cond_9

    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method setFactorString([B)Z
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    const/4 v0, 0x1

    return v0
.end method

.method setInfo(IIBB)Z
    .registers 7

    const/4 v1, 0x1

    if-ltz p1, :cond_18

    if-gt p1, p2, :cond_18

    const v0, 0x10ffff

    if-gt p2, v0, :cond_18

    if-eqz p3, :cond_e

    if-ne p3, v1, :cond_18

    :cond_e
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    iput p2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    iput-byte p3, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    iput-byte p4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    move v0, v1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method setPrefix(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
