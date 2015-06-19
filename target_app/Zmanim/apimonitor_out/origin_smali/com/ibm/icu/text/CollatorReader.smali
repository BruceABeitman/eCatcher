.class final Lcom/ibm/icu/text/CollatorReader;
.super Ljava/lang/Object;
.source "CollatorReader.java"


# static fields
.field private static final DATA_FORMAT_ID_:[B = null

.field private static final DATA_FORMAT_VERSION_:[B = null

.field private static final INVERSE_UCA_AUTHENTICATE_:Lcom/ibm/icu/impl/ICUBinary$Authenticate; = null

.field private static final INVERSE_UCA_DATA_FORMAT_ID_:[B = null

.field private static final INVERSE_UCA_DATA_FORMAT_VERSION_:[B = null

.field private static final UCA_AUTHENTICATE_:Lcom/ibm/icu/impl/ICUBinary$Authenticate; = null

.field private static final WRONG_UNICODE_VERSION_ERROR_:Ljava/lang/String; = "Unicode version in binary image is not compatible with the current Unicode version"


# instance fields
.field private m_UCAValuesSize_:I

.field private m_contractionCESize_:I

.field private m_contractionEndSize_:I

.field private m_contractionIndexSize_:I

.field private m_dataInputStream_:Ljava/io/DataInputStream;

.field private m_expansionEndCEMaxSizeSize_:I

.field private m_expansionEndCESize_:I

.field private m_expansionSize_:I

.field private m_headerSize_:I

.field private m_optionSize_:I

.field private m_size_:I

.field private m_unsafeSize_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-instance v0, Lcom/ibm/icu/text/CollatorReader$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollatorReader$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CollatorReader;->UCA_AUTHENTICATE_:Lcom/ibm/icu/impl/ICUBinary$Authenticate;

    new-instance v0, Lcom/ibm/icu/text/CollatorReader$2;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollatorReader$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CollatorReader;->INVERSE_UCA_AUTHENTICATE_:Lcom/ibm/icu/impl/ICUBinary$Authenticate;

    new-array v0, v1, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/ibm/icu/text/CollatorReader;->DATA_FORMAT_VERSION_:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_32

    sput-object v0, Lcom/ibm/icu/text/CollatorReader;->DATA_FORMAT_ID_:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_38

    sput-object v0, Lcom/ibm/icu/text/CollatorReader;->INVERSE_UCA_DATA_FORMAT_VERSION_:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/ibm/icu/text/CollatorReader;->INVERSE_UCA_DATA_FORMAT_ID_:[B

    return-void

    :array_2c
    .array-data 0x1
        0x2t
        0x2t
        0x0t
        0x0t
    .end array-data

    :array_32
    .array-data 0x1
        0x55t
        0x43t
        0x6ft
        0x6ct
    .end array-data

    :array_38
    .array-data 0x1
        0x2t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_3e
    .array-data 0x1
        0x49t
        0x6et
        0x76t
        0x43t
    .end array-data
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/CollatorReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2b

    sget-object v2, Lcom/ibm/icu/text/CollatorReader;->DATA_FORMAT_ID_:[B

    sget-object v3, Lcom/ibm/icu/text/CollatorReader;->UCA_AUTHENTICATE_:Lcom/ibm/icu/impl/ICUBinary$Authenticate;

    invoke-static {p1, v2, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    move-result-object v1

    invoke-static {}, Lcom/ibm/icu/lang/UCharacter;->getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v3

    if-ne v2, v3, :cond_23

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v3

    if-eq v2, v3, :cond_2b

    :cond_23
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unicode version in binary image is not compatible with the current Unicode version"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    sget-object v0, Lcom/ibm/icu/text/CollatorReader;->DATA_FORMAT_VERSION_:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    sget-object v0, Lcom/ibm/icu/text/CollatorReader;->INVERSE_UCA_DATA_FORMAT_VERSION_:[B

    return-object v0
.end method

.method static getInverseUCA()Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "data/icudt42b/coll/invuca.icu"

    invoke-static {v3}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    const v3, 0x1adb0

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v0}, Lcom/ibm/icu/text/CollatorReader;->readInverseUCA(Ljava/io/InputStream;)Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2
.end method

.method static initRBC(Lcom/ibm/icu/text/RuleBasedCollator;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10c

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lcom/ibm/icu/text/CollatorReader;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/ibm/icu/text/CollatorReader;-><init>(Ljava/io/InputStream;Z)V

    array-length v4, p1

    const/16 v5, 0x10c

    if-le v4, v5, :cond_1c

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/ibm/icu/text/CollatorReader;->readImp(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;)[C

    :goto_1b
    return-void

    :cond_1c
    invoke-direct {v3, p0}, Lcom/ibm/icu/text/CollatorReader;->readHeader(Lcom/ibm/icu/text/RuleBasedCollator;)V

    invoke-direct {v3, p0}, Lcom/ibm/icu/text/CollatorReader;->readOptions(Lcom/ibm/icu/text/RuleBasedCollator;)V

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->setWithUCATables()V

    goto :goto_1b
.end method

.method static read(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;)[C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "data/icudt42b/coll/ucadata.icu"

    invoke-static {v4}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    const v4, 0x15f90

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Lcom/ibm/icu/text/CollatorReader;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/CollatorReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, p0, p1}, Lcom/ibm/icu/text/CollatorReader;->readImp(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;)[C

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object v3
.end method

.method private readHeader(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_size_:I

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_headerSize_:I

    const/16 v6, 0x8

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    const-wide/16 v9, 0x4

    invoke-virtual {v8, v9, v10}, Ljava/io/DataInputStream;->skip(J)J

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8, v11}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8, v11}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8, v11}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    iput-boolean v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_isJamoSpecial_:Z

    add-int/lit8 v6, v6, 0x1

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v6, v6, 0x3

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/ibm/icu/text/CollatorReader;->readVersion(Ljava/io/DataInputStream;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v8

    iput-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_version_:Lcom/ibm/icu/util/VersionInfo;

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/ibm/icu/text/CollatorReader;->readVersion(Ljava/io/DataInputStream;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v8

    iput-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/ibm/icu/text/CollatorReader;->readVersion(Ljava/io/DataInputStream;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v8

    iput-object v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_UCD_version_:Lcom/ibm/icu/util/VersionInfo;

    add-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v6, v6, 0x20

    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    const/16 v9, 0x38

    invoke-virtual {v8, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v6, v6, 0x38

    iget v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_headerSize_:I

    if-ge v8, v6, :cond_d2

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Internal Error: Header size error"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d2
    iget-object v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    iget v9, p0, Lcom/ibm/icu/text/CollatorReader;->m_headerSize_:I

    sub-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    iget v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    if-nez v8, :cond_e1

    iput v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    move v1, v5

    :cond_e1
    iget v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I

    iget v9, p0, Lcom/ibm/icu/text/CollatorReader;->m_headerSize_:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_optionSize_:I

    iget v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    iget v9, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionSize_:I

    iget v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    sub-int v8, v5, v1

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionCESize_:I

    sub-int v8, v4, v3

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCESize_:I

    sub-int v8, v7, v4

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCEMaxSizeSize_:I

    sub-int v8, v2, v7

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_unsafeSize_:I

    iget v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_size_:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_UCAValuesSize_:I

    iget v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_size_:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionEndSize_:I

    iget v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    shr-int/lit8 v8, v8, 0x1

    iput v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionOffset_:I

    iget v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I

    shr-int/lit8 v8, v8, 0x2

    iput v8, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionOffset_:I

    return-void
.end method

.method private readImp(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;)[C
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CollatorReader;->readHeader(Lcom/ibm/icu/text/RuleBasedCollator;)V

    iget v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_headerSize_:I

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CollatorReader;->readOptions(Lcom/ibm/icu/text/RuleBasedCollator;)V

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_optionSize_:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionSize_:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionSize_:I

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionSize_:I

    new-array v5, v5, [I

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    const/4 v0, 0x0

    :goto_1a
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionSize_:I

    if-ge v0, v5, :cond_2b

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansion_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionSize_:I

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    if-lez v5, :cond_7a

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    shr-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    new-array v5, v5, [C

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    const/4 v0, 0x0

    :goto_41
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    if-ge v0, v5, :cond_52

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionIndex_:[C

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readChar()C

    move-result v6

    aput-char v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_52
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionIndexSize_:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionCESize_:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionCESize_:I

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionCESize_:I

    new-array v5, v5, [I

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    const/4 v0, 0x0

    :goto_64
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionCESize_:I

    if-ge v0, v5, :cond_75

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionCE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_75
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionCESize_:I

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    :cond_7a
    new-instance v5, Lcom/ibm/icu/impl/IntTrie;

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-static {}, Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;->getInstance()Lcom/ibm/icu/text/RuleBasedCollator$DataManipulate;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ibm/icu/impl/IntTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/IntTrie;->isLatin1Linear()Z

    move-result v5

    if-nez v5, :cond_97

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Data corrupted, Collator Tries expected to have linear latin one data arrays"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_97
    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_trie_:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/IntTrie;->getSerializedDataSize()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCESize_:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCESize_:I

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCESize_:I

    new-array v5, v5, [I

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    const/4 v0, 0x0

    :goto_ab
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCESize_:I

    if-ge v0, v5, :cond_bc

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    :cond_bc
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCESize_:I

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCEMaxSizeSize_:I

    new-array v5, v5, [B

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B

    const/4 v0, 0x0

    :goto_c8
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCEMaxSizeSize_:I

    if-ge v0, v5, :cond_d9

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_expansionEndCEMaxSize_:[B

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    :cond_d9
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_expansionEndCEMaxSizeSize_:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_unsafeSize_:I

    new-array v5, v5, [B

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B

    const/4 v0, 0x0

    :goto_e3
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_unsafeSize_:I

    if-ge v0, v5, :cond_f4

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_unsafe_:[B

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e3

    :cond_f4
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_unsafeSize_:I

    add-int/2addr v2, v5

    if-eqz p2, :cond_100

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionEndSize_:I

    iget v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_UCAValuesSize_:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionEndSize_:I

    :cond_100
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionEndSize_:I

    new-array v5, v5, [B

    iput-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B

    const/4 v0, 0x0

    :goto_107
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionEndSize_:I

    if-ge v0, v5, :cond_118

    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_contractionEnd_:[B

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    :cond_118
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_contractionEndSize_:I

    add-int/2addr v2, v5

    if-eqz p2, :cond_2f0

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TERTIARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    const/4 v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TERTIARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_TERTIARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_TERTIARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_PRIMARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_PRIMARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_SECONDARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_SECONDARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_SECONDARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_SECONDARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_PRIMARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_PRIMARY_IGNORABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_NON_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_NON_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_NON_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_NON_VARIABLE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->RESET_TOP_VALUE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->RESET_TOP_VALUE_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_IMPLICIT_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_IMPLICIT_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_IMPLICIT_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_IMPLICIT_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TRAILING_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->FIRST_TRAILING_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_TRAILING_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v8

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->LAST_TRAILING_:[I

    iget-object v6, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v9

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_TOP_MIN_:I

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MIN_:I

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_IMPLICIT_MAX_:I

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_TRAILING_MIN_:I

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_TRAILING_MAX_:I

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_SPECIAL_MIN_:I

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p2, Lcom/ibm/icu/text/RuleBasedCollator$UCAConstants;->PRIMARY_SPECIAL_MAX_:I

    add-int/lit8 v1, v1, 0x4

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_UCAValuesSize_:I

    sub-int/2addr v5, v1

    shr-int/lit8 v4, v5, 0x1

    new-array v3, v4, [C

    const/4 v0, 0x0

    :goto_2d2
    if-ge v0, v4, :cond_2df

    iget-object v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    aput-char v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d2

    :cond_2df
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_UCAValuesSize_:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_size_:I

    if-eq v2, v5, :cond_2ee

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Internal Error: Data file size error"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2ee
    move-object v5, v3

    :goto_2ef
    return-object v5

    :cond_2f0
    iget v5, p0, Lcom/ibm/icu/text/CollatorReader;->m_size_:I

    if-eq v2, v5, :cond_2fc

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Internal Error: Data file size error"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2fc
    const/4 v5, 0x0

    goto :goto_2ef
.end method

.method private static readInverseUCA(Ljava/io/InputStream;)Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v8, Lcom/ibm/icu/text/CollatorReader;->INVERSE_UCA_DATA_FORMAT_ID_:[B

    sget-object v9, Lcom/ibm/icu/text/CollatorReader;->INVERSE_UCA_AUTHENTICATE_:Lcom/ibm/icu/impl/ICUBinary$Authenticate;

    invoke-static {p0, v8, v9}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    move-result-object v1

    invoke-static {}, Lcom/ibm/icu/lang/UCharacter;->getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    const/4 v8, 0x0

    aget-byte v8, v1, v8

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v9

    if-ne v8, v9, :cond_1e

    const/4 v8, 0x1

    aget-byte v8, v1, v8

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v9

    if-eq v8, v9, :cond_26

    :cond_1e
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unicode version in binary image is not compatible with the current Unicode version"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_26
    new-instance v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;

    invoke-direct {v5}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;-><init>()V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-static {v4}, Lcom/ibm/icu/text/CollatorReader;->readVersion(Ljava/io/DataInputStream;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v8

    iput-object v8, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_UCA_version_:Lcom/ibm/icu/util/VersionInfo;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    mul-int/lit8 v6, v7, 0x3

    new-array v8, v6, [I

    iput-object v8, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    new-array v8, v2, [C

    iput-object v8, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_continuations_:[C

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v6, :cond_64

    iget-object v8, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_table_:[I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_64
    const/4 v3, 0x0

    :goto_65
    if-ge v3, v2, :cond_72

    iget-object v8, v5, Lcom/ibm/icu/text/CollationParsedRuleBuilder$InverseUCA;->m_continuations_:[C

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readChar()C

    move-result v9

    aput-char v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_72
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    return-object v5
.end method

.method private readOptions(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultVariableTopValue_:I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_91

    move v2, v5

    :goto_18
    iput-boolean v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsFrenchCollation_:Z

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_93

    move v2, v5

    :goto_27
    iput-boolean v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsAlternateHandlingShifted_:Z

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultCaseFirst_:I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_95

    move v2, v5

    :goto_3e
    iput-boolean v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsCaseLevel_:Z

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    if-ne v1, v6, :cond_97

    const/16 v1, 0x11

    :goto_4e
    iput v1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultDecomposition_:I

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultStrength_:I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_9a

    move v2, v5

    :goto_63
    iput-boolean v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsHiragana4_:Z

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_9c

    move v2, v5

    :goto_70
    iput-boolean v2, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_defaultIsNumericCollation_:Z

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    add-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_dataInputStream_:Ljava/io/DataInputStream;

    iget v3, p0, Lcom/ibm/icu/text/CollatorReader;->m_optionSize_:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    iget v2, p0, Lcom/ibm/icu/text/CollatorReader;->m_optionSize_:I

    if-ge v2, v0, :cond_9e

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Internal Error: Option size error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_91
    move v2, v4

    goto :goto_18

    :cond_93
    move v2, v4

    goto :goto_27

    :cond_95
    move v2, v4

    goto :goto_3e

    :cond_97
    const/16 v1, 0x10

    goto :goto_4e

    :cond_9a
    move v2, v4

    goto :goto_63

    :cond_9c
    move v2, v4

    goto :goto_70

    :cond_9e
    return-void
.end method

.method protected static readVersion(Ljava/io/DataInputStream;)Lcom/ibm/icu/util/VersionInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-array v1, v2, [B

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v6

    aget-byte v2, v1, v3

    aget-byte v3, v1, v4

    aget-byte v4, v1, v5

    aget-byte v5, v1, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method
