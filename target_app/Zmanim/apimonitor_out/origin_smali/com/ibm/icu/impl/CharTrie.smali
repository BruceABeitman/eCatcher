.class public Lcom/ibm/icu/impl/CharTrie;
.super Lcom/ibm/icu/impl/Trie;
.source "CharTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/CharTrie$FriendAgent;
    }
.end annotation


# instance fields
.field private m_data_:[C

.field private m_friendAgent_:Lcom/ibm/icu/impl/CharTrie$FriendAgent;

.field private m_initialValue_:C


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
    new-array v5, v1, [C

    iput-object v5, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    iput v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataLength_:I

    int-to-char v5, p1

    iput-char v5, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v3, :cond_24

    iget-object v5, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    int-to-char v6, p1

    aput-char v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_24
    if-eq p2, p1, :cond_43

    shr-int/lit8 v5, v3, 0x2

    int-to-char v0, v5

    const/16 v2, 0x6c0

    const/16 v4, 0x6e0

    :goto_2d
    if-ge v2, v4, :cond_36

    iget-object v5, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    aput-char v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_36
    add-int/lit8 v4, v3, 0x20

    move v2, v3

    :goto_39
    if-ge v2, v4, :cond_43

    iget-object v5, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    int-to-char v6, p2

    aput-char v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_43
    new-instance v5, Lcom/ibm/icu/impl/CharTrie$FriendAgent;

    invoke-direct {v5, p0}, Lcom/ibm/icu/impl/CharTrie$FriendAgent;-><init>(Lcom/ibm/icu/impl/CharTrie;)V

    iput-object v5, p0, Lcom/ibm/icu/impl/CharTrie;->m_friendAgent_:Lcom/ibm/icu/impl/CharTrie$FriendAgent;

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

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CharTrie;->isCharTrie()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data given does not belong to a char trie."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/ibm/icu/impl/CharTrie$FriendAgent;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CharTrie$FriendAgent;-><init>(Lcom/ibm/icu/impl/CharTrie;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_friendAgent_:Lcom/ibm/icu/impl/CharTrie$FriendAgent;

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/CharTrie;)[C
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    return-object v0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/CharTrie;)C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    instance-of v3, p1, Lcom/ibm/icu/impl/CharTrie;

    if-eqz v3, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/CharTrie;

    move-object v1, v0

    iget-char v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    iget-char v4, v1, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    :goto_16
    return v3

    :cond_17
    move v3, v5

    goto :goto_16

    :cond_19
    move v3, v5

    goto :goto_16
.end method

.method public final getBMPValue(C)C
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getBMPOffset(C)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public final getCodePointValue(I)C
    .registers 5

    if-ltz p1, :cond_18

    const v1, 0xd800

    if-ge p1, v1, :cond_18

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    shr-int/lit8 v2, p1, 0x5

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v2, p1, 0x1f

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char v1, v1, v0

    :goto_17
    return v1

    :cond_18
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointOffset(I)I

    move-result v0

    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char v1, v1, v0

    goto :goto_17

    :cond_23
    iget-char v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    goto :goto_17
.end method

.method protected final getInitialValue()I
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    return v0
.end method

.method public final getLatin1LinearValue(C)C
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    iget v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataOffset_:I

    add-int/lit8 v1, v1, 0x20

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final getLeadValue(C)C
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getLeadOffset(C)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected final getSurrogateOffset(CC)I
    .registers 6

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The field DataManipulate in this Trie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getLeadValue(C)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    if-lez v0, :cond_20

    and-int/lit16 v1, p2, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result v1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method public final getSurrogateValue(CC)C
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/CharTrie;->getSurrogateOffset(CC)I

    move-result v0

    if-lez v0, :cond_b

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char v1, v1, v0

    :goto_a
    return v1

    :cond_b
    iget-char v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    goto :goto_a
.end method

.method public final getTrailValue(IC)C
    .registers 6

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The field DataManipulate in this Trie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-interface {v1, p1}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    and-int/lit16 v2, p2, 0x3ff

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result v2

    aget-char v1, v1, v2

    :goto_1f
    return v1

    :cond_20
    iget-char v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    goto :goto_1f
.end method

.method protected final getValue(I)I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public putIndexData(Lcom/ibm/icu/impl/UCharacterProperty;)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_friendAgent_:Lcom/ibm/icu/impl/CharTrie$FriendAgent;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->setIndexData(Lcom/ibm/icu/impl/CharTrie$FriendAgent;)V

    return-void
.end method

.method protected final unserialize(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataOffset_:I

    iget v4, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataLength_:I

    add-int v1, v3, v4

    new-array v3, v1, [C

    iput-object v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1d

    iget-object v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C

    move-result v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    iget-object v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    iput-object v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    iget-object v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    iget v4, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataOffset_:I

    aget-char v3, v3, v4

    iput-char v3, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    return-void
.end method
