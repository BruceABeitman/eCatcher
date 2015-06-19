.class public final Lcom/ibm/icu/impl/UBiDiProps;
.super Ljava/lang/Object;
.source "UBiDiProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UBiDiProps$1;,
        Lcom/ibm/icu/impl/UBiDiProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final BIDI_CONTROL_SHIFT:I = 0xb

.field private static final CLASS_MASK:I = 0x1f

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ubidi.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ubidi"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final ESC_MIRROR_DELTA:I = -0x4

.field private static final FMT:[B = null

.field private static final IS_MIRRORED_SHIFT:I = 0xc

.field private static final IX_INDEX_TOP:I = 0x0

.field private static final IX_JG_LIMIT:I = 0x5

.field private static final IX_JG_START:I = 0x4

.field private static final IX_MAX_VALUES:I = 0xf

.field private static final IX_MIRROR_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final JOIN_CONTROL_SHIFT:I = 0xa

.field private static final JT_MASK:I = 0xe0

.field private static final JT_SHIFT:I = 0x5

.field private static final MAX_JG_MASK:I = 0xff0000

.field private static final MAX_JG_SHIFT:I = 0x10

.field private static final MIRROR_DELTA_SHIFT:I = 0xd

.field private static final MIRROR_INDEX_SHIFT:I = 0x15

.field private static gBdp:Lcom/ibm/icu/impl/UBiDiProps;

.field private static gBdpDummy:Lcom/ibm/icu/impl/UBiDiProps;


# instance fields
.field private indexes:[I

.field private jgArray:[B

.field private mirrors:[I

.field private trie:Lcom/ibm/icu/impl/CharTrie;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/UBiDiProps;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    sput-object v0, Lcom/ibm/icu/impl/UBiDiProps;->gBdpDummy:Lcom/ibm/icu/impl/UBiDiProps;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/ibm/icu/impl/UBiDiProps;->FMT:[B

    return-void

    :array_e
    .array-data 0x1
        0x42t
        0x69t
        0x44t
        0x69t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "data/icudt42b/ubidi.icu"

    invoke-static {v2}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UBiDiProps;->readData(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 5

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    aput v1, v0, v2

    new-instance v0, Lcom/ibm/icu/impl/CharTrie;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/ibm/icu/impl/CharTrie;-><init>(IILcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    return-void
.end method

.method private static final getClassFromProps(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method public static final declared-synchronized getDummy()Lcom/ibm/icu/impl/UBiDiProps;
    .registers 3

    const-class v0, Lcom/ibm/icu/impl/UBiDiProps;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ibm/icu/impl/UBiDiProps;->gBdpDummy:Lcom/ibm/icu/impl/UBiDiProps;

    if-nez v1, :cond_f

    new-instance v1, Lcom/ibm/icu/impl/UBiDiProps;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UBiDiProps;-><init>(Z)V

    sput-object v1, Lcom/ibm/icu/impl/UBiDiProps;->gBdpDummy:Lcom/ibm/icu/impl/UBiDiProps;

    :cond_f
    sget-object v1, Lcom/ibm/icu/impl/UBiDiProps;->gBdpDummy:Lcom/ibm/icu/impl/UBiDiProps;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final getFlagFromProps(II)Z
    .registers 3

    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static final getMirrorCodePoint(I)I
    .registers 2

    const v0, 0x1fffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static final getMirrorIndex(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x15

    return v0
.end method

.method public static final declared-synchronized getSingleton()Lcom/ibm/icu/impl/UBiDiProps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/ibm/icu/impl/UBiDiProps;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ibm/icu/impl/UBiDiProps;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ibm/icu/impl/UBiDiProps;

    invoke-direct {v1}, Lcom/ibm/icu/impl/UBiDiProps;-><init>()V

    sput-object v1, Lcom/ibm/icu/impl/UBiDiProps;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    :cond_e
    sget-object v1, Lcom/ibm/icu/impl/UBiDiProps;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private readData(Ljava/io/InputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Lcom/ibm/icu/impl/UBiDiProps;->FMT:[B

    new-instance v4, Lcom/ibm/icu/impl/UBiDiProps$IsAcceptable;

    invoke-direct {v4, p0, v5}, Lcom/ibm/icu/impl/UBiDiProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UBiDiProps;Lcom/ibm/icu/impl/UBiDiProps$1;)V

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-gez v0, :cond_1e

    new-instance v3, Ljava/io/IOException;

    const-string v4, "indexes[0] too small in ubidi.icu"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1e
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    iget-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v1, 0x1

    :goto_28
    if-ge v1, v0, :cond_35

    iget-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_35
    new-instance v3, Lcom/ibm/icu/impl/CharTrie;

    invoke-direct {v3, v2, v5}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    iget-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    if-lez v0, :cond_55

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    const/4 v1, 0x0

    :goto_48
    if-ge v1, v0, :cond_55

    iget-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_55
    iget-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    sub-int v0, v3, v4

    new-array v3, v0, [B

    iput-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    const/4 v1, 0x0

    :goto_66
    if-ge v1, v0, :cond_73

    iget-object v3, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_73
    return-void
.end method


# virtual methods
.method public final addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .registers 13

    new-instance v3, Lcom/ibm/icu/impl/TrieIterator;

    iget-object v9, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-direct {v3, v9}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V

    new-instance v1, Lcom/ibm/icu/util/RangeValueIterator$Element;

    invoke-direct {v1}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V

    :goto_c
    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget v9, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I

    invoke-virtual {p1, v9}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_c

    :cond_18
    iget-object v9, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v10, 0x3

    aget v5, v9, v10

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v5, :cond_30

    iget-object v9, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    aget v9, v9, v2

    invoke-static {v9}, Lcom/ibm/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p1, v0, v9}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_30
    iget-object v9, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v10, 0x4

    aget v8, v9, v10

    iget-object v9, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v10, 0x5

    aget v6, v9, v10

    sub-int v5, v6, v8

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v5, :cond_4f

    iget-object v9, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    aget-byte v4, v9, v2

    if-eq v4, v7, :cond_4a

    invoke-virtual {p1, v8}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move v7, v4

    :cond_4a
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_4f
    if-eqz v7, :cond_54

    invoke-virtual {p1, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_54
    return-void
.end method

.method public final getClass(I)I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UBiDiProps;->getClassFromProps(I)I

    move-result v0

    return v0
.end method

.method public final getJoiningGroup(I)I
    .registers 6

    iget-object v2, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x4

    aget v1, v2, v3

    iget-object v2, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x5

    aget v0, v2, v3

    if-gt v1, p1, :cond_17

    if-ge p1, v0, :cond_17

    iget-object v2, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    sub-int v3, p1, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public final getJoiningType(I)I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final getMaxValue(I)I
    .registers 5

    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/16 v2, 0xf

    aget v0, v1, v2

    sparse-switch p1, :sswitch_data_1a

    const/4 v1, -0x1

    :goto_a
    return v1

    :sswitch_b
    and-int/lit8 v1, v0, 0x1f

    goto :goto_a

    :sswitch_e
    const/high16 v1, 0xff

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    goto :goto_a

    :sswitch_14
    and-int/lit16 v1, v0, 0xe0

    shr-int/lit8 v1, v1, 0x5

    goto :goto_a

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1000 -> :sswitch_b
        0x1006 -> :sswitch_e
        0x1007 -> :sswitch_14
    .end sparse-switch
.end method

.method public final getMirror(I)I
    .registers 10

    iget-object v6, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v6, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v5

    int-to-short v6, v5

    shr-int/lit8 v1, v6, 0xd

    const/4 v6, -0x4

    if-eq v1, v6, :cond_f

    add-int v6, p1, v1

    :goto_e
    return v6

    :cond_f
    iget-object v6, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v7, 0x3

    aget v3, v6, v7

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_30

    iget-object v6, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    aget v4, v6, v2

    invoke-static {v4}, Lcom/ibm/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v0

    if-ne p1, v0, :cond_2e

    iget-object v6, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    invoke-static {v4}, Lcom/ibm/icu/impl/UBiDiProps;->getMirrorIndex(I)I

    move-result v7

    aget v6, v6, v7

    invoke-static {v6}, Lcom/ibm/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v6

    goto :goto_e

    :cond_2e
    if-ge p1, v0, :cond_32

    :cond_30
    move v6, p1

    goto :goto_e

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method public final isBidiControl(I)Z
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final isJoinControl(I)Z
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final isMirrored(I)Z
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method
