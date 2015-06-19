.class public Lcom/ibm/icu/impl/IntTrie;
.super Lcom/ibm/icu/impl/Trie;
.source "IntTrie.java"


# instance fields
.field private m_data_:[I

.field private m_initialValue_:I


# direct methods
.method public constructor <init>(IILcom/ibm/icu/impl/Trie$DataManipulate;)V
    .registers 11

    const/16 v5, 0x820

    new-array v5, v5, [C

    const/16 v6, 0x200

    invoke-direct {p0, v5, v6, p3}, Lcom/ibm/icu/impl/Trie;-><init>([CILcom/ibm/icu/impl/Trie$DataManipulate;)V

    const/16 v3, 0x100

    move v1, v3

    if-eq p2, p1, :cond_10

    add-int/lit8 v1, v1, 0x20

    :cond_10
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    iput v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    iput p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v3, :cond_22

    iget-object v5, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aput p1, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_22
    if-eq p2, p1, :cond_40

    shr-int/lit8 v5, v3, 0x2

    int-to-char v0, v5

    const/16 v2, 0x6c0

    const/16 v4, 0x6e0

    :goto_2b
    if-ge v2, v4, :cond_34

    iget-object v5, p0, Lcom/ibm/icu/impl/IntTrie;->m_index_:[C

    aput-char v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_34
    add-int/lit8 v4, v3, 0x20

    move v2, v3

    :goto_37
    if-ge v2, v4, :cond_40

    iget-object v5, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aput p2, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_40
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Trie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/IntTrie;->isIntTrie()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data given does not belong to a int trie."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method constructor <init>([C[IIILcom/ibm/icu/impl/Trie$DataManipulate;)V
    .registers 7

    invoke-direct {p0, p1, p4, p5}, Lcom/ibm/icu/impl/Trie;-><init>([CILcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object p2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    array-length v0, v0

    iput v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    iput p3, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    instance-of v3, p1, Lcom/ibm/icu/impl/IntTrie;

    if-eqz v3, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/IntTrie;

    move-object v1, v0

    iget v3, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    iget v4, v1, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    if-ne v3, v4, :cond_1f

    iget-object v3, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    iget-object v4, v1, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_1f
    move v3, v5

    :goto_20
    return v3

    :cond_21
    const/4 v3, 0x1

    goto :goto_20

    :cond_23
    move v3, v5

    goto :goto_20
.end method

.method public final getBMPValue(C)I
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getBMPOffset(C)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getCodePointValue(I)I
    .registers 5

    if-ltz p1, :cond_18

    const v1, 0xd800

    if-ge p1, v1, :cond_18

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_index_:[C

    shr-int/lit8 v2, p1, 0x5

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    :goto_17
    return v1

    :cond_18
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getCodePointOffset(I)I

    move-result v0

    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    goto :goto_17

    :cond_23
    iget v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    goto :goto_17
.end method

.method protected final getInitialValue()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return v0
.end method

.method public final getLatin1LinearValue(C)I
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    add-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    return v0
.end method

.method public final getLeadValue(C)I
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getLeadOffset(C)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected final getSurrogateOffset(CC)I
    .registers 6

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The field DataManipulate in this Trie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    if-lez v0, :cond_20

    and-int/lit16 v1, p2, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/IntTrie;->getRawOffset(IC)I

    move-result v1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method public final getSurrogateValue(CC)I
    .registers 6

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument characters do not form a supplementary character"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/IntTrie;->getSurrogateOffset(CC)I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget v1, v1, v0

    :goto_1e
    return v1

    :cond_1f
    iget v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    goto :goto_1e
.end method

.method public final getTrailValue(IC)I
    .registers 6

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The field DataManipulate in this Trie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-interface {v1, p1}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    and-int/lit16 v2, p2, 0x3ff

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/impl/IntTrie;->getRawOffset(IC)I

    move-result v2

    aget v1, v1, v2

    :goto_1f
    return v1

    :cond_20
    iget v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    goto :goto_1f
.end method

.method protected final getValue(I)I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final unserialize(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->unserialize(Ljava/io/InputStream;)V

    iget v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_f
    iget v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    iget-object v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return-void
.end method
