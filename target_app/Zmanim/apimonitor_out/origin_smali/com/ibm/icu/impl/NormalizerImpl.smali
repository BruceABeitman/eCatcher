.class public final Lcom/ibm/icu/impl/NormalizerImpl;
.super Ljava/lang/Object;
.source "NormalizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/NormalizerImpl$1;,
        Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;,
        Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;,
        Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;,
        Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;,
        Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;,
        Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;,
        Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;,
        Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;,
        Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;,
        Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;
    }
.end annotation


# static fields
.field private static final AUX_COMP_EX_MASK:I = 0x400

.field private static final AUX_COMP_EX_SHIFT:I = 0xa

.field private static final AUX_FNC_MASK:I = 0x3ff

.field private static final AUX_MAX_FNC:I = 0x400

.field private static final AUX_NFC_SKIPPABLE_F_SHIFT:I = 0xc

.field private static final AUX_NFC_SKIP_F_MASK:J = 0x1000L

.field private static final AUX_UNSAFE_MASK:I = 0x800

.field private static final AUX_UNSAFE_SHIFT:I = 0xb

.field public static final BEFORE_PRI_29:I = 0x100

.field private static final BMP_INDEX_LENGTH:I = 0x800

.field static final CANON_SET_BMP_IS_INDEX:I = 0x4000

.field static final CANON_SET_BMP_MASK:I = 0xc000

.field static final CANON_SET_BMP_TABLE_INDEX:I = 0x2

.field static final CANON_SET_INDICIES_INDEX:I = 0x0

.field static final CANON_SET_MAX_CANON_SETS:I = 0x4000

.field static final CANON_SET_START_SETS_INDEX:I = 0x1

.field static final CANON_SET_SUPP_TABLE_INDEX:I = 0x3

.field public static final CC_MASK:I = 0xff00

.field private static final CC_SHIFT:I = 0x8

.field public static final COMBINES_ANY:I = 0xc0

.field private static final COMBINES_BACK:I = 0x80

.field private static final COMBINES_FWD:I = 0x40

.field public static final COMPARE_EQUIV:I = 0x80000

.field private static final DATA_BUFFER_SIZE:I = 0x61a8

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "data/icudt42b/unorm.icu"

.field private static final DECOMP_FLAG_LENGTH_HAS_CC:I = 0x80

.field private static final DECOMP_LENGTH_MASK:I = 0x7f

.field private static final EXTRA_SHIFT:I = 0x10

.field public static final HANGUL_BASE:I = 0xac00

.field public static final HANGUL_COUNT:I = 0x2ba4

.field static final IMPL:Lcom/ibm/icu/impl/NormalizerImpl; = null

.field static final INDEX_AUX_TRIE_SIZE:I = 0xb

.field static final INDEX_CANON_SET_COUNT:I = 0xc

.field static final INDEX_CHAR_COUNT:I = 0x1

.field static final INDEX_COMBINE_BACK_COUNT:I = 0x5

.field static final INDEX_COMBINE_BOTH_COUNT:I = 0x4

.field static final INDEX_COMBINE_DATA_COUNT:I = 0x2

.field static final INDEX_COMBINE_FWD_COUNT:I = 0x3

.field static final INDEX_FCD_TRIE_SIZE:I = 0xa

.field public static final INDEX_MIN_NFC_NO_MAYBE:I = 0x6

.field public static final INDEX_MIN_NFD_NO_MAYBE:I = 0x8

.field public static final INDEX_MIN_NFKC_NO_MAYBE:I = 0x7

.field public static final INDEX_MIN_NFKD_NO_MAYBE:I = 0x9

.field static final INDEX_TOP:I = 0x20

.field static final INDEX_TRIE_SIZE:I = 0x0

.field public static final JAMO_L_BASE:I = 0x1100

.field public static final JAMO_L_COUNT:I = 0x13

.field public static final JAMO_T_BASE:I = 0x11a7

.field public static final JAMO_T_COUNT:I = 0x1c

.field public static final JAMO_V_BASE:I = 0x1161

.field public static final JAMO_V_COUNT:I = 0x15

.field private static final JAMO_V_TOP:J = 0xfff30000L

.field private static final MAX_BUFFER_SIZE:I = 0x14

.field private static final MIN_HANGUL:J = 0xfff00000L

.field private static final MIN_SPECIAL:J = 0xfc000000L

.field public static final MIN_WITH_LEAD_CC:I = 0x300

.field private static final NX_CJK_COMPAT:I = 0x2

.field private static final NX_HANGUL:I = 0x1

.field public static final OPTIONS_COMPAT:I = 0x1000

.field public static final OPTIONS_COMPOSE_CONTIGUOUS:I = 0x2000

.field private static final OPTIONS_NX_MASK:I = 0x1f

.field public static final OPTIONS_SETS_MASK:I = 0xff

.field private static final OPTIONS_UNICODE_MASK:I = 0xe0

.field public static final QC_ANY_MAYBE:I = 0x30

.field public static final QC_ANY_NO:I = 0xf

.field public static final QC_MASK:I = 0x3f

.field public static final QC_MAYBE:I = 0x10

.field public static final QC_NFC:I = 0x11

.field public static final QC_NFD:I = 0x4

.field public static final QC_NFKC:I = 0x22

.field public static final QC_NFKD:I = 0x8

.field static final SET_INDEX_CANON_BMP_TABLE_LENGTH:I = 0x1

.field static final SET_INDEX_CANON_SETS_LENGTH:I = 0x0

.field static final SET_INDEX_CANON_SUPP_TABLE_LENGTH:I = 0x2

.field static final SET_INDEX_TOP:I = 0x20

.field private static final SURROGATES_TOP:J = 0xfff00000L

.field private static final SURROGATE_BLOCK_BITS:I = 0x5

.field static final UNSIGNED_BYTE_MASK:I = 0xff

.field static final UNSIGNED_INT_MASK:J = 0xffffffffL

.field private static auxTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;

