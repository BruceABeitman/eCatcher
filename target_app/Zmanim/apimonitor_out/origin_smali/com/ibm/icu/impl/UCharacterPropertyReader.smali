.class final Lcom/ibm/icu/impl/UCharacterPropertyReader;
.super Ljava/lang/Object;
.source "UCharacterPropertyReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID_:[B = null

.field private static final DATA_FORMAT_VERSION_:[B = null

.field private static final INDEX_SIZE_:I = 0x10


# instance fields
.field private m_additionalColumnsCount_:I

.field private m_additionalOffset_:I

.field private m_additionalVectorsOffset_:I

.field private m_caseOffset_:I

.field private m_dataInputStream_:Ljava/io/DataInputStream;

.field private m_exceptionOffset_:I

.field private m_propertyOffset_:I

.field private m_reservedOffset_:I

.field private m_unicodeVersion_:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->DATA_FORMAT_ID_:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->DATA_FORMAT_VERSION_:[B

    return-void

    :array_10
    .array-data 0x1
        0x55t
        0x50t
        0x72t
        0x6ft
    .end array-data

    :array_16
    .array-data 0x1
        0x5t
        0x0t
        0x5t
        0x2t
    .end array-data
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->DATA_FORMAT_ID_:[B

    invoke-static {p1, v0, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_unicodeVersion_:[B

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    aget-byte v0, p1, v2

    sget-object v1, Lcom/ibm/icu/impl/UCharacterPropertyReader;->DATA_FORMAT_VERSION_:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1d

    aget-byte v0, p1, v3

    sget-object v1, Lcom/ibm/icu/impl/UCharacterPropertyReader;->DATA_FORMAT_VERSION_:[B

    aget-byte v1, v1, v3

    if-ne v0, v1, :cond_1d

    aget-byte v0, p1, v4

    sget-object v1, Lcom/ibm/icu/impl/UCharacterPropertyReader;->DATA_FORMAT_VERSION_:[B

    aget-byte v1, v1, v4

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move v0, v2

    goto :goto_1c
.end method

.method protected read(Lcom/ibm/icu/impl/UCharacterProperty;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v0, 0x10

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_propertyOffset_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_exceptionOffset_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_caseOffset_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalOffset_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalVectorsOffset_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalColumnsCount_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_reservedOffset_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v0, v0, -0x3

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    shl-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    new-instance v3, Lcom/ibm/icu/impl/CharTrie;

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-direct {v3, v4, v5}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/CharTrie;

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_exceptionOffset_:I

    iget v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_propertyOffset_:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_caseOffset_:I

    iget v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_exceptionOffset_:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalOffset_:I

    iget v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_caseOffset_:I

    sub-int/2addr v3, v4

    shl-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalColumnsCount_:I

    if-lez v3, :cond_c5

    new-instance v3, Lcom/ibm/icu/impl/CharTrie;

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-direct {v3, v4, v5}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/CharTrie;

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_reservedOffset_:I

    iget v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalVectorsOffset_:I

    sub-int v2, v3, v4

    new-array v3, v2, [I

    iput-object v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    const/4 v1, 0x0

    :goto_b6
    if-ge v1, v2, :cond_c5

    iget-object v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_c5
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_additionalColumnsCount_:I

    iput v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_unicodeVersion_:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_unicodeVersion_:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_unicodeVersion_:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterPropertyReader;->m_unicodeVersion_:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v3

    iput-object v3, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;

    return-void
.end method
