.class public abstract Lcom/ibm/icu/impl/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/Trie$1;,
        Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;,
        Lcom/ibm/icu/impl/Trie$DataManipulate;
    }
.end annotation


# static fields
.field protected static final BMP_INDEX_LENGTH:I = 0x800

.field protected static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final HEADER_LENGTH_:I = 0x10

.field protected static final HEADER_OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final HEADER_OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final HEADER_OPTIONS_LATIN1_IS_LINEAR_MASK_:I = 0x200

.field private static final HEADER_OPTIONS_SHIFT_MASK_:I = 0xf

.field protected static final HEADER_SIGNATURE_:I = 0x54726965

.field protected static final INDEX_STAGE_1_SHIFT_:I = 0x5

.field protected static final INDEX_STAGE_2_SHIFT_:I = 0x2

.field protected static final INDEX_STAGE_3_MASK_:I = 0x1f

.field protected static final LEAD_INDEX_OFFSET_:I = 0x140

.field protected static final SURROGATE_BLOCK_BITS:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT:I = 0x20

.field protected static final SURROGATE_MASK_:I = 0x3ff


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

.field protected m_dataOffset_:I

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Trie;->checkHeader(I)Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    if-eqz p2, :cond_3d

    iput-object p2, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    :goto_24
    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    :goto_2b
    iput-boolean v2, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Trie;->unserialize(Ljava/io/InputStream;)V

    return-void

    :cond_3d
    new-instance v2, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Lcom/ibm/icu/impl/Trie$1;)V

    iput-object v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    goto :goto_24

    :cond_46
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method protected constructor <init>([CILcom/ibm/icu/impl/Trie$DataManipulate;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    if-eqz p3, :cond_1a

    iput-object p3, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    :goto_9
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    iput-object p1, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    iget-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    array-length v0, v0

    iput v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    return-void

    :cond_1a
    new-instance v0, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Lcom/ibm/icu/impl/Trie$1;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    goto :goto_9

    :cond_23
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private final checkHeader(I)Z
    .registers 5

    const/4 v2, 0x0

    const v0, 0x54726965

    if-eq p1, v0, :cond_8

    move v0, v2

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    :cond_18
    move v0, v2

    goto :goto_7

    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    instance-of v2, p1, Lcom/ibm/icu/impl/Trie;

    if-nez v2, :cond_c

    move v2, v4

    goto :goto_5

    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/Trie;

    move-object v1, v0

    iget-boolean v2, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v3, v1, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v2, v3, :cond_2e

    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    iget v3, v1, Lcom/ibm/icu/impl/Trie;->m_options_:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    iget v3, v1, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    iget-object v3, v1, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v5

    goto :goto_5

    :cond_2e
    move v2, v4

    goto :goto_5
.end method

.method protected final getBMPOffset(C)I
    .registers 3

    const v0, 0xd800

    if-lt p1, v0, :cond_11

    const v0, 0xdbff

    if-gt p1, v0, :cond_11

    const/16 v0, 0x140

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_10
.end method

.method protected final getCodePointOffset(I)I
    .registers 4

    const/4 v1, -0x1

    if-gez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    const v0, 0xd800

    if-ge p1, v0, :cond_11

    const/4 v0, 0x0

    int-to-char v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_4

    :cond_11
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_1b

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Trie;->getBMPOffset(C)I

    move-result v0

    goto :goto_4

    :cond_1b
    const v0, 0x10ffff

    if-gt p1, v0, :cond_2c

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 v1, p1, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result v0

    goto :goto_4

    :cond_2c
    move v0, v1

    goto :goto_4
.end method

.method protected abstract getInitialValue()I
.end method

.method protected final getLeadOffset(C)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0
.end method

.method protected final getRawOffset(IC)I
    .registers 5

    iget-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v1, p2, 0x5

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public getSerializedDataSize()I
    .registers 3

    const/16 v0, 0x10

    iget v1, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/Trie;->isCharTrie()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Trie;->isIntTrie()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method protected abstract getValue(I)I
.end method

.method protected final isCharTrie()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final isIntTrie()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isLatin1Linear()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    return v0
.end method

.method protected unserialize(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readChar()C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    return-void
.end method
