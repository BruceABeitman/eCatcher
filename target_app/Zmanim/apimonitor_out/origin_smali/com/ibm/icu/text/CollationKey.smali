.class public final Lcom/ibm/icu/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollationKey$BoundMode;
    }
.end annotation


# static fields
.field private static final MERGE_SEPERATOR_:I = 0x2


# instance fields
.field private m_hashCode_:I

.field private m_key_:[B

.field private m_length_:I

.field private m_source_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ibm/icu/text/RawCollationKey;->releaseBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    return-void
.end method

.method private getLength()I
    .registers 4

    iget v2, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    :goto_6
    return v2

    :cond_7
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    array-length v1, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_14

    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_19

    move v1, v0

    :cond_14
    iput v1, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    iget v2, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    goto :goto_6

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/CollationKey;)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    and-int/lit16 v1, v3, 0xff

    iget-object v3, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    and-int/lit16 v2, v3, 0xff

    if-ge v1, v2, :cond_11

    const/4 v3, -0x1

    :goto_10
    return v3

    :cond_11
    if-le v1, v2, :cond_15

    const/4 v3, 0x1

    goto :goto_10

    :cond_15
    if-nez v1, :cond_19

    const/4 v3, 0x0

    goto :goto_10

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/ibm/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationKey;->compareTo(Lcom/ibm/icu/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/ibm/icu/text/CollationKey;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    if-nez p1, :cond_a

    move v2, v4

    goto :goto_5

    :cond_a
    move-object v1, p1

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_18

    move v2, v4

    goto :goto_5

    :cond_18
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_20

    move v2, v5

    goto :goto_5

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/ibm/icu/text/CollationKey;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/ibm/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationKey;->equals(Lcom/ibm/icu/text/CollationKey;)Z

    move-result v0

    goto :goto_5
.end method

.method public getBound(II)Lcom/ibm/icu/text/CollationKey;
    .registers 11

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-lez p2, :cond_8e

    :goto_6
    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    array-length v4, v4

    if-ge v1, v4, :cond_8e

    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_8e

    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v4, v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8b

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_2b

    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    array-length v4, v4

    if-eq v2, v4, :cond_2b

    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v2

    if-nez v4, :cond_8b

    :cond_2b
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    :goto_2e
    if-lez p2, :cond_59

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source collation key has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " strength level. Call getBound() again "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with noOfLevels < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_59
    add-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    invoke-static {v4, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    packed-switch p1, :pswitch_data_90

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal boundType argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_6f
    move v1, v2

    :goto_70
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v3, v1

    new-instance v4, Lcom/ibm/icu/text/CollationKey;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;[B)V

    return-object v4

    :pswitch_7b
    add-int/lit8 v1, v2, 0x1

    const/4 v4, 0x2

    aput-byte v4, v3, v2

    goto :goto_70

    :pswitch_81
    add-int/lit8 v1, v2, 0x1

    aput-byte v7, v3, v2

    add-int/lit8 v2, v1, 0x1

    aput-byte v7, v3, v1

    move v1, v2

    goto :goto_70

    :cond_8b
    move v1, v2

    goto/16 :goto_6

    :cond_8e
    move v2, v1

    goto :goto_2e

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_7b
        :pswitch_81
    .end packed-switch
.end method

.method public getSourceString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    iget v3, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    if-nez v3, :cond_e

    const/4 v3, 0x1

    iput v3, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    :cond_b
    :goto_b
    iget v3, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    return v3

    :cond_e
    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    array-length v3, v3

    shr-int/lit8 v2, v3, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_19
    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_3b
    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    goto :goto_b
.end method

.method public merge(Lcom/ibm/icu/text/CollationKey;)Lcom/ibm/icu/text/CollationKey;
    .registers 13

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz p1, :cond_a

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    move-result v8

    if-nez v8, :cond_12

    :cond_a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "CollationKey argument can not be null or of 0 length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_12
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    move-result v7

    iget v8, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x2

    new-array v2, v8, [B

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_23
    iget-object v8, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v0

    if-ltz v8, :cond_2f

    iget-object v8, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v0

    if-lt v8, v9, :cond_3c

    :cond_2f
    add-int/lit8 v4, v3, 0x1

    iget-object v8, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v8, v8, v0

    aput-byte v8, v2, v3

    move v0, v1

    move v3, v4

    goto :goto_23

    :cond_3c
    add-int/lit8 v4, v3, 0x1

    aput-byte v9, v2, v3

    move v3, v4

    :goto_41
    iget-object v8, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v5

    if-ltz v8, :cond_4d

    iget-object v8, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v5

    if-lt v8, v9, :cond_5a

    :cond_4d
    add-int/lit8 v4, v3, 0x1

    iget-object v8, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v8, v8, v5

    aput-byte v8, v2, v3

    move v5, v6

    move v3, v4

    goto :goto_41

    :cond_5a
    iget-object v8, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v0

    if-ne v8, v10, :cond_70

    iget-object v8, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v5

    if-ne v8, v10, :cond_70

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v3, 0x1

    aput-byte v10, v2, v3

    move v3, v4

    goto :goto_23

    :cond_70
    iget-object v8, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v0

    if-eqz v8, :cond_8a

    iget-object v8, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    iget v9, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    sub-int/2addr v9, v0

    invoke-static {v8, v0, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7e
    :goto_7e
    array-length v8, v2

    sub-int/2addr v8, v10

    const/4 v9, 0x0

    aput-byte v9, v2, v8

    new-instance v8, Lcom/ibm/icu/text/CollationKey;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;[B)V

    return-object v8

    :cond_8a
    iget-object v8, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v8, v5

    if-eqz v8, :cond_7e

    iget-object v8, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    iget v9, p1, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    sub-int/2addr v9, v5

    invoke-static {v8, v5, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7e
.end method

.method public toByteArray()[B
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