.field private static canonStartSets:[Ljava/lang/Object;

.field private static combiningTable:[C

.field private static extraData:[C

.field private static fcdTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;

.field private static indexes:[I

.field private static isDataLoaded:Z

.field private static isFormatVersion_2_1:Z

.field private static isFormatVersion_2_2:Z

.field private static normTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;

.field private static final nxCache:[Lcom/ibm/icu/text/UnicodeSet;

.field private static unicodeVersion:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    new-instance v1, Lcom/ibm/icu/impl/NormalizerImpl;

    invoke-direct {v1}, Lcom/ibm/icu/impl/NormalizerImpl;-><init>()V

    sput-object v1, Lcom/ibm/icu/impl/NormalizerImpl;->IMPL:Lcom/ibm/icu/impl/NormalizerImpl;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_e

    const/16 v1, 0x100

    new-array v1, v1, [Lcom/ibm/icu/text/UnicodeSet;

    sput-object v1, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    return-void

    :catch_e
    move-exception v1

    move-object v0, v1

    new-instance v1, Ljava/util/MissingResourceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v4, Lcom/ibm/icu/impl/NormalizerImpl;->isDataLoaded:Z

    if-nez v4, :cond_c5

    const-string v4, "data/icudt42b/unorm.icu"

    invoke-static {v4}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v4, 0x61a8

    invoke-direct {v7, v11, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lcom/ibm/icu/impl/NormalizerDataReader;

    invoke-direct {v0, v7}, Lcom/ibm/icu/impl/NormalizerDataReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/NormalizerDataReader;->readIndexes(I)[I

    move-result-object v4

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    aget v4, v4, v12

    new-array v1, v4, [B

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    aget v8, v4, v14

    new-array v4, v8, [C

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->combiningTable:[C

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    aget v9, v4, v13

    new-array v4, v9, [C

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    new-array v2, v4, [B

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    new-array v3, v4, [B

    const/16 v4, 0x4000

    new-array v4, v4, [Ljava/lang/Object;

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    new-instance v4, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;

    invoke-direct {v4}, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;-><init>()V

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->fcdTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;

    new-instance v4, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;

    invoke-direct {v4}, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;-><init>()V

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->normTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;

    new-instance v4, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;

    invoke-direct {v4}, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;-><init>()V

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->auxTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    sget-object v5, Lcom/ibm/icu/impl/NormalizerImpl;->combiningTable:[C

    sget-object v6, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerDataReader;->read([B[B[B[C[C[Ljava/lang/Object;)V

    new-instance v4, Lcom/ibm/icu/impl/IntTrie;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Lcom/ibm/icu/impl/NormalizerImpl;->normTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;

    invoke-direct {v4, v5, v6}, Lcom/ibm/icu/impl/IntTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;

    new-instance v4, Lcom/ibm/icu/impl/CharTrie;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Lcom/ibm/icu/impl/NormalizerImpl;->fcdTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;

    invoke-direct {v4, v5, v6}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    new-instance v4, Lcom/ibm/icu/impl/CharTrie;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Lcom/ibm/icu/impl/NormalizerImpl;->auxTrieImpl:Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;

    invoke-direct {v4, v5, v6}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/io/InputStream;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    sput-boolean v13, Lcom/ibm/icu/impl/NormalizerImpl;->isDataLoaded:Z

    invoke-virtual {v0}, Lcom/ibm/icu/impl/NormalizerDataReader;->getDataFormatVersion()[B

    move-result-object v10

    aget-byte v4, v10, v12

    if-gt v4, v14, :cond_aa

    aget-byte v4, v10, v12

    if-ne v4, v14, :cond_c6

    aget-byte v4, v10, v13

    if-lt v4, v13, :cond_c6

    :cond_aa
    move v4, v13

    :goto_ab
    sput-boolean v4, Lcom/ibm/icu/impl/NormalizerImpl;->isFormatVersion_2_1:Z

    aget-byte v4, v10, v12

    if-gt v4, v14, :cond_b9

    aget-byte v4, v10, v12

    if-ne v4, v14, :cond_c8

    aget-byte v4, v10, v13

    if-lt v4, v14, :cond_c8

    :cond_b9
    move v4, v13

    :goto_ba
    sput-boolean v4, Lcom/ibm/icu/impl/NormalizerImpl;->isFormatVersion_2_2:Z

    invoke-virtual {v0}, Lcom/ibm/icu/impl/NormalizerDataReader;->getUnicodeVersion()[B

    move-result-object v4

    sput-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->unicodeVersion:[B

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    :cond_c5
    return-void

    :cond_c6
    move v4, v12

    goto :goto_ab

    :cond_c8
    move v4, v12

    goto :goto_ba
.end method

.method public static addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .registers 10

    const v8, 0xd7a4

    new-instance v5, Lcom/ibm/icu/impl/TrieIterator;

    sget-object v7, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;

    invoke-direct {v5, v7}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V

    new-instance v6, Lcom/ibm/icu/util/RangeValueIterator$Element;

    invoke-direct {v6}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V

    :goto_f
    invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget v7, v6, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_f

    :cond_1b
    new-instance v3, Lcom/ibm/icu/impl/TrieIterator;

    sget-object v7, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-direct {v3, v7}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V

    new-instance v4, Lcom/ibm/icu/util/RangeValueIterator$Element;

    invoke-direct {v4}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V

    :goto_27
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z

    move-result v7

    if-eqz v7, :cond_33

    iget v7, v4, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_27

    :cond_33
    sget-boolean v7, Lcom/ibm/icu/impl/NormalizerImpl;->isFormatVersion_2_1:Z

    if-eqz v7, :cond_4f

    new-instance v0, Lcom/ibm/icu/impl/TrieIterator;

    sget-object v7, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-direct {v0, v7}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V

    new-instance v1, Lcom/ibm/icu/util/RangeValueIterator$Element;

    invoke-direct {v1}, Lcom/ibm/icu/util/RangeValueIterator$Element;-><init>()V

    :goto_43
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/TrieIterator;->next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z

    move-result v7

    if-eqz v7, :cond_4f

    iget v7, v1, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_43

    :cond_4f
    const v2, 0xac00

    :goto_52
    if-ge v2, v8, :cond_5f

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v2, v2, 0x1c

    goto :goto_52

    :cond_5f
    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public static checkFCD([CIILcom/ibm/icu/text/UnicodeSet;)Z
    .registers 14

    const/4 v7, 0x0

    move v4, p1

    move v6, p2

    move v5, v4

    :goto_4
    if-ne v5, v6, :cond_9

    const/4 v8, 0x1

    move v4, v5

    :goto_8
    return v8

    :cond_9
    add-int/lit8 v4, v5, 0x1

    aget-char v0, p0, v5

    const/16 v8, 0x300

    if-ge v0, v8, :cond_14

    neg-int v7, v0

    move v5, v4

    goto :goto_4

    :cond_14
    invoke-static {v0}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v3

    if-nez v3, :cond_1d

    const/4 v7, 0x0

    move v5, v4

    goto :goto_4

    :cond_1d
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3f

    if-eq v4, v6, :cond_3c

    aget-char v1, p0, v4

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3c

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result v3

    :goto_33
    invoke-static {p3, v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v8

    if-eqz v8, :cond_41

    const/4 v7, 0x0

    move v5, v4

    goto :goto_4

    :cond_3c
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_33

    :cond_3f
    const/4 v1, 0x0

    goto :goto_33

    :cond_41
    shr-int/lit8 v2, v3, 0x8

    if-eqz v2, :cond_5e

    if-gez v7, :cond_58

    neg-int v8, v7

    invoke-static {p3, v8}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result v8

    if-nez v8, :cond_5c

    sget-object v8, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    neg-int v9, v7

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Lcom/ibm/icu/impl/CharTrie;->getBMPValue(C)C

    move-result v8

    and-int/lit16 v7, v8, 0xff

    :cond_58
    :goto_58
    if-ge v2, v7, :cond_5e

    const/4 v8, 0x0

    goto :goto_8

    :cond_5c
    const/4 v7, 0x0

    goto :goto_58

    :cond_5e
    and-int/lit16 v7, v3, 0xff

    move v5, v4

    goto :goto_4
.end method

.method public static cmpEquivFold(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10

    const/4 v1, 0x0

    const/high16 v0, 0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/NormalizerImpl;->cmpSimpleEquivFold(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerImpl;->cmpEquivFold([CII[CIII)I

    move-result v0

    goto :goto_a
.end method

.method public static cmpEquivFold([CII[CIII)I
    .registers 30

    move-object/from16 v5, p0

    move-object/from16 p3, p3

    const/16 p0, 0x2

    move/from16 v0, p0

    new-array v0, v0, [Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;

    move-object/from16 v17, v0

    const/16 p0, 0x0

    new-instance v6, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    aput-object v6, v17, p0

    const/16 p0, 0x1

    new-instance v6, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    aput-object v6, v17, p0

    const/16 p0, 0x2

    move/from16 v0, p0

    new-array v0, v0, [Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;

    move-object/from16 v18, v0

    const/16 p0, 0x0

    new-instance v6, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    aput-object v6, v18, p0

    const/16 p0, 0x1

    new-instance v6, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    aput-object v6, v18, p0

    const/16 p0, 0x8

    move/from16 v0, p0

    new-array v0, v0, [C

    move-object v8, v0

    const/16 p0, 0x8

    move/from16 v0, p0

    new-array v0, v0, [C

    move-object v9, v0

    const/16 p0, 0x20

    move/from16 v0, p0

    new-array v0, v0, [C

    move-object v10, v0

    const/16 p0, 0x20

    move/from16 v0, p0

    new-array v0, v0, [C

    move-object v11, v0

    move/from16 v15, p1

    move/from16 v13, p2

    move/from16 v16, p4

    move/from16 v14, p5

    const/4 v12, 0x0

    move v7, v12

    const/16 p2, -0x1

    move/from16 p0, p2

    const/4 v6, -0x1

    move/from16 p5, v6

    move/from16 v21, v6

    move/from16 v6, p5

    move/from16 p5, v7

    move/from16 v7, v21

    move/from16 v22, p2

    move-object/from16 p2, v5

    move-object/from16 v5, p3

    move/from16 p3, v22

    :goto_79
    if-gez p0, :cond_50c

    :goto_7b
    move/from16 v0, p1

    move v1, v13

    if-lt v0, v1, :cond_bc

    if-nez p5, :cond_506

    const/16 p0, -0x1

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, p5

    move-object/from16 p5, p2

    move/from16 p2, p0

    :goto_8d
    if-gez p3, :cond_4ff

    move-object/from16 p3, v5

    move v5, v12

    move v12, v14

    move/from16 v14, v16

    :goto_95
    move/from16 v0, p4

    move v1, v12

    if-lt v0, v1, :cond_ff

    if-nez v5, :cond_4f9

    const/16 p0, -0x1

    move/from16 v16, v12

    move/from16 v20, v14

    move v14, v5

    move-object/from16 v5, p3

    move/from16 p3, p0

    :goto_a7
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_154

    if-gez p2, :cond_140

    const/16 p0, 0x0

    move/from16 p1, p3

    move/from16 p4, p0

    move/from16 p3, v7

    move/from16 p0, p2

    move/from16 p2, v6

    :goto_bb
    return p4

    :cond_bc
    aget-char p0, p2, p1

    add-int/lit8 p1, p1, 0x1

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, p5

    move-object/from16 p5, p2

    move/from16 p2, p0

    goto :goto_8d

    :cond_ca
    move/from16 p0, p2

    move/from16 p1, v13

    :goto_ce
    add-int/lit8 p2, p0, -0x1

    aget-object p0, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    move v13, v0

    const/16 p0, -0x1

    move v0, v13

    move/from16 v1, p0

    if-eq v0, v1, :cond_ca

    aget-object p0, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->s:I

    move/from16 p1, v0

    aget-object p0, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->limit:I

    move/from16 p5, v0

    aget-object p0, v17, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->source:[C

    move-object/from16 p0, v0

    move v15, v13

    move/from16 v13, p5

    move/from16 p5, p2

    move-object/from16 p2, p0

    goto/16 :goto_7b

    :cond_ff
    aget-char p0, p3, p4

    add-int/lit8 p4, p4, 0x1

    move/from16 v16, v12

    move/from16 v20, v14

    move v14, v5

    move-object/from16 v5, p3

    move/from16 p3, p0

    goto :goto_a7

    :cond_10d
    move/from16 p0, p3

    move/from16 p3, v12

    :goto_111
    add-int/lit8 p3, p0, -0x1

    aget-object p0, v18, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    move v12, v0

    const/16 p0, -0x1

    move v0, v12

    move/from16 v1, p0

    if-eq v0, v1, :cond_10d

    aget-object p0, v18, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->s:I

    move/from16 p4, v0

    aget-object p0, v18, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->limit:I

    move v5, v0

    aget-object p0, v18, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->source:[C

    move-object/from16 p0, v0

    move v14, v12

    move v12, v5

    move/from16 v5, p3

    move-object/from16 p3, p0

    goto/16 :goto_95

    :cond_140
    const/16 p2, -0x1

    move/from16 p0, p2

    move/from16 p3, p2

    move v12, v14

    move-object/from16 p2, p5

    move/from16 v14, v16

    move/from16 p5, v13

    move/from16 v16, v20

    move v13, v15

    move/from16 v15, v19

    goto/16 :goto_79

    :cond_154
    if-gez p2, :cond_164

    const/16 p0, -0x1

    move/from16 p1, p3

    move/from16 p4, p0

    move/from16 p3, v7

    move/from16 p0, p2

    move/from16 p2, v6

    goto/16 :goto_bb

    :cond_164
    if-gez p3, :cond_174

    const/16 p0, 0x1

    move/from16 p1, p3

    move/from16 p4, p0

    move/from16 p3, v7

    move/from16 p0, p2

    move/from16 p2, v6

    goto/16 :goto_bb

    :cond_174
    move/from16 v6, p2

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_1a6

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_252

    move/from16 v0, p1

    move v1, v15

    if-eq v0, v1, :cond_1a6

    aget-char p0, p5, p1

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1a6

    move/from16 v0, p2

    int-to-char v0, v0

    move v6, v0

    move v0, v6

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result p0

    move/from16 v6, p0

    :cond_1a6
    :goto_1a6
    move/from16 v7, p3

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_1d9

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_277

    move/from16 v0, p4

    move/from16 v1, v16

    if-eq v0, v1, :cond_1d9

    aget-char p0, v5, p4

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_1d9

    move/from16 v0, p3

    int-to-char v0, v0

    move v7, v0

    move v0, v7

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result p0

    move/from16 v7, p0

    :cond_1d9
    :goto_1d9
    const/16 p0, 0x2

    move v0, v13

    move/from16 v1, p0

    if-ge v0, v1, :cond_2a8

    const/high16 p0, 0x1

    and-int p0, p0, p6

    if-eqz p0, :cond_2a8

    const/16 p0, 0x0

    const/16 v12, 0x20

    move v0, v6

    move-object v1, v10

    move/from16 v2, p0

    move v3, v12

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/NormalizerImpl;->foldCase(I[CIII)I

    move-result v12

    if-ltz v12, :cond_2a8

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_4f5

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_29c

    add-int/lit8 p1, p1, 0x1

    move/from16 p2, p3

    :goto_211
    const/16 p0, 0x0

    aget-object p0, v17, p0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    const/16 p0, 0x0

    aget-object p0, v17, p0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->s:I

    const/16 p0, 0x0

    aget-object p0, v17, p0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->limit:I

    const/16 p0, 0x0

    aget-object p0, v17, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->source:[C

    add-int/lit8 p5, v13, 0x1

    move-object/from16 p3, v10

    const/16 p1, 0x0

    move/from16 v13, p1

    move v12, v12

    const/16 p0, -0x1

    move v15, v13

    move v13, v12

    move v12, v14

    move/from16 v14, v16

    move/from16 v16, v20

    move-object/from16 v21, p3

    move/from16 p3, p2

    move-object/from16 p2, v21

    goto/16 :goto_79

    :cond_252
    const/16 p0, 0x2

    sub-int p0, p1, p0

    move/from16 v0, v19

    move/from16 v1, p0

    if-gt v0, v1, :cond_1a6

    const/16 p0, 0x2

    sub-int p0, p1, p0

    aget-char p0, p5, p0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1a6

    move/from16 v0, p2

    int-to-char v0, v0

    move v6, v0

    move/from16 v0, p0

    move v1, v6

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result p0

    move/from16 v6, p0

    goto/16 :goto_1a6

    :cond_277
    const/16 p0, 0x2

    sub-int p0, p4, p0

    move/from16 v0, v20

    move/from16 v1, p0

    if-gt v0, v1, :cond_1d9

    const/16 p0, 0x2

    sub-int p0, p4, p0

    aget-char p0, v5, p0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_1d9

    move/from16 v0, p3

    int-to-char v0, v0

    move v7, v0

    move/from16 v0, p0

    move v1, v7

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result p0

    move/from16 v7, p0

    goto/16 :goto_1d9

    :cond_29c
    add-int/lit8 p4, p4, -0x1

    const/16 p0, 0x1

    sub-int p0, p4, p0

    aget-char p0, v5, p0

    move/from16 p2, p0

    goto/16 :goto_211

    :cond_2a8
    const/16 p0, 0x2

    move v0, v14

    move/from16 v1, p0

    if-ge v0, v1, :cond_32c

    const/high16 p0, 0x1

    and-int p0, p0, p6

    if-eqz p0, :cond_32c

    const/16 p0, 0x0

    const/16 v12, 0x20

    move v0, v7

    move-object v1, v11

    move/from16 v2, p0

    move v3, v12

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/NormalizerImpl;->foldCase(I[CIII)I

    move-result v12

    if-ltz v12, :cond_32c

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_4f1

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_323

    add-int/lit8 p4, p4, 0x1

    move/from16 p0, p2

    :goto_2e0
    const/16 p2, 0x0

    aget-object p2, v18, p2

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    const/16 p2, 0x0

    aget-object p2, v18, p2

    move/from16 v0, p4

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->s:I

    const/16 p2, 0x0

    aget-object p2, v18, p2

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->limit:I

    const/16 p2, 0x0

    aget-object p2, v18, p2

    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->source:[C

    add-int/lit8 v5, v14, 0x1

    move-object/from16 p3, v11

    const/16 p4, 0x0

    move/from16 v14, p4

    move v12, v12

    const/16 p2, -0x1

    move/from16 v16, v14

    move v14, v12

    move v12, v5

    move-object/from16 v5, p3

    move/from16 p3, p2

    move-object/from16 p2, p5

    move/from16 p5, v13

    move v13, v15

    move/from16 v15, v19

    goto/16 :goto_79

    :cond_323
    add-int/lit8 p1, p1, -0x1

    const/16 p0, 0x1

    sub-int p0, p1, p0

    aget-char p0, p5, p0

    goto :goto_2e0

    :cond_32c
    const/16 p0, 0x2

    move v0, v13

    move/from16 v1, p0

    if-ge v0, v1, :cond_3af

    const/high16 p0, 0x8

    and-int p0, p0, p6

    if-eqz p0, :cond_3af

    invoke-static {v6, v8}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(I[C)I

    move-result v12

    if-eqz v12, :cond_3af

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_4ed

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_3a4

    add-int/lit8 p1, p1, 0x1

    move/from16 p2, p3

    :goto_359
    aget-object p0, v17, v13

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    aget-object p0, v17, v13

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->s:I

    aget-object p0, v17, v13

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->limit:I

    aget-object p0, v17, v13

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->source:[C

    add-int/lit8 p0, v13, 0x1

    move-object/from16 p3, v8

    const/16 p1, 0x0

    move/from16 v13, p1

    move v12, v12

    const/16 p5, 0x2

    move/from16 v0, p0

    move/from16 v1, p5

    if-ge v0, v1, :cond_4e9

    add-int/lit8 p5, p0, 0x1

    aget-object p0, v17, p0

    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    :goto_393
    const/16 p0, -0x1

    move v15, v13

    move v13, v12

    move v12, v14

    move/from16 v14, v16

    move/from16 v16, v20

    move-object/from16 v21, p3

    move/from16 p3, p2

    move-object/from16 p2, v21

    goto/16 :goto_79

    :cond_3a4
    add-int/lit8 p4, p4, -0x1

    const/16 p0, 0x1

    sub-int p0, p4, p0

    aget-char p0, v5, p0

    move/from16 p2, p0

    goto :goto_359

    :cond_3af
    const/16 p0, 0x2

    move v0, v14

    move/from16 v1, p0

    if-ge v0, v1, :cond_432

    const/high16 p0, 0x8

    and-int p0, p0, p6

    if-eqz p0, :cond_432

    invoke-static {v7, v9}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(I[C)I

    move-result v12

    if-eqz v12, :cond_432

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_4e5

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_429

    add-int/lit8 p4, p4, 0x1

    move/from16 p0, p2

    :goto_3dc
    aget-object p2, v18, v14

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    aget-object p2, v18, v14

    move/from16 v0, p4

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->s:I

    aget-object p2, v18, v14

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->limit:I

    aget-object p2, v18, v14

    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->source:[C

    add-int/lit8 p2, v14, 0x1

    move-object/from16 p3, v9

    const/16 p4, 0x0

    move/from16 v14, p4

    move v12, v12

    const/4 v5, 0x2

    move/from16 v0, p2

    move v1, v5

    if-ge v0, v1, :cond_4e1

    add-int/lit8 v5, p2, 0x1

    aget-object p2, v18, p2

    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$CmpEquivLevel;->start:I

    :goto_416
    const/16 p2, -0x1

    move/from16 v16, v14

    move v14, v12

    move v12, v5

    move-object/from16 v5, p3

    move/from16 p3, p2

    move-object/from16 p2, p5

    move/from16 p5, v13

    move v13, v15

    move/from16 v15, v19

    goto/16 :goto_79

    :cond_429
    add-int/lit8 p1, p1, -0x1

    const/16 p0, 0x1

    sub-int p0, p1, p0

    aget-char p0, p5, p0

    goto :goto_3dc

    :cond_432
    const p0, 0xd800

    move/from16 v0, p2

    move/from16 v1, p0

    if-lt v0, v1, :cond_4dc

    const p0, 0xd800

    move/from16 v0, p3

    move/from16 v1, p0

    if-lt v0, v1, :cond_4dc

    const p0, 0x8000

    and-int p0, p0, p6

    if-eqz p0, :cond_4dc

    const p0, 0xdbff

    move/from16 v0, p2

    move/from16 v1, p0

    if-gt v0, v1, :cond_461

    move/from16 v0, p1

    move v1, v15

    if-eq v0, v1, :cond_461

    aget-char p0, p5, p1

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p0

    if-nez p0, :cond_4d9

    :cond_461
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_4c8

    const/16 p0, 0x1

    sub-int p0, p1, p0

    move/from16 v0, v19

    move/from16 v1, p0

    if-eq v0, v1, :cond_4c8

    const/16 p0, 0x2

    sub-int p0, p1, p0

    aget-char p0, p5, p0

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_4c8

    move/from16 p0, p2

    :goto_484
    const p1, 0xdbff

    move/from16 v0, p3

    move/from16 v1, p1

    if-gt v0, v1, :cond_49b

    move/from16 v0, p4

    move/from16 v1, v16

    if-eq v0, v1, :cond_49b

    aget-char p1, v5, p4

    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p1

    if-nez p1, :cond_4d6

    :cond_49b
    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p1, v0

    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_4cf

    const/16 p1, 0x1

    sub-int p1, p4, p1

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_4cf

    const/16 p1, 0x2

    sub-int p1, p4, p1

    aget-char p1, v5, p1

    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_4cf

    move/from16 p1, p3

    :goto_4be
    sub-int p2, p0, p1

    move/from16 p3, v7

    move/from16 p4, p2

    move/from16 p2, v6

    goto/16 :goto_bb

    :cond_4c8
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x2800

    move/from16 p0, v0

    goto :goto_484

    :cond_4cf
    move/from16 v0, p3

    add-int/lit16 v0, v0, -0x2800

    move/from16 p1, v0

    goto :goto_4be

    :cond_4d6
    move/from16 p1, p3

    goto :goto_4be

    :cond_4d9
    move/from16 p0, p2

    goto :goto_484

    :cond_4dc
    move/from16 p1, p3

    move/from16 p0, p2

    goto :goto_4be

    :cond_4e1
    move/from16 v5, p2

    goto/16 :goto_416

    :cond_4e5
    move/from16 p0, p2

    goto/16 :goto_3dc

    :cond_4e9
    move/from16 p5, p0

    goto/16 :goto_393

    :cond_4ed
    move/from16 p2, p3

    goto/16 :goto_359

    :cond_4f1
    move/from16 p0, p2

    goto/16 :goto_2e0

    :cond_4f5
    move/from16 p2, p3

    goto/16 :goto_211

    :cond_4f9
    move/from16 p0, v5

    move/from16 p3, v14

    goto/16 :goto_111

    :cond_4ff
    move/from16 v20, v16

    move/from16 v16, v14

    move v14, v12

    goto/16 :goto_a7

    :cond_506
    move/from16 p0, p5

    move/from16 p1, v15

    goto/16 :goto_ce

    :cond_50c
    move/from16 v19, v15

    move v15, v13

    move/from16 v13, p5

    move-object/from16 p5, p2

    move/from16 p2, p0

    goto/16 :goto_8d
.end method

.method private static cmpSimpleEquivFold(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_8
    add-int v0, v1, v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_d2

    add-int v0, v4, v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_d2

    if-nez v7, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_cc

    :cond_24
    if-lez v1, :cond_58

    if-lez v4, :cond_58

    sub-int v0, v1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_40

    sub-int v0, v4, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_40
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerImpl;->cmpEquivFold([CII[CIII)I

    move-result v0

    :goto_57
    return v0

    :cond_58
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_6c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerImpl;->cmpEquivFold([CII[CIII)I

    move-result v0

    goto :goto_57

    :cond_82
    if-lez v10, :cond_8e

    add-int v0, v1, v10

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :cond_8e
    if-lez v11, :cond_9a

    add-int v0, v4, v11

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :cond_9a
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_ac

    invoke-static {v1, v10}, Lcom/ibm/icu/impl/NormalizerImpl;->moveToNext(II)I

    move-result v1

    invoke-static {v4, v11}, Lcom/ibm/icu/impl/NormalizerImpl;->moveToNext(II)I

    move-result v4

    const/4 v11, 0x1

    move v10, v11

    goto/16 :goto_8

    :cond_ac
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_b8

    move v0, v7

    goto :goto_57

    :cond_b8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_c7

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_c7
    const/4 v10, 0x0

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    :cond_cc
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_d2
    if-eqz v7, :cond_d6

    move v0, v7

    goto :goto_57

    :cond_d6
    add-int v0, v1, v10

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_ee

    add-int v0, v4, v11

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_eb

    const/4 v0, 0x0

    goto/16 :goto_57

    :cond_eb
    const/4 v0, -0x1

    goto/16 :goto_57

    :cond_ee
    move v0, v5

    goto/16 :goto_57
.end method

.method private static combine([CII[I)I
    .registers 15

    const-wide v9, 0xffffffffL

    const v8, 0x8000

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    array-length v4, p3

    if-ge v4, v5, :cond_1c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_14
    aget-char v4, p0, v1

    and-int/2addr v4, v8

    if-eqz v4, :cond_4a

    move v4, v5

    :goto_1a
    add-int p1, v1, v4

    :cond_1c
    add-int/lit8 v1, p1, 0x1

    aget-char v0, p0, p1

    if-lt v0, p2, :cond_14

    and-int/lit16 v4, v0, 0x7fff

    if-ne v4, p2, :cond_56

    aget-char v2, p0, v1

    and-int/lit16 v4, v2, 0x2000

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    and-long/2addr v4, v9

    long-to-int v0, v4

    and-int v4, v2, v8

    if-eqz v4, :cond_52

    and-int/lit16 v4, v2, 0x4000

    if-eqz v4, :cond_4c

    and-int/lit16 v4, v2, 0x3ff

    const v5, 0xd800

    or-int/2addr v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v9

    long-to-int v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-char v3, p0, v4

    :goto_44
    aput v2, p3, v6

    aput v3, p3, v7

    move v4, v0

    :goto_49
    return v4

    :cond_4a
    move v4, v7

    goto :goto_1a

    :cond_4c
    add-int/lit8 v4, v1, 0x1

    aget-char v2, p0, v4

    const/4 v3, 0x0

    goto :goto_44

    :cond_52
    and-int/lit16 v2, v2, 0x1fff

    const/4 v3, 0x0

    goto :goto_44

    :cond_56
    move v4, v6

    goto :goto_49
.end method

.method public static compose([CII[CIIILcom/ibm/icu/text/UnicodeSet;)I
    .registers 38

    const/4 v5, 0x1

    new-array v10, v5, [I

    move/from16 v22, p4

    move/from16 v12, p1

    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 p1, v0

    if-eqz p1, :cond_4e

    sget-object p1, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/4 v5, 0x7

    aget p1, p1, v5

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v16, v0

    const/16 p1, 0x22

    move/from16 v26, p1

    :goto_1d
    move/from16 v18, v12

    const p1, 0xff00

    or-int p1, p1, v26

    const/16 v20, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    :goto_2a
    move v9, v12

    move/from16 v21, v5

    :goto_2d
    move v0, v12

    move/from16 v1, p2

    if-eq v0, v1, :cond_5d

    aget-char v6, p0, v12

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_48

    invoke-static {v6}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v7

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v13, v0

    and-long/2addr v13, v7

    const-wide/16 v23, 0x0

    cmp-long v5, v13, v23

    if-nez v5, :cond_5d

    :cond_48
    const/4 v5, 0x0

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v5

    goto :goto_2d

    :cond_4e
    sget-object p1, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/4 v5, 0x6

    aget p1, p1, v5

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v16, v0

    const/16 p1, 0x11

    move/from16 v26, p1

    goto :goto_1d

    :cond_5d
    if-eq v12, v9, :cond_20c

    sub-int v5, v12, v9

    add-int v11, v22, v5

    move v0, v11

    move/from16 v1, p5

    if-gt v0, v1, :cond_73

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p3

    move/from16 v3, v22

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_73
    add-int v22, v22, v5

    move/from16 v20, v22

    const/4 v5, 0x1

    sub-int v18, v12, v5

    aget-char v5, p0, v18

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_94

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_94

    const/4 v5, 0x1

    sub-int v5, v18, v5

    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_94

    add-int/lit8 v18, v18, -0x1

    :cond_94
    move v5, v12

    move/from16 v19, v22

    move/from16 v27, v20

    move/from16 v22, v5

    :goto_9b
    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_a5

    move/from16 v22, v19

    :goto_a2
    sub-int p0, v22, p4

    return p0

    :cond_a5
    add-int/lit8 v12, v12, 0x1

    invoke-static {v7, v8}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32HangulOrJamo(J)Z

    move-result v5

    if-eqz v5, :cond_115

    const/16 v25, 0x0

    move/from16 v17, v25

    move/from16 v20, v19

    const/4 v5, 0x0

    aput v12, v10, v5

    if-lez v19, :cond_ef

    const/4 v5, 0x1

    sub-int v5, v22, v5

    aget-char v5, p0, v5

    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move v9, v0

    if-eqz v9, :cond_e9

    const/4 v9, 0x1

    move v12, v9

    :goto_c6
    move/from16 v0, v19

    move/from16 v1, p5

    if-gt v0, v1, :cond_ec

    const/4 v9, 0x1

    sub-int v9, v19, v9

    move v14, v9

    :goto_d0
    move-object/from16 v9, p0

    move/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    invoke-static/range {v5 .. v15}, Lcom/ibm/icu/impl/NormalizerImpl;->composeHangul(CCJ[C[IIZ[CILcom/ibm/icu/text/UnicodeSet;)Z

    move-result v5

    if-eqz v5, :cond_ef

    const/4 v5, 0x0

    aget v12, v10, v5

    move/from16 v18, v12

    move/from16 v22, v19

    move/from16 v5, v17

    goto/16 :goto_2a

    :cond_e9
    const/4 v9, 0x0

    move v12, v9

    goto :goto_c6

    :cond_ec
    const/4 v9, 0x0

    move v14, v9

    goto :goto_d0

    :cond_ef
    const/4 v5, 0x0

    aget v12, v10, v5

    const/16 v24, 0x0

    const/4 v5, 0x1

    move/from16 v18, v22

    move/from16 v9, v17

    :goto_f9
    add-int v11, v19, v5

    move v0, v11

    move/from16 v1, p5

    if-gt v0, v1, :cond_206

    if-eqz v25, :cond_1f6

    move/from16 v0, v25

    move v1, v9

    if-ge v0, v1, :cond_1f6

    move/from16 v21, v19

    add-int v22, v19, v5

    move-object/from16 v19, p3

    move/from16 v23, v6

    invoke-static/range {v19 .. v25}, Lcom/ibm/icu/impl/NormalizerImpl;->insertOrdered([CIIICCI)I

    move-result v5

    goto/16 :goto_2a

    :cond_115
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32Regular(J)Z

    move-result v5

    if-eqz v5, :cond_13b

    const/16 v24, 0x0

    const/4 v5, 0x1

    move v9, v5

    :goto_11f
    new-instance v17, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    move-object/from16 v0, p7

    move v1, v6

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v5

    if-eqz v5, :cond_15b

    const/16 v25, 0x0

    move v5, v9

    move/from16 v20, v27

    move/from16 v9, v21

    goto :goto_f9

    :cond_13b
    move v0, v12

    move/from16 v1, p2

    if-eq v0, v1, :cond_154

    aget-char v24, p0, v12

    invoke-static/range {v24 .. v24}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_154

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    move-wide v0, v7

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v7

    move v9, v5

    goto :goto_11f

    :cond_154
    const/16 v24, 0x0

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    move v9, v5

    goto :goto_11f

    :cond_15b
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide v13, v0

    and-long/2addr v13, v7

    const-wide/16 v28, 0x0

    cmp-long v5, v13, v28

    if-nez v5, :cond_178

    const-wide/16 v13, 0xff

    const/16 v5, 0x8

    shr-long v22, v7, v5

    and-long v13, v13, v22

    move-wide v0, v13

    long-to-int v0, v0

    move/from16 v25, v0

    move v5, v9

    move/from16 v20, v27

    move/from16 v9, v21

    goto :goto_f9

    :cond_178
    shl-int/lit8 v5, v26, 0x2

    and-int/lit8 v15, v5, 0xf

    const v5, 0xff00

    or-int v5, v5, v26

    invoke-static {v7, v8, v5, v15}, Lcom/ibm/icu/impl/NormalizerImpl;->isTrueStarter(JII)Z

    move-result v5

    if-eqz v5, :cond_1b4

    move/from16 v18, v22

    move/from16 v5, v19

    :goto_18b
    move-object/from16 v11, p0

    move/from16 v13, p2

    move/from16 v14, v26

    invoke-static/range {v11 .. v16}, Lcom/ibm/icu/impl/NormalizerImpl;->findNextStarter([CIIIIC)I

    move-result v12

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->prevCC:I

    move v0, v9

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    move-object/from16 v19, p0

    move/from16 v20, v12

    move/from16 v21, p2

    move/from16 v22, p6

    move-object/from16 v23, p7

    invoke-static/range {v17 .. v23}, Lcom/ibm/icu/impl/NormalizerImpl;->composePart(Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;I[CIIILcom/ibm/icu/text/UnicodeSet;)[C

    move-result-object v14

    if-nez v14, :cond_1bb

    move/from16 v22, v5

    goto/16 :goto_a2

    :cond_1b4
    sub-int v5, v22, v18

    sub-int v22, v19, v5

    move/from16 v5, v22

    goto :goto_18b

    :cond_1bb
    move-object/from16 v0, v17

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->prevCC:I

    move v15, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    move v11, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    move v9, v0

    add-int/2addr v9, v5

    move v0, v9

    move/from16 v1, p5

    if-gt v0, v1, :cond_1f2

    const/4 v9, 0x0

    move/from16 v22, v5

    move v13, v11

    :goto_1d4
    move-object/from16 v0, v17

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    move v5, v0

    if-ge v9, v5, :cond_1ea

    add-int/lit8 v5, v22, 0x1

    add-int/lit8 v11, v9, 0x1

    aget-char v9, v14, v9

    aput-char v9, p3, v22

    add-int/lit8 v9, v13, -0x1

    move/from16 v22, v5

    move v13, v9

    move v9, v11

    goto :goto_1d4

    :cond_1ea
    move v5, v13

    :goto_1eb
    move/from16 v18, v12

    move v5, v15

    move/from16 v20, v27

    goto/16 :goto_2a

    :cond_1f2
    add-int v22, v5, v11

    move v5, v11

    goto :goto_1eb

    :cond_1f6
    add-int/lit8 v22, v19, 0x1

    aput-char v6, p3, v19

    if-eqz v24, :cond_202

    add-int/lit8 v5, v22, 0x1

    aput-char v24, p3, v22

    move/from16 v22, v5

    :cond_202
    move/from16 v5, v25

    goto/16 :goto_2a

    :cond_206
    add-int v22, v19, v5

    move/from16 v5, v25

    goto/16 :goto_2a

    :cond_20c
    move/from16 v19, v22

    move/from16 v27, v20

    move/from16 v22, v9

    goto/16 :goto_9b
.end method

.method private static composeHangul(CCJ[C[IIZ[CILcom/ibm/icu/text/UnicodeSet;)Z
    .registers 14

    const/4 v0, 0x0

    aget v0, p5, v0

    invoke-static {p2, p3}, Lcom/ibm/icu/impl/NormalizerImpl;->isJamoVTNorm32JamoV(J)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/16 v1, 0x1100

    sub-int/2addr p0, v1

    int-to-char p0, p0

    const/16 v1, 0x13

    if-ge p0, v1, :cond_9b

    const v1, 0xac00

    mul-int/lit8 p0, p0, 0x15

    const/16 v2, 0x1161

    sub-int/2addr p1, v2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1c

    add-int/2addr p0, v1

    int-to-char p1, p0

    if-eq v0, p6, :cond_9f

    aget-char p0, p4, v0

    const/16 p4, 0x11a7

    sub-int p4, p0, p4

    int-to-char p4, p4

    const/16 p6, 0x1c

    if-ge p4, p6, :cond_3f

    add-int/lit8 p0, v0, 0x1

    add-int/2addr p1, p4

    int-to-char p1, p1

    :goto_2f
    invoke-static {p10, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result p4

    if-eqz p4, :cond_76

    invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->isHangulWithoutJamoT(C)Z

    move-result p4

    if-nez p4, :cond_3d

    add-int/lit8 p0, p0, -0x1

    :cond_3d
    const/4 p4, 0x0

    :goto_3e
    return p4

    :cond_3f
    if-eqz p7, :cond_9f

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32Regular(J)Z

    move-result p0

    if-eqz p0, :cond_9f

    const-wide/16 p6, 0x8

    and-long/2addr p6, p2

    const-wide/16 v1, 0x0

    cmp-long p0, p6, v1

    if-eqz p0, :cond_9f

    new-instance p0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    const/16 p4, 0x8

    invoke-static {p2, p3, p4, p0}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result p4

    iget p0, p0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    const/4 p6, 0x1

    if-ne p0, p6, :cond_9f

    sget-object p0, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    aget-char p0, p0, p4

    const/16 p4, 0x11a7

    sub-int/2addr p0, p4

    int-to-char p4, p0

    const/16 p0, 0x1c

    if-ge p4, p0, :cond_9f

    add-int/lit8 p0, v0, 0x1

    add-int/2addr p1, p4

    int-to-char p1, p1

    goto :goto_2f

    :cond_76
    aput-char p1, p8, p9

    const/4 p4, 0x0

    aput p0, p5, p4

    const/4 p4, 0x1

    goto :goto_3e

    :cond_7d
    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->isHangulWithoutJamoT(C)Z

    move-result p4

    if-eqz p4, :cond_9b

    const/16 p4, 0x11a7

    sub-int/2addr p1, p4

    add-int/2addr p0, p1

    int-to-char p1, p0

    invoke-static {p10, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result p0

    if-eqz p0, :cond_92

    const/4 p0, 0x0

    move p4, p0

    move p0, v0

    goto :goto_3e

    :cond_92
    aput-char p1, p8, p9

    const/4 p0, 0x0

    aput v0, p5, p0

    const/4 p0, 0x1

    move p4, p0

    move p0, v0

    goto :goto_3e

    :cond_9b
    const/4 p0, 0x0

    move p4, p0

    move p0, v0

    goto :goto_3e

    :cond_9f
    move p0, v0

    goto :goto_2f
.end method

.method private static composePart(Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;I[CIIILcom/ibm/icu/text/UnicodeSet;)[C
    .registers 16

    and-int/lit16 v0, p5, 0x1000

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    move v6, v0

    :goto_6
    const/4 v0, 0x1

    new-array v7, v0, [I

    sub-int/2addr p4, p1

    mul-int/lit8 p4, p4, 0x14

    new-array v3, p4, [C

    :goto_e
    const/4 v4, 0x0

    array-length v5, v3

    move-object v0, p2

    move v1, p1

    move v2, p3

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose([CII[CIIZ[ILcom/ibm/icu/text/UnicodeSet;)I

    move-result p4

    iput p4, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    iget p4, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    array-length v0, v3

    if-gt p4, v0, :cond_41

    iget p2, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    iget p1, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    const/4 p3, 0x2

    if-lt p1, p3, :cond_46

    new-instance p1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    iput-object v3, p1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    const/4 p3, 0x0

    iput p3, p1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    iput p2, p1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    invoke-static {p1, p5, p6}, Lcom/ibm/icu/impl/NormalizerImpl;->recompose(Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;ILcom/ibm/icu/text/UnicodeSet;)C

    move-result p2

    iput p2, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->prevCC:I

    iget p1, p1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    :goto_3b
    iput p1, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    return-object v3

    :cond_3e
    const/4 v0, 0x0

    move v6, v0

    goto :goto_6

    :cond_41
    iget p4, p0, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    new-array v3, p4, [C

    goto :goto_e

    :cond_46
    move p1, p2

    goto :goto_3b
.end method

.method private static decompose(I[C)I
    .registers 13

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-wide v6, 0xffffffffL

    sget-object v8, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v8, p0}, Lcom/ibm/icu/impl/IntTrie;->getCodePointValue(I)I

    move-result v8

    int-to-long v8, v8

    and-long v4, v6, v8

    const-wide/16 v6, 0x4

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_58

    invoke-static {v4, v5}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32HangulOrJamo(J)Z

    move-result v6

    if-eqz v6, :cond_44

    const v6, 0xac00

    sub-int/2addr p0, v6

    rem-int/lit8 v6, p0, 0x1c

    int-to-char v1, v6

    div-int/lit8 p0, p0, 0x1c

    if-lez v1, :cond_42

    const/4 v6, 0x2

    add-int/lit16 v7, v1, 0x11a7

    int-to-char v7, v7

    aput-char v7, p1, v6

    const/4 v3, 0x3

    :goto_31
    const/4 v6, 0x1

    rem-int/lit8 v7, p0, 0x15

    add-int/lit16 v7, v7, 0x1161

    int-to-char v7, v7

    aput-char v7, p1, v6

    div-int/lit8 v6, p0, 0x15

    add-int/lit16 v6, v6, 0x1100

    int-to-char v6, v6

    aput-char v6, p1, v10

    move v6, v3

    :goto_41
    return v6

    :cond_42
    const/4 v3, 0x2

    goto :goto_31

    :cond_44
    new-instance v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    invoke-static {v4, v5, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JLcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result v2

    sget-object v6, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    iget v7, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    invoke-static {v6, v2, p1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    goto :goto_41

    :cond_58
    move v6, v10

    goto :goto_41
.end method

.method private static decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I
    .registers 11

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getExtraDataIndex(J)I

    move-result v1

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v3, v3, v1

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    int-to-long v3, p2

    and-long/2addr v3, p0

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_54

    iget v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    const/16 v4, 0x100

    if-lt v3, v4, :cond_54

    iget v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x1

    iget v4, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v3, v4

    add-int v1, v2, v3

    iget v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    :goto_30
    iget v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_4e

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v3, v1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    and-int/lit16 v3, v0, 0xff

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    move v1, v2

    :goto_47
    iget v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    and-int/lit8 v3, v3, 0x7f

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    return v1

    :cond_4e
    const/4 v3, 0x0

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    iput v3, p3, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    goto :goto_47

    :cond_54
    move v1, v2

    goto :goto_30
.end method

.method private static decompose(JLcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I
    .registers 7

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getExtraDataIndex(J)I

    move-result v1

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v3, v3, v1

    iput v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    iget v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_29

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v0, v3, v2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    iput v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    and-int/lit16 v3, v0, 0xff

    iput v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    :goto_22
    iget v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    and-int/lit8 v3, v3, 0x7f

    iput v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    return v1

    :cond_29
    const/4 v3, 0x0

    iput v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    iput v3, p2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    move v1, v2

    goto :goto_22
.end method

.method public static decompose([CII[CIIZ[ILcom/ibm/icu/text/UnicodeSet;)I
    .registers 35

    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v18, v0

    move/from16 v8, p4

    move/from16 v5, p1

    if-nez p6, :cond_56

    sget-object p1, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/16 p6, 0x8

    aget p1, p1, p6

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 p1, v0

    const/16 p6, 0x4

    move/from16 v20, p1

    move/from16 v23, p6

    :goto_1d
    const p1, 0xff00

    or-int p6, p1, v23

    const/4 v6, 0x0

    const/16 p1, 0x0

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v7, -0x1

    move v11, v7

    move/from16 v19, v7

    move v7, v5

    :goto_2f
    move v5, v7

    move/from16 v14, p1

    :goto_32
    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_68

    aget-char v9, p0, v7

    move v0, v9

    move/from16 v1, v20

    if-lt v0, v1, :cond_4f

    invoke-static {v9}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v12

    move/from16 v0, p6

    int-to-long v0, v0

    move-wide/from16 v21, v0

    and-long v21, v21, v12

    const-wide/16 v24, 0x0

    cmp-long p1, v21, v24

    if-nez p1, :cond_68

    :cond_4f
    const/16 p1, 0x0

    add-int/lit8 v7, v7, 0x1

    move/from16 v14, p1

    goto :goto_32

    :cond_56
    sget-object p1, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/16 p6, 0x9

    aget p1, p1, p6

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 p1, v0

    const/16 p6, 0x8

    move/from16 v20, p1

    move/from16 v23, p6

    goto :goto_1d

    :cond_68
    if-eq v7, v5, :cond_225

    sub-int p1, v7, v5

    add-int v6, v8, p1

    move v0, v6

    move/from16 v1, p5

    if-gt v0, v1, :cond_7e

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p3

    move v3, v8

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7e
    add-int v8, v8, p1

    move v6, v8

    move v5, v8

    :goto_82
    move v0, v7

    move/from16 v1, p2

    if-ne v0, v1, :cond_8e

    const/16 p0, 0x0

    aput v14, p7, p0

    sub-int p0, v5, p4

    return p0

    :cond_8e
    add-int/lit8 v17, v7, 0x1

    invoke-static {v12, v13}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32HangulOrJamo(J)Z

    move-result p1

    if-eqz p1, :cond_124

    move-object/from16 v0, p8

    move v1, v9

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result p1

    if-eqz p1, :cond_d3

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 p1, 0x1

    move/from16 v24, v17

    move-wide/from16 v21, v12

    move/from16 v12, v19

    move/from16 v19, p1

    :goto_ab
    add-int p1, v5, v19

    move/from16 v0, p1

    move/from16 v1, p5

    if-gt v0, v1, :cond_203

    move v7, v5

    if-nez v15, :cond_1d4

    if-eqz v11, :cond_1c3

    if-ge v11, v14, :cond_1c3

    add-int v8, v5, v19

    move-object/from16 v5, p3

    invoke-static/range {v5 .. v11}, Lcom/ibm/icu/impl/NormalizerImpl;->insertOrdered([CIIICCI)I

    move-result p1

    move/from16 v5, p1

    move/from16 p1, v19

    :goto_c6
    move/from16 p1, v5

    if-nez p1, :cond_20a

    move v6, v8

    move/from16 v7, v24

    move/from16 v19, v5

    move-wide/from16 v12, v21

    goto/16 :goto_2f

    :cond_d3
    move-object/from16 v15, v18

    const/16 v16, 0x0

    const/4 v7, 0x0

    move v11, v7

    const p1, 0xac00

    sub-int p1, v9, p1

    move/from16 v0, p1

    int-to-char v0, v0

    move v9, v0

    rem-int/lit8 p1, v9, 0x1c

    move/from16 v0, p1

    int-to-char v0, v0

    move v10, v0

    div-int/lit8 p1, v9, 0x1c

    move/from16 v0, p1

    int-to-char v0, v0

    move v9, v0

    if-lez v10, :cond_121

    const/16 p1, 0x2

    add-int/lit16 v8, v10, 0x11a7

    int-to-char v8, v8

    aput-char v8, v18, p1

    const/16 p1, 0x3

    :goto_f9
    const/4 v8, 0x1

    rem-int/lit8 v19, v9, 0x15

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x1161

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v18, v8

    const/4 v8, 0x0

    div-int/lit8 v19, v9, 0x15

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x1100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v18, v8

    move/from16 v24, v17

    move/from16 v19, p1

    move-wide/from16 v21, v12

    move v12, v7

    goto :goto_ab

    :cond_121
    const/16 p1, 0x2

    goto :goto_f9

    :cond_124
    invoke-static {v12, v13}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32Regular(J)Z

    move-result p1

    if-eqz p1, :cond_145

    const/4 v10, 0x0

    const/16 p1, 0x1

    move/from16 v8, v17

    :goto_12f
    move-object/from16 v0, p8

    move v1, v9

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v7

    if-eqz v7, :cond_167

    const/4 v7, 0x0

    move v11, v7

    const/4 v15, 0x0

    move/from16 v24, v8

    move/from16 v19, p1

    move-wide/from16 v21, v12

    move v12, v7

    goto/16 :goto_ab

    :cond_145
    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_15e

    aget-char v10, p0, v17

    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_15e

    add-int/lit8 v11, v17, 0x1

    const/16 p1, 0x2

    invoke-static {v12, v13, v10}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v7

    move-wide v12, v7

    move v8, v11

    goto :goto_12f

    :cond_15e
    const/4 v10, 0x0

    const/16 p1, 0x1

    const-wide/16 v7, 0x0

    move-wide v12, v7

    move/from16 v8, v17

    goto :goto_12f

    :cond_167
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v15, v0

    and-long/2addr v15, v12

    const-wide/16 v21, 0x0

    cmp-long v7, v15, v21

    if-nez v7, :cond_188

    const-wide/16 v15, 0xff

    const/16 v7, 0x8

    shr-long v21, v12, v7

    and-long v15, v15, v21

    long-to-int v7, v15

    move v11, v7

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v24, v8

    move/from16 v19, p1

    move-wide/from16 v21, v12

    move v12, v7

    goto/16 :goto_ab

    :cond_188
    new-instance p1, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    move-wide v0, v12

    move/from16 v2, v23

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result v16

    sget-object v15, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    move v11, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    move/from16 p1, v0

    const/16 v17, 0x1

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_21b

    aget-char v9, v15, v16

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v24, v8

    move/from16 v19, v7

    move-wide/from16 v21, v12

    move/from16 v12, p1

    goto/16 :goto_ab

    :cond_1c3
    add-int/lit8 v8, v5, 0x1

    aput-char v9, p3, v5

    if-eqz v10, :cond_216

    add-int/lit8 p1, v8, 0x1

    aput-char v10, p3, v8

    move/from16 v8, p1

    move v5, v12

    move/from16 p1, v19

    goto/16 :goto_c6

    :cond_1d4
    if-eqz v11, :cond_212

    if-ge v11, v14, :cond_212

    add-int v8, v5, v19

    add-int v17, v16, v19

    move-object/from16 v12, p3

    move v13, v6

    move v14, v7

    invoke-static/range {v12 .. v17}, Lcom/ibm/icu/impl/NormalizerImpl;->mergeOrdered([CII[CII)I

    move-result p1

    move/from16 v5, p1

    move/from16 p1, v19

    goto/16 :goto_c6

    :cond_1ea
    move/from16 v8, p1

    move/from16 v16, v7

    :goto_1ee
    add-int/lit8 p1, v8, 0x1

    add-int/lit8 v7, v16, 0x1

    aget-char v10, v15, v16

    aput-char v10, p3, v8

    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_1ea

    move/from16 v8, p1

    move/from16 v16, v7

    move/from16 p1, v5

    move v5, v12

    goto/16 :goto_c6

    :cond_203
    add-int v8, v5, v19

    move v5, v12

    move/from16 p1, v19

    goto/16 :goto_c6

    :cond_20a
    move/from16 v7, v24

    move/from16 v19, v5

    move-wide/from16 v12, v21

    goto/16 :goto_2f

    :cond_212
    move v8, v5

    move/from16 v5, v19

    goto :goto_1ee

    :cond_216
    move v5, v12

    move/from16 p1, v19

    goto/16 :goto_c6

    :cond_21b
    move/from16 v24, v8

    move/from16 v19, v7

    move-wide/from16 v21, v12

    move/from16 v12, p1

    goto/16 :goto_ab

    :cond_225
    move v5, v8

    goto/16 :goto_82
.end method

.method private static decomposeFCD([CII[C[ILcom/ibm/icu/text/UnicodeSet;)I
    .registers 24

    const/4 v12, 0x0

    const/4 v13, -0x1

    new-instance v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    const/4 v3, 0x0

    aget v6, p4, v3

    move v4, v6

    const/4 v3, 0x0

    move v9, v3

    move/from16 v5, p1

    move v3, v6

    :goto_11
    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_ea

    add-int/lit8 p1, v5, 0x1

    aget-char v7, p0, v5

    invoke-static {v7}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32Regular(J)Z

    move-result v8

    if-eqz v8, :cond_63

    const/4 v8, 0x0

    const/4 v10, 0x1

    iput v10, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    :goto_28
    move-object/from16 v0, p5

    move v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v10

    if-eqz v10, :cond_82

    const/4 v5, 0x0

    iput v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    iput v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    const/4 v12, 0x0

    :cond_38
    :goto_38
    iget v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    add-int/2addr v5, v3

    move-object/from16 v0, p3

    array-length v0, v0

    move v6, v0

    if-gt v5, v6, :cond_e4

    move v5, v3

    if-nez v12, :cond_b4

    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-eqz v6, :cond_a8

    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-ge v6, v9, :cond_a8

    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    add-int/2addr v6, v3

    iget v9, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v9}, Lcom/ibm/icu/impl/NormalizerImpl;->insertOrdered([CIIICCI)I

    move-result v3

    iput v3, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    :cond_59
    :goto_59
    iget v3, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    if-nez v3, :cond_ef

    move v4, v6

    move v9, v3

    move/from16 v5, p1

    move v3, v6

    goto :goto_11

    :cond_63
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_7b

    aget-char v8, p0, p1

    invoke-static {v8}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_7b

    add-int/lit8 p1, p1, 0x1

    const/4 v10, 0x2

    iput v10, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    invoke-static {v5, v6, v8}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v5

    goto :goto_28

    :cond_7b
    const/4 v8, 0x0

    const/4 v5, 0x1

    iput v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    const-wide/16 v5, 0x0

    goto :goto_28

    :cond_82
    const-wide/16 v10, 0x4

    and-long/2addr v10, v5

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-nez v10, :cond_98

    const-wide/16 v10, 0xff

    const/16 v12, 0x8

    shr-long/2addr v5, v12

    and-long/2addr v5, v10

    long-to-int v5, v5

    iput v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    iput v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    const/4 v12, 0x0

    goto :goto_38

    :cond_98
    invoke-static {v5, v6, v15}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JLcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result v13

    sget-object v12, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    iget v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_38

    aget-char v7, v12, v13

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_38

    :cond_a8
    add-int/lit8 v6, v3, 0x1

    aput-char v7, p3, v3

    if-eqz v8, :cond_59

    add-int/lit8 v3, v6, 0x1

    aput-char v8, p3, v6

    move v6, v3

    goto :goto_59

    :cond_b4
    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-eqz v6, :cond_f5

    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-ge v6, v9, :cond_f5

    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    add-int/2addr v6, v3

    iget v3, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    add-int v14, v13, v3

    move-object/from16 v9, p3

    move v10, v4

    move v11, v5

    invoke-static/range {v9 .. v14}, Lcom/ibm/icu/impl/NormalizerImpl;->mergeOrdered([CII[CII)I

    move-result v3

    iput v3, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->trailCC:I

    goto :goto_59

    :cond_ce
    move v6, v3

    move v13, v5

    :goto_d0
    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v5, v13, 0x1

    aget-char v7, v12, v13

    aput-char v7, p3, v6

    iget v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    if-gtz v6, :cond_ce

    move v6, v3

    move v13, v5

    goto/16 :goto_59

    :cond_e4
    iget v5, v15, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    add-int v6, v3, v5

    goto/16 :goto_59

    :cond_ea
    const/16 p0, 0x0

    aput v3, p4, p0

    return v9

    :cond_ef
    move v9, v3

    move/from16 v5, p1

    move v3, v6

    goto/16 :goto_11

    :cond_f5
    move v6, v3

    goto :goto_d0
.end method

.method private static findNextStarter([CIIIIC)I
    .registers 15

    const v0, 0xff00

    or-int v1, v0, p3

    new-instance v2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    :goto_b
    if-ne p1, p2, :cond_e

    :cond_d
    return p1

    :cond_e
    aget-char v0, p0, p1

    if-lt v0, p5, :cond_d

    invoke-static {v0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v3

    int-to-long v5, v1

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_d

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32LeadSurrogate(J)Z

    move-result v0

    if-eqz v0, :cond_61

    add-int/lit8 v0, p1, 0x1

    if-eq v0, p2, :cond_d

    add-int/lit8 v0, p1, 0x1

    aget-char v0, p0, v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v3

    int-to-long v5, v1

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_d

    :goto_3e
    int-to-long v5, p4

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5c

    invoke-static {v3, v4, p4, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result v3

    iget v4, v2, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-nez v4, :cond_5c

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    invoke-static {v4, v3, p3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32([CII)J

    move-result-wide v3

    int-to-long v5, p3

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    :cond_5c
    if-nez v0, :cond_63

    const/4 v0, 0x1

    :goto_5f
    add-int/2addr p1, v0

    goto :goto_b

    :cond_61
    const/4 v0, 0x0

    goto :goto_3e

    :cond_63
    const/4 v0, 0x2

    goto :goto_5f
.end method

.method private static findPreviousStarter([CIIIIC)I
    .registers 11

    new-instance v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    iput-object p0, v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->src:[C

    iput p1, v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->start:I

    iput p2, v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    :cond_c
    iget v3, v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->start:I

    iget v4, v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    if-ge v3, v4, :cond_1e

    or-int v3, p3, p4

    invoke-static {v0, p5, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getPrevNorm32(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;II)J

    move-result-wide v1

    invoke-static {v1, v2, p3, p4}, Lcom/ibm/icu/impl/NormalizerImpl;->isTrueStarter(JII)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_1e
    iget v3, v0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    return v3
.end method

.method private static findSafeFCD([CIIC)I
    .registers 8

    const/16 v3, 0xff

    :goto_2
    and-int/lit16 v2, p3, 0xff

    if-nez v2, :cond_7

    :cond_6
    return p1

    :cond_7
    if-eq p1, p2, :cond_6

    aget-char v0, p0, p1

    const/16 v2, 0x300

    if-lt v0, v2, :cond_6

    invoke-static {v0}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_20

    if-le p3, v3, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_20
    add-int/lit8 v2, p1, 0x1

    if-eq v2, p2, :cond_6

    add-int/lit8 v2, p1, 0x1

    aget-char v1, p0, v2

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p3, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result p3

    if-le p3, v3, :cond_6

    add-int/lit8 p1, p1, 0x2

    goto :goto_2
.end method

.method private static foldCase(I[CIII)I
    .registers 10

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    :goto_d
    array-length v4, v0

    if-ge v2, v4, :cond_1b

    if-ge p2, p3, :cond_16

    aget-char v4, v0, v2

    aput-char v4, p1, p2

    :cond_16
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    if-ne p0, v4, :cond_24

    neg-int v4, p2

    :goto_23
    return v4

    :cond_24
    move v4, p2

    goto :goto_23
.end method

.method public static getCanonStartSet(ILcom/ibm/icu/impl/USerializedSet;)Z
    .registers 19

    if-eqz p1, :cond_163

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    if-eqz v3, :cond_163

    const/4 v4, 0x0

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v5, v0

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    check-cast v3, [C

    move-object v0, v3

    check-cast v0, [C

    move-object v10, v0

    const v3, 0xffff

    move/from16 v0, p0

    move v1, v3

    if-gt v0, v1, :cond_7f

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    const/4 v6, 0x2

    aget-object v3, v3, v6

    check-cast v3, [C

    move-object v0, v3

    check-cast v0, [C

    move-object v7, v0

    const/4 v6, 0x0

    array-length v3, v7

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    :goto_37
    const/4 v3, 0x2

    sub-int v3, v4, v3

    if-ge v6, v3, :cond_4e

    add-int v3, v6, v4

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x2

    int-to-char v3, v3

    aget-char v8, v7, v3

    move/from16 v0, p0

    move v1, v8

    if-ge v0, v1, :cond_4c

    move v4, v3

    goto :goto_37

    :cond_4c
    move v6, v3

    goto :goto_37

    :cond_4e
    aget-char v3, v7, v6

    move/from16 v0, p0

    move v1, v3

    if-ne v0, v1, :cond_163

    add-int/lit8 p0, v6, 0x1

    aget-char p0, v7, p0

    const v3, 0xc000

    and-int v3, v3, p0

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_75

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0x3fff

    move/from16 p0, v0

    array-length v3, v5

    sub-int p0, p0, v3

    move-object/from16 v0, p1

    move-object v1, v10

    move/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/USerializedSet;->getSet([CI)Z

    move-result p0

    :goto_74
    return p0

    :cond_75
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/USerializedSet;->setToOne(I)V

    const/16 p0, 0x1

    goto :goto_74

    :cond_7f
    const/4 v6, 0x0

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->canonStartSets:[Ljava/lang/Object;

    const/4 v7, 0x3

    aget-object v3, v3, v7

    check-cast v3, [C

    move-object v0, v3

    check-cast v0, [C

    move-object v11, v0

    const/4 v9, 0x0

    array-length v7, v11

    shr-int/lit8 v3, p0, 0x10

    int-to-char v3, v3

    move/from16 v0, p0

    int-to-char v0, v0

    move v8, v0

    move/from16 p0, v4

    move v4, v6

    move v6, v7

    :cond_98
    :goto_98
    const/16 p0, 0x3

    sub-int p0, v6, p0

    move v0, v9

    move/from16 v1, p0

    if-ge v0, v1, :cond_124

    add-int p0, v9, v6

    div-int/lit8 p0, p0, 0x6

    mul-int/lit8 p0, p0, 0x3

    move/from16 v0, p0

    int-to-char v0, v0

    move/from16 p0, v0

    aget-char v4, v11, p0

    and-int/lit8 v4, v4, 0x1f

    int-to-char v4, v4

    add-int/lit8 v7, p0, 0x1

    aget-char v12, v11, v7

    move v7, v8

    if-lt v3, v4, :cond_bc

    if-le v12, v7, :cond_121

    if-ne v3, v4, :cond_121

    :cond_bc
    move/from16 v6, p0

    :goto_be
    invoke-static {}, Lcom/ibm/icu/impl/ICUDebug;->enabled()Z

    move-result v13

    if-eqz v13, :cond_98

    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\t\t j = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v4, v15}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    move/from16 v0, p0

    move v1, v15

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t high = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/ibm/icu/impl/Utility;->hex(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t low = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v7, v15}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "\t table[i+1]: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v14, 0x4

    invoke-static {v12, v14}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_121
    move/from16 v9, p0

    goto :goto_be

    :cond_124
    aget-char p0, v11, v9

    add-int/lit8 v4, v9, 0x1

    aget-char v6, v11, v4

    move v4, v8

    and-int/lit8 v7, p0, 0x1f

    if-ne v3, v7, :cond_163

    if-ne v4, v6, :cond_163

    add-int/lit8 v3, v9, 0x2

    aget-char v3, v11, v3

    move v3, v3

    const v4, 0x8000

    and-int v4, v4, p0

    if-nez v4, :cond_14e

    move-object v0, v5

    array-length v0, v0

    move/from16 p0, v0

    sub-int p0, v3, p0

    move-object/from16 v0, p1

    move-object v1, v10

    move/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/USerializedSet;->getSet([CI)Z

    move-result p0

    goto/16 :goto_74

    :cond_14e
    move/from16 v0, p0

    and-int/lit16 v0, v0, 0x1f00

    move/from16 p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int p0, p0, v3

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/USerializedSet;->setToOne(I)V

    const/16 p0, 0x1

    goto/16 :goto_74

    :cond_163
    const/16 p0, 0x0

    goto/16 :goto_74
.end method

.method public static getCombiningClass(I)I
    .registers 7

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(I)J

    move-result-wide v0

    const/16 v2, 0x8

    shr-long v2, v0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-char v2, v2

    return v2
.end method

.method private static getCombiningIndexFromStarter(CC)I
    .registers 7

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v0

    if-eqz p1, :cond_a

    invoke-static {v0, v1, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v0

    :cond_a
    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->getExtraDataIndex(J)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-char v2, v2, v3

    return v2
.end method

.method public static getDecomposition(IZ[CII)I
    .registers 12

    const-wide v0, 0xffffffffL

    int-to-long v2, p0

    and-long/2addr v0, v2

    const-wide/32 v2, 0x10ffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_ae

    if-nez p1, :cond_22

    sget-object p1, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/16 v0, 0x8

    aget p1, p1, v0

    const/4 v0, 0x4

    move v2, v0

    :goto_18
    if-ge p0, p1, :cond_2c

    if-lez p4, :cond_20

    const/4 p1, 0x0

    int-to-char p0, p0

    aput-char p0, p2, p1

    :cond_20
    const/4 p0, -0x1

    :goto_21
    return p0

    :cond_22
    sget-object p1, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    const/16 v0, 0x9

    aget p1, p1, v0

    const/16 v0, 0x8

    move v2, v0

    goto :goto_18

    :cond_2c
    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(I)J

    move-result-wide v0

    int-to-long v3, v2

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_58

    const p1, 0xffff

    if-gt p0, p1, :cond_45

    if-lez p4, :cond_43

    const/4 p1, 0x0

    int-to-char p0, p0

    aput-char p0, p2, p1

    :cond_43
    const/4 p0, -0x1

    goto :goto_21

    :cond_45
    const/4 p1, 0x2

    if-lt p4, p1, :cond_56

    const/4 p1, 0x0

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result p4

    aput-char p4, p2, p1

    const/4 p1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p0

    aput-char p0, p2, p1

    :cond_56
    const/4 p0, -0x2

    goto :goto_21

    :cond_58
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32HangulOrJamo(J)Z

    move-result p1

    if-eqz p1, :cond_8a

    const p1, 0xac00

    sub-int/2addr p0, p1

    rem-int/lit8 p1, p0, 0x1c

    int-to-char p1, p1

    div-int/lit8 p0, p0, 0x1c

    if-lez p1, :cond_88

    const/4 v0, 0x3

    if-lt p4, v0, :cond_72

    const/4 v0, 0x2

    add-int/lit16 p1, p1, 0x11a7

    int-to-char p1, p1

    aput-char p1, p2, v0

    :cond_72
    const/4 p1, 0x3

    :goto_73
    const/4 v0, 0x2

    if-lt p4, v0, :cond_86

    const/4 p4, 0x1

    rem-int/lit8 v0, p0, 0x15

    add-int/lit16 v0, v0, 0x1161

    int-to-char v0, v0

    aput-char v0, p2, p4

    const/4 p4, 0x0

    div-int/lit8 p0, p0, 0x15

    add-int/lit16 p0, p0, 0x1100

    int-to-char p0, p0

    aput-char p0, p2, p4

    :cond_86
    move p0, p1

    goto :goto_21

    :cond_88
    const/4 p1, 0x2

    goto :goto_73

    :cond_8a
    new-instance p0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    invoke-static {v0, v1, v2, p0}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    if-gt v0, p4, :cond_aa

    iget p4, p0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    add-int/2addr p4, p1

    move v0, p1

    :goto_9c
    add-int/lit8 p1, p3, 0x1

    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v2, v0

    aput-char v0, p2, p3

    if-lt v1, p4, :cond_b1

    move p3, p1

    move p1, v1

    :cond_aa
    iget p0, p0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->length:I

    goto/16 :goto_21

    :cond_ae
    const/4 p0, 0x0

    goto/16 :goto_21

    :cond_b1
    move v0, v1

    move p3, p1

    goto :goto_9c
.end method

.method private static getExtraDataIndex(J)I
    .registers 4

    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getFCD16(C)C
    .registers 2

    sget-object v0, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/CharTrie;->getLeadValue(C)C

    move-result v0

    return v0
.end method

.method public static getFCD16(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    return v0
.end method

.method public static getFCD16FromSurrogatePair(CC)C
    .registers 3

    sget-object v0, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getTrailValue(IC)C

    move-result v0

    return v0
.end method

.method public static getFC_NFKC_Closure(I[C)I
    .registers 9

    const/4 v6, 0x0

    if-nez p1, :cond_24

    const/4 v1, 0x0

    :goto_4
    sget-object v5, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v5, p0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    if-eqz v0, :cond_2b

    move v2, v0

    sget-object v5, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    aget-char v4, v5, v2

    const v5, 0xff00

    if-ge v4, v5, :cond_26

    const/4 v3, 0x1

    :goto_19
    if-lez v3, :cond_22

    if-gt v3, v1, :cond_22

    sget-object v5, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    invoke-static {v5, v2, p1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    move v5, v3

    :goto_23
    return v5

    :cond_24
    array-length v1, p1

    goto :goto_4

    :cond_26
    and-int/lit16 v3, v4, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2b
    move v5, v6

    goto :goto_23
.end method

.method public static getFromIndexesArr(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/impl/NormalizerImpl;->indexes:[I

    aget v0, v0, p0

    return v0
.end method

.method public static final getNX(I)Lcom/ibm/icu/text/UnicodeSet;
    .registers 2

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNX(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    goto :goto_5
.end method

.method private static getNextCC(Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;)I
    .registers 8

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->source:[C

    iget v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c:C

    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c:C

    invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v0

    const-wide/32 v2, 0xff00

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    iput-char v6, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    move v2, v6

    :goto_20
    return v2

    :cond_21
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32LeadSurrogate(J)Z

    move-result v2

    if-nez v2, :cond_32

    iput-char v6, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    :goto_29
    const-wide/16 v2, 0xff

    const/16 v4, 0x8

    shr-long v4, v0, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_20

    :cond_32
    iget v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    iget v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    if-eq v2, v3, :cond_53

    iget-object v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->source:[C

    iget v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_53

    iget v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v0

    goto :goto_29

    :cond_53
    iput-char v6, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    move v2, v6

    goto :goto_20
.end method

.method private static getNextCombining(Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;ILcom/ibm/icu/text/UnicodeSet;)I
    .registers 15

    const-wide/16 v10, 0xc0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->source:[C

    iget v5, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    aget-char v4, v4, v5

    iput-char v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    iget-char v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    invoke-static {v4}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v2

    iput-char v8, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    iput v8, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->combiningIndex:I

    iput-char v8, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    const-wide/32 v4, 0xffc0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    move v4, v8

    :goto_26
    return v4

    :cond_27
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32Regular(J)Z

    move-result v4

    if-eqz v4, :cond_39

    :goto_2d
    iget-char v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    iget-char v5, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    invoke-static {p2, v4, v5}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v4

    if-eqz v4, :cond_77

    move v4, v8

    goto :goto_26

    :cond_39
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32HangulOrJamo(J)Z

    move-result v4

    if-eqz v4, :cond_54

    const-wide v4, 0xffffffffL

    const-wide/32 v6, 0xfff0

    const/16 v8, 0x10

    shr-long v8, v2, v8

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->combiningIndex:I

    and-long v4, v2, v10

    long-to-int v4, v4

    goto :goto_26

    :cond_54
    iget v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    if-eq v4, p1, :cond_73

    iget-object v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->source:[C

    iget v5, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    aget-char v4, v4, v5

    iput-char v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_73

    iget v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    iget-char v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v2

    goto :goto_2d

    :cond_73
    iput-char v8, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    move v4, v8

    goto :goto_26

    :cond_77
    const/16 v4, 0x8

    shr-long v4, v2, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    and-long v4, v2, v10

    long-to-int v0, v4

    if-eqz v0, :cond_96

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getExtraDataIndex(J)I

    move-result v1

    if-lez v1, :cond_98

    sget-object v4, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    const/4 v5, 0x1

    sub-int v5, v1, v5

    aget-char v4, v4, v5

    :goto_94
    iput v4, p0, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->combiningIndex:I

    :cond_96
    move v4, v0

    goto :goto_26

    :cond_98
    move v4, v8

    goto :goto_94
.end method

.method public static getNorm32(C)J
    .registers 5

    const-wide v0, 0xffffffffL

    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v2, p0}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getNorm32(I)J
    .registers 5

    const-wide v0, 0xffffffffL

    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;

    invoke-virtual {v2, p0}, Lcom/ibm/icu/impl/IntTrie;->getCodePointValue(I)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getNorm32([CII)J
    .registers 9

    aget-char v2, p0, p1

    invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v0

    int-to-long v2, p2

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32LeadSurrogate(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v2, p1, 0x1

    aget-char v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v0

    :cond_1c
    return-wide v0
.end method

.method public static getNorm32FromSurrogatePair(JC)J
    .registers 7

    const-wide v0, 0xffffffffL

    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;

    long-to-int v3, p0

    invoke-virtual {v2, v3, p2}, Lcom/ibm/icu/impl/IntTrie;->getTrailValue(IC)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getPrevCC(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;)I
    .registers 6

    const-wide/16 v0, 0xff

    const/16 v2, 0x300

    const v3, 0xff00

    invoke-static {p0, v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getPrevNorm32(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;II)J

    move-result-wide v2

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static getPrevNorm32(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;II)J
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->src:[C

    iget v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c:C

    iput-char v7, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c2:C

    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c:C

    if-ge v2, p1, :cond_17

    move-wide v2, v4

    :goto_16
    return-wide v2

    :cond_17
    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c:C

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_26

    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c:C

    invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v2

    goto :goto_16

    :cond_26
    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c:C

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_30

    move-wide v2, v4

    goto :goto_16

    :cond_30
    iget v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    iget v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->start:I

    if-eq v2, v3, :cond_5f

    iget-object v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->src:[C

    iget v3, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    sub-int/2addr v3, v6

    aget-char v2, v2, v3

    iput-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c2:C

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c2:C

    invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v0

    int-to-long v2, p2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_58

    move-wide v2, v4

    goto :goto_16

    :cond_58
    iget-char v2, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c:C

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v2

    goto :goto_16

    :cond_5f
    iput-char v7, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->c2:C

    move-wide v2, v4

    goto :goto_16
.end method

.method public static getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;
    .registers 5

    sget-object v0, Lcom/ibm/icu/impl/NormalizerImpl;->unicodeVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/NormalizerImpl;->unicodeVersion:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl;->unicodeVersion:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->unicodeVersion:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static insertOrdered([CIIICCI)I
    .registers 14

    move v5, p6

    if-ge p1, p2, :cond_32

    if-eqz p6, :cond_32

    move v0, p2

    move v1, p2

    new-instance v2, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    iput p2, v2, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    iput p1, v2, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->start:I

    iput-object p0, v2, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->src:[C

    invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getPrevCC(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;)I

    move-result v3

    iget v1, v2, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    if-ge p6, v3, :cond_32

    move v5, v3

    move v0, v1

    :goto_1d
    if-ge p1, v1, :cond_27

    invoke-static {v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getPrevCC(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;)I

    move-result v3

    iget v1, v2, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    if-lt p6, v3, :cond_3b

    :cond_27
    move v4, p3

    :cond_28
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 p2, p2, -0x1

    aget-char v6, p0, p2

    aput-char v6, p0, v4

    if-ne v0, p2, :cond_28

    :cond_32
    aput-char p4, p0, p2

    if-eqz p5, :cond_3a

    add-int/lit8 v6, p2, 0x1

    aput-char p5, p0, v6

    :cond_3a
    return v5

    :cond_3b
    move v0, v1

    goto :goto_1d
.end method

.method private static final declared-synchronized internalGetNX(I)Lcom/ibm/icu/text/UnicodeSet;
    .registers 5

    const-class v2, Lcom/ibm/icu/impl/NormalizerImpl;

    monitor-enter v2

    and-int/lit16 p0, p0, 0xff

    :try_start_5
    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v3, v3, p0

    if-nez v3, :cond_59

    const/4 v3, 0x1

    if-ne p0, v3, :cond_14

    invoke-static {}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNXHangul()Lcom/ibm/icu/text/UnicodeSet;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_5e

    move-result-object v3

    :goto_12
    monitor-exit v2

    return-object v3

    :cond_14
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1c

    :try_start_17
    invoke-static {}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNXCJKCompat()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v3

    goto :goto_12

    :cond_1c
    and-int/lit16 v3, p0, 0xe0

    if-eqz v3, :cond_29

    and-int/lit8 v3, p0, 0x1f

    if-nez v3, :cond_29

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNXUnicode(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v3

    goto :goto_12

    :cond_29
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_3b

    invoke-static {}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNXHangul()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    :cond_3b
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_48

    invoke-static {}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNXCJKCompat()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    :cond_48
    and-int/lit16 v3, p0, 0xe0

    if-eqz v3, :cond_55

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->internalGetNXUnicode(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    :cond_55
    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    aput-object v1, v3, p0

    :cond_59
    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v3, v3, p0
    :try_end_5d
    .catchall {:try_start_17 .. :try_end_5d} :catchall_5e

    goto :goto_12

    :catchall_5e
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static final declared-synchronized internalGetNXCJKCompat()Lcom/ibm/icu/text/UnicodeSet;
    .registers 12

    const-class v7, Lcom/ibm/icu/impl/NormalizerImpl;

    monitor-enter v7

    :try_start_3
    sget-object v8, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    if-nez v8, :cond_45

    new-instance v5, Lcom/ibm/icu/text/UnicodeSet;

    const-string v8, "[:Ideographic:]"

    invoke-direct {v5, v8}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    new-instance v2, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v5}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    :cond_1b
    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSetIterator;->nextRange()Z

    move-result v8

    if-eqz v8, :cond_40

    iget v8, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    sget v9, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v8, v9, :cond_40

    iget v6, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    iget v0, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepointEnd:I

    :goto_2b
    if-gt v6, v0, :cond_1b

    invoke-static {v6}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(I)J

    move-result-wide v3

    const-wide/16 v8, 0x4

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3d

    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_40
    sget-object v8, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    const/4 v9, 0x2

    aput-object v1, v8, v9

    :cond_45
    sget-object v8, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    const/4 v9, 0x2

    aget-object v8, v8, v9
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4c

    monitor-exit v7

    return-object v8

    :catchall_4c
    move-exception v8

    monitor-exit v7

    throw v8
.end method

.method private static final declared-synchronized internalGetNXHangul()Lcom/ibm/icu/text/UnicodeSet;
    .registers 6

    const-class v0, Lcom/ibm/icu/impl/NormalizerImpl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_1a

    sget-object v1, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x1

    new-instance v3, Lcom/ibm/icu/text/UnicodeSet;

    const v4, 0xac00

    const v5, 0xd7a3

    invoke-direct {v3, v4, v5}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    aput-object v3, v1, v2

    :cond_1a
    sget-object v1, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final declared-synchronized internalGetNXUnicode(I)Lcom/ibm/icu/text/UnicodeSet;
    .registers 5

    const/4 v3, 0x0

    const-class v1, Lcom/ibm/icu/impl/NormalizerImpl;

    monitor-enter v1

    and-int/lit16 p0, p0, 0xe0

    if-nez p0, :cond_b

    move-object v2, v3

    :goto_9
    monitor-exit v1

    return-object v2

    :cond_b
    :try_start_b
    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v2, v2, p0

    if-nez v2, :cond_24

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    packed-switch p0, :pswitch_data_2c

    move-object v2, v3

    goto :goto_9

    :pswitch_1b
    const-string v2, "[:^Age=3.2:]"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    aput-object v0, v2, p0

    :cond_24
    sget-object v2, Lcom/ibm/icu/impl/NormalizerImpl;->nxCache:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v2, v2, p0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_29

    goto :goto_9

    :catchall_29
    move-exception v2

    monitor-exit v1

    throw v2

    :pswitch_data_2c
    .packed-switch 0x20
        :pswitch_1b
    .end packed-switch
.end method

.method public static isCanonSafeStart(I)Z
    .registers 4

    const/4 v2, 0x0

    sget-boolean v1, Lcom/ibm/icu/impl/NormalizerImpl;->isFormatVersion_2_1:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    and-int/lit16 v1, v0, 0x800

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10

    :cond_13
    move v1, v2

    goto :goto_10
.end method

.method public static isFullCompositionExclusion(I)Z
    .registers 4

    const/4 v2, 0x0

    sget-boolean v1, Lcom/ibm/icu/impl/NormalizerImpl;->isFormatVersion_2_1:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10

    :cond_13
    move v1, v2

    goto :goto_10
.end method

.method private static isHangulWithoutJamoT(C)Z
    .registers 2

    const v0, 0xac00

    sub-int v0, p0, v0

    int-to-char p0, v0

    const/16 v0, 0x2ba4

    if-ge p0, v0, :cond_10

    rem-int/lit8 v0, p0, 0x1c

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isJamoVTNorm32JamoV(J)Z
    .registers 4

    const-wide v0, 0xfff30000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isNFDSafe(JII)Z
    .registers 11

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    int-to-long v1, p2

    and-long/2addr v1, p0

    cmp-long v1, v1, v4

    if-nez v1, :cond_c

    move v1, v3

    :goto_b
    return v1

    :cond_c
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32Regular(J)Z

    move-result v1

    if-eqz v1, :cond_29

    int-to-long v1, p3

    and-long/2addr v1, p0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_29

    new-instance v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    invoke-static {p0, p1, p3, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    iget v1, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-nez v1, :cond_27

    move v1, v3

    goto :goto_b

    :cond_27
    move v1, v6

    goto :goto_b

    :cond_29
    const-wide/32 v1, 0xff00

    and-long/2addr v1, p0

    cmp-long v1, v1, v4

    if-nez v1, :cond_33

    move v1, v3

    goto :goto_b

    :cond_33
    move v1, v6

    goto :goto_b
.end method

.method public static isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;J)Z
    .registers 15

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(I)J

    move-result-wide v1

    and-long v3, v1, p2

    cmp-long v3, v3, v9

    if-eqz v3, :cond_16

    move v3, v7

    :goto_15
    return v3

    :cond_16
    sget-object v3, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    if-eq p1, v3, :cond_22

    sget-object v3, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;

    if-eq p1, v3, :cond_22

    sget-object v3, Lcom/ibm/icu/text/Normalizer;->NONE:Lcom/ibm/icu/text/Normalizer$Mode;

    if-ne p1, v3, :cond_24

    :cond_22
    move v3, v8

    goto :goto_15

    :cond_24
    const-wide/16 v3, 0x4

    and-long/2addr v3, v1

    cmp-long v3, v3, v9

    if-nez v3, :cond_2d

    move v3, v8

    goto :goto_15

    :cond_2d
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32HangulOrJamo(J)Z

    move-result v3

    if-eqz v3, :cond_3e

    int-to-char v3, p0

    invoke-static {v3}, Lcom/ibm/icu/impl/NormalizerImpl;->isHangulWithoutJamoT(C)Z

    move-result v3

    if-nez v3, :cond_3c

    move v3, v8

    goto :goto_15

    :cond_3c
    move v3, v7

    goto :goto_15

    :cond_3e
    sget-boolean v3, Lcom/ibm/icu/impl/NormalizerImpl;->isFormatVersion_2_2:Z

    if-nez v3, :cond_44

    move v3, v7

    goto :goto_15

    :cond_44
    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v3, p0}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    cmp-long v3, v3, v9

    if-nez v3, :cond_54

    move v3, v8

    goto :goto_15

    :cond_54
    move v3, v7

    goto :goto_15
.end method

.method private static isNorm32HangulOrJamo(J)Z
    .registers 4

    const-wide v0, 0xfff00000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isNorm32LeadSurrogate(J)Z
    .registers 4

    const-wide v0, 0xfc000000L

    cmp-long v0, v0, p0

    if-gtz v0, :cond_14

    const-wide v0, 0xfff00000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isNorm32Regular(J)Z
    .registers 4

    const-wide v0, 0xfc000000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isTrueStarter(JII)Z
    .registers 14

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    int-to-long v3, p2

    and-long/2addr v3, p0

    cmp-long v3, v3, v7

    if-nez v3, :cond_b

    move v3, v9

    :goto_a
    return v3

    :cond_b
    int-to-long v3, p3

    and-long/2addr v3, p0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2f

    new-instance v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    invoke-static {p0, p1, p3, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->decompose(JILcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;)I

    move-result v1

    iget v3, v0, Lcom/ibm/icu/impl/NormalizerImpl$DecomposeArgs;->cc:I

    if-nez v3, :cond_2f

    and-int/lit8 v2, p2, 0x3f

    sget-object v3, Lcom/ibm/icu/impl/NormalizerImpl;->extraData:[C

    invoke-static {v3, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32([CII)J

    move-result-wide v3

    int-to-long v5, v2

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-nez v3, :cond_2f

    move v3, v9

    goto :goto_a

    :cond_2f
    const/4 v3, 0x0

    goto :goto_a
.end method

.method public static makeFCD([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
    .registers 22

    move/from16 v6, p1

    move/from16 v7, p4

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v11, 0x0

    aput v7, v9, v11

    :goto_d
    move/from16 v13, p1

    move v12, v10

    :goto_10
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_55

    move v10, v8

    move v11, v5

    :goto_18
    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_fd

    sub-int v5, p1, v13

    add-int v8, v7, v5

    move v0, v8

    move/from16 v1, p5

    if-gt v0, v1, :cond_2f

    move-object v0, p0

    move v1, v13

    move-object/from16 v2, p3

    move v3, v7

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    add-int/2addr v5, v7

    move/from16 v8, p1

    if-gez v12, :cond_f8

    neg-int v6, v12

    move-object/from16 v0, p6

    move v1, v6

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result v6

    if-nez v6, :cond_68

    neg-int v6, v12

    invoke-static {v6}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    move v7, v6

    :goto_46
    const/4 v6, 0x1

    sub-int v6, v8, v6

    move v13, v7

    move v14, v8

    move v8, v5

    :goto_4c
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_6b

    sub-int p0, v8, p4

    return p0

    :cond_55
    aget-char v5, p0, p1

    const/16 v10, 0x300

    if-ge v5, v10, :cond_60

    neg-int v10, v5

    :goto_5c
    add-int/lit8 p1, p1, 0x1

    move v12, v10

    goto :goto_10

    :cond_60
    invoke-static {v5}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(C)C

    move-result v8

    if-nez v8, :cond_102

    const/4 v10, 0x0

    goto :goto_5c

    :cond_68
    const/4 v6, 0x0

    move v7, v6

    goto :goto_46

    :cond_6b
    if-nez v13, :cond_6e

    move v6, v14

    :cond_6e
    add-int/lit8 p1, p1, 0x1

    invoke-static {v11}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_be

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_bb

    aget-char v5, p0, p1

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_bb

    add-int/lit8 p1, p1, 0x1

    int-to-char v7, v10

    invoke-static {v7, v5}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16FromSurrogatePair(CC)C

    move-result v7

    :goto_8b
    move-object/from16 v0, p6

    move v1, v11

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v10

    if-eqz v10, :cond_f6

    const/4 v7, 0x0

    move v12, v7

    :goto_97
    shr-int/lit8 v7, v12, 0x8

    if-eqz v7, :cond_9d

    if-lt v7, v13, :cond_ca

    :cond_9d
    if-nez v7, :cond_a0

    move v6, v14

    :cond_a0
    and-int/lit16 v10, v12, 0xff

    if-nez v5, :cond_c1

    const/4 v7, 0x1

    :goto_a5
    add-int v13, v8, v7

    move v0, v13

    move/from16 v1, p5

    if-gt v0, v1, :cond_c3

    add-int/lit8 v7, v8, 0x1

    aput-char v11, p3, v8

    if-eqz v5, :cond_f2

    add-int/lit8 v8, v7, 0x1

    aput-char v5, p3, v7

    move v5, v11

    move v7, v8

    move v8, v12

    goto/16 :goto_d

    :cond_bb
    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_8b

    :cond_be
    const/4 v5, 0x0

    move v7, v10

    goto :goto_8b

    :cond_c1
    const/4 v7, 0x2

    goto :goto_a5

    :cond_c3
    add-int v5, v8, v7

    move v8, v12

    move v7, v5

    move v5, v11

    goto/16 :goto_d

    :cond_ca
    sub-int v5, v14, v6

    sub-int v5, v8, v5

    int-to-char v7, v12

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/NormalizerImpl;->findSafeFCD([CIIC)I

    move-result p1

    const/4 v7, 0x0

    aput v5, v9, v7

    move-object v5, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/ibm/icu/impl/NormalizerImpl;->decomposeFCD([CII[C[ILcom/ibm/icu/text/UnicodeSet;)I

    move-result v7

    move/from16 v6, p1

    const/4 v5, 0x0

    aget v5, v9, v5

    move v10, v7

    move v8, v12

    move v7, v5

    move v5, v11

    goto/16 :goto_d

    :cond_f2
    move v8, v12

    move v5, v11

    goto/16 :goto_d

    :cond_f6
    move v12, v7

    goto :goto_97

    :cond_f8
    move v13, v12

    move v14, v8

    move v8, v5

    goto/16 :goto_4c

    :cond_fd
    move v8, v7

    move v14, v13

    move v13, v12

    goto/16 :goto_4c

    :cond_102
    move v10, v8

    move v11, v5

    goto/16 :goto_18
.end method

.method private static mergeOrdered([CII[CII)I
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerImpl;->mergeOrdered([CII[CIIZ)I

    move-result v0

    return v0
.end method

.method private static mergeOrdered([CII[CIIZ)I
    .registers 16

    const/4 v0, 0x0

    if-ne p2, p4, :cond_32

    const/4 v1, 0x1

    move v7, v1

    :goto_5
    new-instance v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    iput-object p3, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->source:[C

    iput p4, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    iput p5, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    if-ne p1, p2, :cond_15

    if-nez p6, :cond_8d

    :cond_15
    move p4, v0

    :goto_16
    iget p5, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    iget v0, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    if-ge p5, v0, :cond_2a

    invoke-static {v8}, Lcom/ibm/icu/impl/NormalizerImpl;->getNextCC(Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;)I

    move-result v6

    if-nez v6, :cond_49

    const/4 p5, 0x0

    if-eqz v7, :cond_35

    iget p2, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    :goto_27
    if-eqz p6, :cond_46

    move p4, p5

    :cond_2a
    :goto_2a
    iget p5, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    iget p6, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    if-ne p5, p6, :cond_5f

    move p0, p4

    :goto_31
    return p0

    :cond_32
    const/4 v1, 0x0

    move v7, v1

    goto :goto_5

    :cond_35
    add-int/lit8 p4, p2, 0x1

    iget-char v0, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c:C

    aput-char v0, p3, p2

    iget-char p2, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    if-eqz p2, :cond_8b

    add-int/lit8 p2, p4, 0x1

    iget-char v0, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    aput-char v0, p3, p4

    goto :goto_27

    :cond_46
    move p1, p2

    move p4, p5

    goto :goto_16

    :cond_49
    iget-char p4, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    if-nez p4, :cond_5d

    const/4 p4, 0x1

    :goto_4e
    add-int v3, p2, p4

    iget-char v4, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c:C

    iget-char v5, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->c2:C

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/NormalizerImpl;->insertOrdered([CIIICCI)I

    move-result p4

    move p2, v3

    goto :goto_16

    :cond_5d
    const/4 p4, 0x2

    goto :goto_4e

    :cond_5f
    if-nez v7, :cond_76

    :goto_61
    add-int/lit8 p4, p2, 0x1

    iget p5, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    add-int/lit8 p6, p5, 0x1

    iput p6, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    aget-char p5, p3, p5

    aput-char p5, p0, p2

    iget p2, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->next:I

    iget p5, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    if-ne p2, p5, :cond_89

    iput p4, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    move p2, p4

    :cond_76
    new-instance p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    iput-object p3, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->src:[C

    iput p1, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->start:I

    iget p1, v8, Lcom/ibm/icu/impl/NormalizerImpl$NextCCArgs;->limit:I

    iput p1, p0, Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;->current:I

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getPrevCC(Lcom/ibm/icu/impl/NormalizerImpl$PrevArgs;)I

    move-result p0

    goto :goto_31

    :cond_89
    move p2, p4

    goto :goto_61

    :cond_8b
    move p2, p4

    goto :goto_27

    :cond_8d
    move p4, v0

    goto :goto_2a
.end method

.method private static moveToNext(II)I
    .registers 3

    if-lez p1, :cond_5

    add-int v0, p0, p1

    :goto_4
    return v0

    :cond_5
    add-int/lit8 v0, p0, 0x1

    goto :goto_4
.end method

.method private static final nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z
    .registers 4

    if-eqz p0, :cond_12

    if-nez p2, :cond_d

    move v0, p1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v0

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static final nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z
    .registers 3

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final quickCheck(II)I
    .registers 6

    const/4 v2, 0x6

    new-array v1, v2, [I

    fill-array-data v1, :array_1c

    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(I)J

    move-result-wide v2

    long-to-int v2, v2

    aget v3, v1, p1

    and-int v0, v2, v3

    if-nez v0, :cond_13

    const/4 v2, 0x1

    :goto_12
    return v2

    :cond_13
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    goto :goto_12

    :cond_19
    const/4 v2, 0x2

    goto :goto_12

    nop

    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static quickCheck([CIIIIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .registers 26

    new-instance v15, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    move/from16 v4, p1

    sget-boolean v3, Lcom/ibm/icu/impl/NormalizerImpl;->isDataLoaded:Z

    if-nez v3, :cond_f

    sget-object p0, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    :goto_e
    return-object p0

    :cond_f
    const v3, 0xff00

    or-int v6, v3, p4

    sget-object v5, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v3, 0x0

    move-object/from16 v17, v5

    move v9, v3

    move/from16 v3, p1

    :goto_1c
    move v0, v3

    move/from16 v1, p2

    if-ne v0, v1, :cond_26

    move/from16 p1, v3

    move-object/from16 p0, v17

    goto :goto_e

    :cond_26
    add-int/lit8 p1, v3, 0x1

    aget-char v3, p0, v3

    move v0, v3

    move/from16 v1, p3

    if-lt v0, v1, :cond_71

    invoke-static {v3}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32(C)J

    move-result-wide v7

    int-to-long v10, v6

    and-long/2addr v10, v7

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_71

    invoke-static {v7, v8}, Lcom/ibm/icu/impl/NormalizerImpl;->isNorm32LeadSurrogate(J)Z

    move-result v5

    if-eqz v5, :cond_7a

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_76

    aget-char v5, p0, p1

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_76

    add-int/lit8 p1, p1, 0x1

    invoke-static {v7, v8, v5}, Lcom/ibm/icu/impl/NormalizerImpl;->getNorm32FromSurrogatePair(JC)J

    move-result-wide v7

    :goto_55
    move-object/from16 v0, p7

    move v1, v3

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v3

    if-eqz v3, :cond_61

    const-wide/16 v7, 0x0

    :cond_61
    const/16 v3, 0x8

    shr-long v10, v7, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v3, v10

    int-to-char v3, v3

    if-eqz v3, :cond_7c

    if-ge v3, v9, :cond_7c

    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    goto :goto_e

    :cond_71
    const/4 v3, 0x0

    move v9, v3

    move/from16 v3, p1

    goto :goto_1c

    :cond_76
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    goto :goto_55

    :cond_7a
    const/4 v5, 0x0

    goto :goto_55

    :cond_7c
    move/from16 v16, v3

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v9, v0

    and-long/2addr v7, v9

    const-wide/16 v9, 0xf

    and-long/2addr v9, v7

    const-wide/16 v11, 0x1

    cmp-long v3, v9, v11

    if-ltz v3, :cond_8f

    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    goto :goto_e

    :cond_8f
    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_fb

    if-eqz p6, :cond_a1

    sget-object v3, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-object/from16 v17, v3

    move/from16 v9, v16

    move/from16 v3, p1

    goto/16 :goto_1c

    :cond_a1
    shl-int/lit8 v3, p4, 0x2

    and-int/lit8 v7, v3, 0xf

    const/4 v3, 0x1

    sub-int v5, p1, v3

    aget-char v3, p0, v5

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_b2

    add-int/lit8 v5, v5, -0x1

    :cond_b2
    move/from16 v0, p3

    int-to-char v0, v0

    move v8, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/ibm/icu/impl/NormalizerImpl;->findPreviousStarter([CIIIIC)I

    move-result v5

    move/from16 v0, p3

    int-to-char v0, v0

    move v13, v0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p4

    move v12, v7

    invoke-static/range {v8 .. v13}, Lcom/ibm/icu/impl/NormalizerImpl;->findNextStarter([CIIIIC)I

    move-result p1

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->prevCC:I

    move-object v8, v15

    move v9, v5

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p5

    move-object/from16 v14, p7

    invoke-static/range {v8 .. v14}, Lcom/ibm/icu/impl/NormalizerImpl;->composePart(Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;I[CIIILcom/ibm/icu/text/UnicodeSet;)[C

    move-result-object v8

    const/4 v9, 0x0

    iget v10, v15, Lcom/ibm/icu/impl/NormalizerImpl$ComposePartArgs;->length:I

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move v12, v5

    move/from16 v13, p1

    invoke-static/range {v8 .. v14}, Lcom/ibm/icu/impl/NormalizerImpl;->strCompare([CII[CIIZ)I

    move-result v3

    if-eqz v3, :cond_f5

    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    goto/16 :goto_e

    :cond_f5
    move/from16 v9, v16

    move/from16 v3, p1

    goto/16 :goto_1c

    :cond_fb
    move/from16 v9, v16

    move/from16 v3, p1

    goto/16 :goto_1c
.end method

.method private static recompose(Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;ILcom/ibm/icu/text/UnicodeSet;)C
    .registers 23

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x2

    new-array v7, v3, [I

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;-><init>(Lcom/ibm/icu/impl/NormalizerImpl$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v11, v0

    iput-object v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->source:[C

    const/4 v11, 0x0

    iput-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    const/4 v11, 0x0

    iput-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    move v14, v5

    move v15, v8

    move/from16 v17, v10

    move/from16 v16, v9

    move v8, v4

    move v5, v3

    :cond_24
    :goto_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v3, v0

    iput v3, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v3, v0

    move-object v0, v6

    move v1, v3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->getNextCombining(Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;ILcom/ibm/icu/text/UnicodeSet;)I

    move-result v4

    iget v3, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->combiningIndex:I

    iget v9, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->start:I

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_210

    const/4 v9, -0x1

    if-eq v14, v9, :cond_210

    const v9, 0x8000

    and-int/2addr v9, v3

    if-eqz v9, :cond_183

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move v9, v0

    if-nez v9, :cond_57

    if-nez v8, :cond_210

    :cond_57
    const/4 v9, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v10, v0

    aget-char v10, v10, v14

    iput-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    const v10, 0xfff2

    if-ne v3, v10, :cond_120

    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    const/16 v11, 0x1100

    sub-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    const/16 v11, 0x13

    if-ge v10, v11, :cond_14e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const v10, 0xac00

    iget-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    mul-int/lit8 v11, v11, 0x15

    iget-char v12, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    const/16 v13, 0x1161

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x1c

    add-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v11, v0

    if-eq v10, v11, :cond_102

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v11, v0

    aget-char v10, v10, v11

    const/16 v11, 0x11a7

    sub-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    const/16 v11, 0x1c

    if-ge v10, v11, :cond_102

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v10, v0

    add-int/lit8 v10, v10, 0x1

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    iget-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    add-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    :goto_c5
    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    move-object/from16 v0, p2

    move v1, v10

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result v10

    if-nez v10, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v10, v0

    iget-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    aput-char v11, v10, v14

    move v13, v9

    :goto_da
    const/4 v9, -0x1

    if-eq v13, v9, :cond_15a

    move v9, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v10, v0

    move v11, v10

    :goto_e4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v10, v0

    if-ge v11, v10, :cond_150

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    aget-char v11, v19, v11

    aput-char v11, v18, v9

    move v11, v12

    move v9, v10

    goto :goto_e4

    :cond_102
    const/16 v4, 0x40

    goto :goto_c5

    :cond_105
    iget-char v9, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    invoke-static {v9}, Lcom/ibm/icu/impl/NormalizerImpl;->isHangulWithoutJamoT(C)Z

    move-result v9

    if-nez v9, :cond_119

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    :cond_119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v9, v0

    move v13, v9

    goto :goto_da

    :cond_120
    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    invoke-static {v10}, Lcom/ibm/icu/impl/NormalizerImpl;->isHangulWithoutJamoT(C)Z

    move-result v10

    if-eqz v10, :cond_14e

    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    iget-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c:C

    const/16 v12, 0x11a7

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    iget-char v10, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    move-object/from16 v0, p2

    move v1, v10

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;I)Z

    move-result v10

    if-nez v10, :cond_14e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v10, v0

    iget-char v11, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    aput-char v11, v10, v14

    :cond_14e
    move v13, v9

    goto :goto_da

    :cond_150
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    :cond_15a
    const/4 v9, 0x0

    iput-char v9, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    if-eqz v4, :cond_210

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v5, v0

    if-ne v3, v5, :cond_17d

    move v0, v8

    int-to-char v0, v0

    move/from16 p0, v0

    move/from16 p2, v14

    move v3, v15

    move/from16 p1, v8

    move/from16 v5, v17

    move/from16 v6, p0

    move/from16 p0, v4

    move/from16 v4, v16

    :goto_17c
    return v6

    :cond_17d
    const v3, 0xfff0

    move v5, v3

    goto/16 :goto_24

    :cond_183
    const v9, 0x8000

    and-int/2addr v9, v5

    if-nez v9, :cond_210

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move v9, v0

    if-eqz v9, :cond_20a

    iget-char v9, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    if-ne v8, v9, :cond_196

    if-nez v8, :cond_210

    :cond_196
    sget-object v9, Lcom/ibm/icu/impl/NormalizerImpl;->combiningTable:[C

    invoke-static {v9, v5, v3, v7}, Lcom/ibm/icu/impl/NormalizerImpl;->combine([CII[I)I

    move-result v13

    if-eqz v13, :cond_210

    move/from16 v0, v16

    int-to-char v0, v0

    move v9, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move v10, v0

    move-object/from16 v0, p2

    move v1, v9

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->nx_contains(Lcom/ibm/icu/text/UnicodeSet;CC)Z

    move-result v9

    if-nez v9, :cond_210

    const/4 v3, 0x0

    aget v16, v7, v3

    const/4 v3, 0x1

    aget v17, v7, v3

    iget-char v3, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    if-nez v3, :cond_231

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v3, v0

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    move v12, v3

    :goto_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v3, v0

    move/from16 v0, v16

    int-to-char v0, v0

    move v9, v0

    aput-char v9, v3, v14

    if-eqz v15, :cond_25e

    if-eqz v17, :cond_23a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v3, v0

    add-int/lit8 v9, v14, 0x1

    move/from16 v0, v17

    int-to-char v0, v0

    move v10, v0

    aput-char v10, v3, v9

    :cond_1de
    :goto_1de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v3, v0

    if-ge v12, v3, :cond_297

    move v3, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v9, v0

    move v10, v9

    :goto_1ec
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v9, v0

    if-ge v10, v9, :cond_28d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object/from16 v18, v0

    add-int/lit8 v9, v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object/from16 v19, v0

    add-int/lit8 v11, v10, 0x1

    aget-char v10, v19, v10

    aput-char v10, v18, v3

    move v10, v11

    move v3, v9

    goto :goto_1ec

    :cond_20a
    iget-char v9, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    if-lt v8, v9, :cond_196

    if-eqz v8, :cond_196

    :cond_210
    iget-char v8, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v10, v0

    if-ne v9, v10, :cond_2cc

    move v0, v8

    int-to-char v0, v0

    move/from16 p0, v0

    move/from16 p2, v14

    move v3, v15

    move/from16 p1, v8

    move/from16 v5, v17

    move/from16 v6, p0

    move/from16 p0, v4

    move/from16 v4, v16

    goto/16 :goto_17c

    :cond_231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v3, v0

    const/4 v9, 0x2

    sub-int/2addr v3, v9

    move v12, v3

    goto :goto_1c2

    :cond_23a
    const/4 v15, 0x0

    add-int/lit8 v3, v14, 0x1

    add-int/lit8 v9, v3, 0x1

    move v11, v9

    move v9, v3

    :goto_241
    if-ge v11, v12, :cond_25a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object/from16 v18, v0

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object/from16 v19, v0

    add-int/lit8 v10, v11, 0x1

    aget-char v11, v19, v11

    aput-char v11, v18, v9

    move v11, v10

    move v9, v3

    goto :goto_241

    :cond_25a
    add-int/lit8 v3, v12, -0x1

    move v12, v3

    goto :goto_1de

    :cond_25e
    if-eqz v17, :cond_1de

    const/4 v15, 0x1

    add-int/lit8 v11, v14, 0x1

    move v3, v12

    add-int/lit8 v10, v12, 0x1

    move v9, v10

    :goto_267
    if-ge v11, v3, :cond_27c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v12, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v14, v0

    add-int/lit8 v3, v3, -0x1

    aget-char v14, v14, v3

    aput-char v14, v12, v9

    goto :goto_267

    :cond_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->source:[C

    move-object v3, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move v9, v0

    aput-char v9, v3, v11

    add-int/lit8 v3, v11, -0x1

    move v14, v3

    move v12, v10

    goto/16 :goto_1de

    :cond_28d
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    :cond_297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->limit:I

    move v9, v0

    if-ne v3, v9, :cond_2b6

    move v0, v8

    int-to-char v0, v0

    move/from16 p0, v0

    move/from16 p2, v14

    move v3, v15

    move/from16 p1, v8

    move/from16 v5, v17

    move/from16 v6, p0

    move/from16 p0, v4

    move/from16 v4, v16

    goto/16 :goto_17c

    :cond_2b6
    const/4 v3, 0x1

    if-le v13, v3, :cond_2c8

    move/from16 v0, v16

    int-to-char v0, v0

    move v3, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move v4, v0

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/NormalizerImpl;->getCombiningIndexFromStarter(CC)I

    move-result v3

    move v5, v3

    goto/16 :goto_24

    :cond_2c8
    const/4 v3, -0x1

    move v14, v3

    goto/16 :goto_24

    :cond_2cc
    iget-char v9, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->cc:C

    if-nez v9, :cond_2f3

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2ef

    iget-char v4, v6, Lcom/ibm/icu/impl/NormalizerImpl$NextCombiningArgs;->c2:C

    if-nez v4, :cond_2e6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v4, v0

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    :goto_2e0
    move v3, v3

    move v14, v4

    move v15, v5

    move v5, v3

    goto/16 :goto_24

    :cond_2e6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/NormalizerImpl$RecomposeArgs;->start:I

    move v4, v0

    const/4 v9, 0x2

    sub-int/2addr v4, v9

    goto :goto_2e0

    :cond_2ef
    const/4 v3, -0x1

    move v14, v3

    goto/16 :goto_24

    :cond_2f3
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x2000

    move v3, v0

    if-eqz v3, :cond_24

    const/4 v3, -0x1

    move v14, v3

    goto/16 :goto_24
.end method

.method private static strCompare([CII[CIIZ)I
    .registers 13

    move v4, p1

    move v5, p4

    sub-int v0, p2, p1

    sub-int v1, p5, p4

    if-ge v0, v1, :cond_12

    const/4 p2, -0x1

    add-int p5, v4, v0

    move v2, p2

    move v3, p5

    :goto_d
    if-ne p0, p3, :cond_24

    move p0, v3

    move p2, v2

    :goto_11
    return p2

    :cond_12
    if-ne v0, v1, :cond_1a

    const/4 p2, 0x0

    add-int p5, v4, v0

    move v2, p2

    move v3, p5

    goto :goto_d

    :cond_1a
    const/4 p2, 0x1

    add-int p5, v4, v1

    move v2, p2

    move v3, p5

    goto :goto_d

    :cond_20
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p4, p4, 0x1

    :cond_24
    if-ne p1, v3, :cond_29

    move p0, v3

    move p2, v2

    goto :goto_11

    :cond_29
    aget-char p2, p0, p1

    aget-char p5, p3, p4

    if-eq p2, p5, :cond_20

    add-int/2addr v0, v4

    add-int/2addr v1, v5

    const v2, 0xd800

    if-lt p2, v2, :cond_9f

    const v2, 0xd800

    if-lt p5, v2, :cond_9f

    if-eqz p6, :cond_9f

    const p6, 0xdbff

    if-gt p2, p6, :cond_50

    add-int/lit8 p6, p1, 0x1

    if-eq p6, v0, :cond_50

    add-int/lit8 p6, p1, 0x1

    aget-char p6, p0, p6

    invoke-static {p6}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p6

    if-nez p6, :cond_9d

    :cond_50
    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p6

    if-eqz p6, :cond_8f

    if-eq v4, p1, :cond_8f

    const/4 p6, 0x1

    sub-int p6, p1, p6

    aget-char p0, p0, p6

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_8f

    move p0, p2

    :goto_64
    const p2, 0xdbff

    if-gt p5, p2, :cond_77

    add-int/lit8 p2, p4, 0x1

    if-eq p2, v1, :cond_77

    add-int/lit8 p2, p4, 0x1

    aget-char p2, p3, p2

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p2

    if-nez p2, :cond_9b

    :cond_77
    invoke-static {p5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_95

    if-eq v5, p4, :cond_95

    const/4 p2, 0x1

    sub-int p2, p4, p2

    aget-char p2, p3, p2

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_95

    move p2, p5

    :goto_8b
    sub-int/2addr p0, p2

    move p2, p0

    move p0, v0

    goto :goto_11

    :cond_8f
    const/16 p0, 0x2800

    sub-int p0, p2, p0

    int-to-char p0, p0

    goto :goto_64

    :cond_95
    const/16 p2, 0x2800

    sub-int p2, p5, p2

    int-to-char p2, p2

    goto :goto_8b

    :cond_9b
    move p2, p5

    goto :goto_8b

    :cond_9d
    move p0, p2

    goto :goto_64

    :cond_9f
    move p0, p2

    move p2, p5

    goto :goto_8b
.end method


# virtual methods
.method public getFCDTrie()Lcom/ibm/icu/impl/CharTrie;
    .registers 2

    sget-object v0, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;

    return-object v0
.end method
