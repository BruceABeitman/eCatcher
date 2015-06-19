.class Lcom/ibm/icu/impl/UPropertyAliases$Builder;
.super Lcom/ibm/icu/impl/ICUBinaryStream;
.source "UPropertyAliases.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UPropertyAliases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private nameGroup_map:[S

.field private stringPool_map:[S

.field private valueMap_map:[S


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUBinaryStream;-><init>([B)V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/UPropertyAliases$Builder;[S)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroupOffsetToIndex([S)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/UPropertyAliases$Builder;[S)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMapOffsetToIndex([S)V

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/UPropertyAliases$Builder;)[S
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMap_map:[S

    return-object v0
.end method

.method static synthetic access$400(Lcom/ibm/icu/impl/UPropertyAliases$Builder;S)S
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringOffsetToIndex(S)S

    move-result v0

    return v0
.end method

.method private nameGroupOffsetToIndex(S)S
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroup_map:[S

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroup_map:[S

    aget-short v1, v1, v0

    if-ne v1, p1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_1

    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map name group offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nameGroupOffsetToIndex([S)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    aget-short v1, p1, v0

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroupOffsetToIndex(S)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method private stringOffsetToIndex(S)S
    .registers 7

    move v1, p1

    if-gez v1, :cond_4

    neg-int v1, v1

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringPool_map:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringPool_map:[S

    aget-short v2, v2, v0

    if-ne v2, v1, :cond_17

    if-gez p1, :cond_15

    neg-int v2, v0

    :goto_13
    int-to-short v2, v2

    return v2

    :cond_15
    move v2, v0

    goto :goto_13

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t map string pool offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private valueMapOffsetToIndex(S)S
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMap_map:[S

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMap_map:[S

    aget-short v1, v1, v0

    if-ne v1, p1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_1

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map value map offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private valueMapOffsetToIndex([S)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    aget-short v1, p1, v0

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMapOffsetToIndex(S)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method


# virtual methods
.method public readNameGroupPool(SS)[S
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V

    move v2, p1

    new-array v1, p2, [S

    new-array v3, p2, [S

    iput-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroup_map:[S

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_21

    iget-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroup_map:[S

    aput-short v2, v3, v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readShort()S

    move-result v3

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringOffsetToIndex(S)S

    move-result v3

    aput-short v3, v1, v0

    add-int/lit8 v3, v2, 0x2

    int-to-short v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    invoke-static {}, Lcom/ibm/icu/impl/UPropertyAliases;->access$500()Z

    move-result v3

    if-eqz v3, :cond_6c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read nameGroupPool x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-short v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-short v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-short v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6c
    return-object v1
.end method

.method public readStringPool(SS)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V

    add-int/lit8 v5, p2, 0x1

    new-array v4, v5, [Ljava/lang/String;

    add-int/lit8 v5, p2, 0x1

    new-array v5, v5, [S

    iput-object v5, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringPool_map:[S

    move v3, p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringPool_map:[S

    aput-short v6, v5, v6

    const/4 v2, 0x1

    :goto_19
    if-gt v2, p2, :cond_40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_1e
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readUnsignedByte()I

    move-result v5

    int-to-char v1, v5

    if-nez v1, :cond_3c

    iget-object v5, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->stringPool_map:[S

    aput-short v3, v5, v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v3

    int-to-short v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_40
    invoke-static {}, Lcom/ibm/icu/impl/UPropertyAliases;->access$500()Z

    move-result v5

    if-eqz v5, :cond_8b

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read stringPool x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8b
    return-object v4
.end method

.method public setupValueMap_map(SS)V
    .registers 6

    new-array v1, p2, [S

    iput-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMap_map:[S

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_12

    iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->valueMap_map:[S

    mul-int/lit8 v2, v0, 0x6

    add-int/2addr v2, p1

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    return-void
.end method
