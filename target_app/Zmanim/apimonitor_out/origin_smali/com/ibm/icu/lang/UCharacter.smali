.class public final Lcom/ibm/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Lcom/ibm/icu/lang/UCharacterEnums$ECharacterCategory;
.implements Lcom/ibm/icu/lang/UCharacterEnums$ECharacterDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/lang/UCharacter$StringContextIterator;,
        Lcom/ibm/icu/lang/UCharacter$HangulSyllableType;,
        Lcom/ibm/icu/lang/UCharacter$NumericType;,
        Lcom/ibm/icu/lang/UCharacter$LineBreak;,
        Lcom/ibm/icu/lang/UCharacter$SentenceBreak;,
        Lcom/ibm/icu/lang/UCharacter$WordBreak;,
        Lcom/ibm/icu/lang/UCharacter$GraphemeClusterBreak;,
        Lcom/ibm/icu/lang/UCharacter$JoiningGroup;,
        Lcom/ibm/icu/lang/UCharacter$JoiningType;,
        Lcom/ibm/icu/lang/UCharacter$DecompositionType;,
        Lcom/ibm/icu/lang/UCharacter$EastAsianWidth;,
        Lcom/ibm/icu/lang/UCharacter$UnicodeBlock;
    }
.end annotation


# static fields
.field private static final APPLICATION_PROGRAM_COMMAND_:I = 0x9f

.field private static final BLOCK_MASK_:I = 0x1ff00

.field private static final BLOCK_SHIFT_:I = 0x8

.field private static final CJK_IDEOGRAPH_COMPLEX_EIGHT_:I = 0x634c

.field private static final CJK_IDEOGRAPH_COMPLEX_FIVE_:I = 0x4f0d

.field private static final CJK_IDEOGRAPH_COMPLEX_FOUR_:I = 0x8086

.field private static final CJK_IDEOGRAPH_COMPLEX_HUNDRED_:I = 0x4f70

.field private static final CJK_IDEOGRAPH_COMPLEX_NINE_:I = 0x7396

.field private static final CJK_IDEOGRAPH_COMPLEX_ONE_:I = 0x58f9

.field private static final CJK_IDEOGRAPH_COMPLEX_SEVEN_:I = 0x67d2

.field private static final CJK_IDEOGRAPH_COMPLEX_SIX_:I = 0x9678

.field private static final CJK_IDEOGRAPH_COMPLEX_TEN_:I = 0x62fe

.field private static final CJK_IDEOGRAPH_COMPLEX_THOUSAND_:I = 0x4edf

.field private static final CJK_IDEOGRAPH_COMPLEX_THREE_:I = 0x53c3

.field private static final CJK_IDEOGRAPH_COMPLEX_TWO_:I = 0x8cb3

.field private static final CJK_IDEOGRAPH_COMPLEX_ZERO_:I = 0x96f6

.field private static final CJK_IDEOGRAPH_EIGHTH_:I = 0x516b

.field private static final CJK_IDEOGRAPH_FIFTH_:I = 0x4e94

.field private static final CJK_IDEOGRAPH_FIRST_:I = 0x4e00

.field private static final CJK_IDEOGRAPH_FOURTH_:I = 0x56d8

.field private static final CJK_IDEOGRAPH_HUNDRED_:I = 0x767e

.field private static final CJK_IDEOGRAPH_HUNDRED_MILLION_:I = 0x5104

.field private static final CJK_IDEOGRAPH_NINETH_:I = 0x4e5d

.field private static final CJK_IDEOGRAPH_SECOND_:I = 0x4e8c

.field private static final CJK_IDEOGRAPH_SEVENTH_:I = 0x4e03

.field private static final CJK_IDEOGRAPH_SIXTH_:I = 0x516d

.field private static final CJK_IDEOGRAPH_TEN_:I = 0x5341

.field private static final CJK_IDEOGRAPH_TEN_THOUSAND_:I = 0x824c

.field private static final CJK_IDEOGRAPH_THIRD_:I = 0x4e09

.field private static final CJK_IDEOGRAPH_THOUSAND_:I = 0x5343

.field private static final DECOMPOSITION_TYPE_MASK_:I = 0x1f

.field private static final DELETE_:I = 0x7f

.field private static final EAST_ASIAN_MASK_:I = 0xe0000

.field private static final EAST_ASIAN_SHIFT_:I = 0x11

.field private static final FIGURE_SPACE_:I = 0x2007

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field private static final FRACTION_DEN_MASK:I = 0x7

.field private static final FRACTION_DEN_OFFSET:I = 0x2

.field private static final FRACTION_NUM_SHIFT:I = 0x3

.field private static final GCB_MASK:I = 0x3e0

.field private static final GCB_SHIFT:I = 0x5

.field private static final IDEOGRAPHIC_NUMBER_ZERO_:I = 0x3007

.field private static final LARGE_EXP_MASK:I = 0xf

.field private static final LARGE_EXP_OFFSET:I = 0x2

.field private static final LARGE_EXP_OFFSET_EXTRA:I = 0x12

.field private static final LARGE_MANT_SHIFT:I = 0x4

.field private static final LAST_CHAR_MASK_:I = 0xffff

.field private static final LB_MASK:I = 0x3f00000

.field private static final LB_SHIFT:I = 0x14

.field private static final LB_VWORD:I = 0x2

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:I = 0x0

.field static NAME_:Lcom/ibm/icu/impl/UCharacterName; = null

.field private static final NARROW_NO_BREAK_SPACE_:I = 0x202f

.field private static final NO_BREAK_SPACE_:I = 0xa0

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field private static final NUMERIC_TYPE_MASK_:I = 0xe0

.field private static final NUMERIC_TYPE_SHIFT_:I = 0x5

.field static PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases; = null

.field private static final PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty; = null

#the value of this static final field might be set in the static constructor
.field private static final PROPERTY_INITIAL_VALUE_:I = 0x0

.field private static final PROPERTY_TRIE_DATA_:[C = null

.field private static final PROPERTY_TRIE_INDEX_:[C = null

.field public static final REPLACEMENT_CHAR:I = 0xfffd

.field private static final SB_MASK:I = 0xf8000

.field private static final SB_SHIFT:I = 0xf

.field private static final SCRIPT_MASK_:I = 0xff

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field public static final TITLECASE_NO_BREAK_ADJUSTMENT:I = 0x200

.field public static final TITLECASE_NO_LOWERCASE:I = 0x100

.field private static final UNIT_SEPARATOR_:I = 0x1f

.field private static final WB_MASK:I = 0x7c00

.field private static final WB_SHIFT:I = 0xa

.field private static final gBdp:Lcom/ibm/icu/impl/UBiDiProps;

.field private static final gCsp:Lcom/ibm/icu/impl/UCaseProps;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v3, 0x0

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    :try_start_5
    new-instance v3, Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-direct {v3}, Lcom/ibm/icu/impl/UPropertyAliases;-><init>()V

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-static {}, Lcom/ibm/icu/impl/UCharacterName;->getInstance()Lcom/ibm/icu/impl/UCharacterName;

    move-result-object v3

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_37

    :try_start_12
    invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->getInstance()Lcom/ibm/icu/impl/UCharacterProperty;

    move-result-object v3

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    sget-object v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v3, v3, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieIndex_:[C

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_TRIE_INDEX_:[C

    sget-object v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v3, v3, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieData_:[C

    sput-object v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_TRIE_DATA_:[C

    sget-object v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    iget v3, v3, Lcom/ibm/icu/impl/UCharacterProperty;->m_trieInitialValue_:I

    sput v3, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_INITIAL_VALUE_:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_47

    :try_start_2a
    invoke-static {}, Lcom/ibm/icu/impl/UCaseProps;->getSingleton()Lcom/ibm/icu/impl/UCaseProps;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_57

    move-result-object v1

    :goto_2e
    sput-object v1, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    :try_start_30
    invoke-static {}, Lcom/ibm/icu/impl/UBiDiProps;->getSingleton()Lcom/ibm/icu/impl/UBiDiProps;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_5d

    move-result-object v0

    :goto_34
    sput-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    return-void

    :catch_37
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/util/MissingResourceException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :catch_47
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/util/MissingResourceException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :catch_57
    move-exception v2

    invoke-static {}, Lcom/ibm/icu/impl/UCaseProps;->getDummy()Lcom/ibm/icu/impl/UCaseProps;

    move-result-object v1

    goto :goto_2e

    :catch_5d
    move-exception v2

    invoke-static {}, Lcom/ibm/icu/impl/UBiDiProps;->getDummy()Lcom/ibm/icu/impl/UBiDiProps;

    move-result-object v0

    goto :goto_34
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ibm/icu/impl/UCharacterProperty;
    .registers 1

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    return-object v0
.end method

.method public static charCount(I)I
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    return v0
.end method

.method public static final codePointAt(Ljava/lang/CharSequence;I)I
    .registers 6

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_21

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v3

    :goto_20
    return v3

    :cond_21
    move v3, v0

    goto :goto_20
.end method

.method public static final codePointAt([CI)I
    .registers 6

    add-int/lit8 v2, p1, 0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1a

    array-length v3, p0

    if-ge v2, v3, :cond_1a

    aget-char v1, p0, v2

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v3

    :goto_19
    return v3

    :cond_1a
    move v3, v0

    goto :goto_19
.end method

.method public static final codePointAt([CII)I
    .registers 7

    if-ge p1, p2, :cond_5

    array-length v3, p0

    if-le p2, v3, :cond_b

    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_b
    add-int/lit8 v2, p1, 0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_24

    if-ge v2, p2, :cond_24

    aget-char v1, p0, v2

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v3

    :goto_23
    return v3

    :cond_24
    move v3, v0

    goto :goto_23
.end method

.method public static final codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 5

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-lez p1, :cond_1f

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    :goto_1e
    return v2

    :cond_1f
    move v2, v1

    goto :goto_1e
.end method

.method public static final codePointBefore([CI)I
    .registers 5

    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-lez p1, :cond_1b

    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    :goto_1a
    return v2

    :cond_1b
    move v2, v1

    goto :goto_1a
.end method

.method public static final codePointBefore([CII)I
    .registers 6

    if-le p1, p2, :cond_4

    if-gez p2, :cond_a

    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_a
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_25

    if-le p1, p2, :cond_25

    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    :goto_24
    return v2

    :cond_25
    move v2, v1

    goto :goto_24
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .registers 8

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le p2, v2, :cond_3b

    :cond_a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or limit ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") invalid or out of range 0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3b
    sub-int v1, p2, p1

    :cond_3d
    :goto_3d
    if-le p2, p1, :cond_64

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_45
    const v2, 0xdc00

    if-lt v0, v2, :cond_3d

    const v2, 0xdfff

    if-gt v0, v2, :cond_3d

    if-le p2, p1, :cond_3d

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-lt v0, v2, :cond_45

    const v2, 0xdbff

    if-gt v0, v2, :cond_45

    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    :cond_64
    return v1
.end method

.method public static codePointCount([CII)I
    .registers 8

    if-ltz p1, :cond_7

    if-lt p2, p1, :cond_7

    array-length v2, p0

    if-le p2, v2, :cond_35

    :cond_7
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or limit ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") invalid or out of range 0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_35
    sub-int v1, p2, p1

    :cond_37
    :goto_37
    if-le p2, p1, :cond_5a

    add-int/lit8 p2, p2, -0x1

    aget-char v0, p0, p2

    :cond_3d
    const v2, 0xdc00

    if-lt v0, v2, :cond_37

    const v2, 0xdfff

    if-gt v0, v2, :cond_37

    if-le p2, p1, :cond_37

    add-int/lit8 p2, p2, -0x1

    aget-char v0, p0, p2

    const v2, 0xd800

    if-lt v0, v2, :cond_3d

    const v2, 0xdbff

    if-gt v0, v2, :cond_3d

    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    :cond_5a
    return v1
.end method

.method public static digit(I)I
    .registers 4

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getNumericType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getUnsignedValue(I)I

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public static digit(II)I
    .registers 6

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getNumericType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getUnsignedValue(I)I

    move-result v1

    :goto_f
    if-ltz v1, :cond_1a

    if-ge v1, p1, :cond_1a

    move v2, v1

    :goto_14
    return v2

    :cond_15
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getEuropeanDigit(I)I

    move-result v1

    goto :goto_f

    :cond_1a
    const/4 v2, -0x1

    goto :goto_14
.end method

.method public static foldCase(II)I
    .registers 3

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->fold(II)I

    move-result v0

    return v0
.end method

.method public static foldCase(IZ)I
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(II)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_36

    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v4, v0, v3, p1}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuffer;I)I

    move-result v0

    if-gez v0, :cond_2d

    xor-int/lit8 v0, v0, -0x1

    :cond_23
    const v4, 0xffff

    if-gt v0, v4, :cond_32

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_2d
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_23

    goto :goto_e

    :cond_32
    invoke-static {v3, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static forDigit(II)C
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    return v0
.end method

.method public static getAge(I)Lcom/ibm/icu/util/VersionInfo;
    .registers 3

    if-ltz p0, :cond_7

    const v0, 0x10ffff

    if-le p0, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Codepoint out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCharFromExtendedName(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCharFromName(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCharFromName1_0(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCodePoint(C)I
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isLegal(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCodePoint(CC)I
    .registers 4

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal surrogate characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCombiningClass(I)I
    .registers 3

    if-ltz p0, :cond_7

    const v0, 0x10ffff

    if-le p0, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Codepoint out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getCombiningClass(I)I

    move-result v0

    return v0
.end method

.method public static getDirection(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getDirection(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private static getEuropeanDigit(I)I
    .registers 7

    const v5, 0xff21

    const/16 v4, 0x7a

    const/16 v3, 0x61

    const/16 v2, 0x5a

    const/16 v1, 0x41

    if-le p0, v4, :cond_f

    if-lt p0, v5, :cond_24

    :cond_f
    if-lt p0, v1, :cond_24

    if-le p0, v2, :cond_15

    if-lt p0, v3, :cond_24

    :cond_15
    const v0, 0xff5a

    if-gt p0, v0, :cond_24

    const v0, 0xff3a

    if-le p0, v0, :cond_26

    const v0, 0xff41

    if-ge p0, v0, :cond_26

    :cond_24
    const/4 v0, -0x1

    :goto_25
    return v0

    :cond_26
    if-gt p0, v4, :cond_30

    add-int/lit8 v0, p0, 0xa

    if-gt p0, v2, :cond_2e

    :goto_2c
    sub-int/2addr v0, v1

    goto :goto_25

    :cond_2e
    move v1, v3

    goto :goto_2c

    :cond_30
    const v0, 0xff3a

    if-gt p0, v0, :cond_39

    add-int/lit8 v0, p0, 0xa

    sub-int/2addr v0, v5

    goto :goto_25

    :cond_39
    add-int/lit8 v0, p0, 0xa

    const v1, 0xff41

    sub-int/2addr v0, v1

    goto :goto_25
.end method

.method public static getExtendedName(I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtendedNameIterator()Lcom/ibm/icu/util/ValueIterator;
    .registers 4

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/ibm/icu/lang/UCharacterNameIterator;

    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UCharacterNameIterator;-><init>(Lcom/ibm/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getHanNumericValue(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_2c

    const/4 v0, -0x1

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_9
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_b
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_d
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_f
    const/4 v0, 0x5

    goto :goto_4

    :sswitch_11
    const/4 v0, 0x6

    goto :goto_4

    :sswitch_13
    const/4 v0, 0x7

    goto :goto_4

    :sswitch_15
    const/16 v0, 0x8

    goto :goto_4

    :sswitch_18
    const/16 v0, 0x9

    goto :goto_4

    :sswitch_1b
    const/16 v0, 0xa

    goto :goto_4

    :sswitch_1e
    const/16 v0, 0x64

    goto :goto_4

    :sswitch_21
    const/16 v0, 0x3e8

    goto :goto_4

    :sswitch_24
    const/16 v0, 0x2710

    goto :goto_4

    :sswitch_27
    const v0, 0x5f5e100

    goto :goto_4

    nop

    :sswitch_data_2c
    .sparse-switch
        0x3007 -> :sswitch_5
        0x4e00 -> :sswitch_7
        0x4e03 -> :sswitch_13
        0x4e09 -> :sswitch_b
        0x4e5d -> :sswitch_18
        0x4e8c -> :sswitch_9
        0x4e94 -> :sswitch_f
        0x4edf -> :sswitch_21
        0x4f0d -> :sswitch_f
        0x4f70 -> :sswitch_1e
        0x5104 -> :sswitch_27
        0x516b -> :sswitch_15
        0x516d -> :sswitch_11
        0x5341 -> :sswitch_1b
        0x5343 -> :sswitch_21
        0x53c3 -> :sswitch_b
        0x56d8 -> :sswitch_d
        0x58f9 -> :sswitch_7
        0x62fe -> :sswitch_1b
        0x634c -> :sswitch_15
        0x67d2 -> :sswitch_13
        0x7396 -> :sswitch_18
        0x767e -> :sswitch_1e
        0x8086 -> :sswitch_d
        0x824c -> :sswitch_24
        0x8cb3 -> :sswitch_9
        0x9678 -> :sswitch_11
        0x96f6 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getISOComment(I)Ljava/lang/String;
    .registers 6

    if-ltz p0, :cond_7

    const v1, 0x10ffff

    if-le p0, v1, :cond_9

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v1, :cond_19

    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "Could not load unames.icu"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_19
    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8
.end method

.method public static getIntPropertyMaxValue(I)I
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x2

    if-gez p0, :cond_8

    move v0, v2

    :goto_7
    return v0

    :cond_8
    const/16 v0, 0x31

    if-ge p0, v0, :cond_e

    move v0, v4

    goto :goto_7

    :cond_e
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_14

    move v0, v2

    goto :goto_7

    :cond_14
    const/16 v0, 0x1015

    if-ge p0, v0, :cond_8d

    packed-switch p0, :pswitch_data_90

    move v0, v2

    goto :goto_7

    :pswitch_1d
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getMaxValue(I)I

    move-result v0

    goto :goto_7

    :pswitch_24
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    const v1, 0x1ff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    goto :goto_7

    :pswitch_31
    const/16 v0, 0xff

    goto :goto_7

    :pswitch_34
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    goto :goto_7

    :pswitch_3d
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    const/high16 v1, 0xe

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    goto :goto_7

    :pswitch_49
    const/16 v0, 0x1d

    goto :goto_7

    :pswitch_4c
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    const/high16 v1, 0x3f0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    goto :goto_7

    :pswitch_58
    const/4 v0, 0x3

    goto :goto_7

    :pswitch_5a
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_7

    :pswitch_63
    const/4 v0, 0x5

    goto :goto_7

    :pswitch_65
    move v0, v4

    goto :goto_7

    :pswitch_67
    move v0, v1

    goto :goto_7

    :pswitch_69
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x3e0

    shr-int/lit8 v0, v0, 0x5

    goto :goto_7

    :pswitch_74
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    const v1, 0xf8000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xf

    goto :goto_7

    :pswitch_81
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x7c00

    shr-int/lit8 v0, v0, 0xa

    goto/16 :goto_7

    :cond_8d
    move v0, v2

    goto/16 :goto_7

    :pswitch_data_90
    .packed-switch 0x1000
        :pswitch_1d
        :pswitch_24
        :pswitch_31
        :pswitch_34
        :pswitch_3d
        :pswitch_49
        :pswitch_1d
        :pswitch_1d
        :pswitch_4c
        :pswitch_58
        :pswitch_5a
        :pswitch_63
        :pswitch_65
        :pswitch_65
        :pswitch_67
        :pswitch_67
        :pswitch_31
        :pswitch_31
        :pswitch_69
        :pswitch_74
        :pswitch_81
    .end packed-switch
.end method

.method public static getIntPropertyMinValue(I)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static getIntPropertyValue(II)I
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-gez p1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x31

    if-ge p1, v0, :cond_17

    invoke-static {p0, p1}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    goto :goto_8

    :cond_15
    move v0, v1

    goto :goto_8

    :cond_17
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_1d

    move v0, v1

    goto :goto_8

    :cond_1d
    const/16 v0, 0x1015

    if-ge p1, v0, :cond_110

    packed-switch p1, :pswitch_data_122

    move v0, v1

    goto :goto_8

    :pswitch_26
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getDirection(I)I

    move-result v0

    goto :goto_8

    :pswitch_2b
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter$UnicodeBlock;->idOf(I)I

    move-result v0

    goto :goto_8

    :pswitch_30
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v0

    goto :goto_8

    :pswitch_35
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    goto :goto_8

    :pswitch_3e
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    const/high16 v1, 0xe

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    goto :goto_8

    :pswitch_4a
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    goto :goto_8

    :pswitch_4f
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getJoiningGroup(I)I

    move-result v0

    goto :goto_8

    :pswitch_56
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v0

    goto :goto_8

    :pswitch_5d
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    const/high16 v1, 0x3f0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    goto :goto_8

    :pswitch_69
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getNumericType(I)I

    move-result p1

    if-le p1, v5, :cond_76

    const/4 p1, 0x3

    :cond_76
    move v0, p1

    goto :goto_8

    :pswitch_78
    invoke-static {p0}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v0

    goto :goto_8

    :pswitch_7d
    const/16 v0, 0x1100

    if-ge p0, v0, :cond_83

    :cond_81
    move v0, v1

    goto :goto_8

    :cond_83
    const/16 v0, 0x11ff

    if-gt p0, v0, :cond_ba

    const/16 v0, 0x115f

    if-gt p0, v0, :cond_9c

    const/16 v0, 0x115f

    if-eq p0, v0, :cond_99

    const/16 v0, 0x1159

    if-le p0, v0, :cond_99

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-ne v0, v3, :cond_81

    :cond_99
    move v0, v4

    goto/16 :goto_8

    :cond_9c
    const/16 v0, 0x11a7

    if-gt p0, v0, :cond_ad

    const/16 v0, 0x11a2

    if-le p0, v0, :cond_aa

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-ne v0, v3, :cond_81

    :cond_aa
    move v0, v2

    goto/16 :goto_8

    :cond_ad
    const/16 v0, 0x11f9

    if-le p0, v0, :cond_b7

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-ne v0, v3, :cond_81

    :cond_b7
    move v0, v5

    goto/16 :goto_8

    :cond_ba
    const v0, 0xac00

    sub-int/2addr p0, v0

    if-ltz p0, :cond_81

    const/16 v0, 0x2ba4

    if-ge p0, v0, :cond_81

    rem-int/lit8 v0, p0, 0x1c

    if-nez v0, :cond_cb

    const/4 v0, 0x4

    goto/16 :goto_8

    :cond_cb
    move v0, v3

    goto/16 :goto_8

    :pswitch_ce
    const/16 v0, 0x100c

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->quickCheck(II)I

    move-result v0

    goto/16 :goto_8

    :pswitch_da
    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    goto/16 :goto_8

    :pswitch_e2
    invoke-static {p0}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto/16 :goto_8

    :pswitch_ea
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x3e0

    shr-int/lit8 v0, v0, 0x5

    goto/16 :goto_8

    :pswitch_f6
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    const v1, 0xf8000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xf

    goto/16 :goto_8

    :pswitch_104
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x7c00

    shr-int/lit8 v0, v0, 0xa

    goto/16 :goto_8

    :cond_110
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_11e

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    goto/16 :goto_8

    :cond_11e
    move v0, v1

    goto/16 :goto_8

    nop

    :pswitch_data_122
    .packed-switch 0x1000
        :pswitch_26
        :pswitch_2b
        :pswitch_30
        :pswitch_35
        :pswitch_3e
        :pswitch_4a
        :pswitch_4f
        :pswitch_56
        :pswitch_5d
        :pswitch_69
        :pswitch_78
        :pswitch_7d
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_da
        :pswitch_e2
        :pswitch_ea
        :pswitch_f6
        :pswitch_104
    .end packed-switch
.end method

.method public static getMirror(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getMirror(I)I

    move-result v0

    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    :goto_10
    return-object v3

    :cond_11
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_26

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_17

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_10
.end method

.method public static getName1_0(I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not load unames.icu"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName1_0Iterator()Lcom/ibm/icu/util/ValueIterator;
    .registers 3

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not load unames.icu"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/ibm/icu/lang/UCharacterNameIterator;

    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UCharacterNameIterator;-><init>(Lcom/ibm/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getNameIterator()Lcom/ibm/icu/util/ValueIterator;
    .registers 3

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not load unames.icu"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/ibm/icu/lang/UCharacterNameIterator;

    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->NAME_:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UCharacterNameIterator;-><init>(Lcom/ibm/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method private static getNumericType(I)I
    .registers 2

    and-int/lit16 v0, p0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public static getNumericValue(I)I
    .registers 14

    const/16 v8, 0x9

    const/4 v12, 0x4

    const/4 v11, -0x2

    sget-object v7, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v7, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/lang/UCharacter;->getNumericType(I)I

    move-result v4

    if-nez v4, :cond_15

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getEuropeanDigit(I)I

    move-result v7

    :goto_14
    return v7

    :cond_15
    if-eq v4, v12, :cond_1a

    const/4 v7, 0x6

    if-lt v4, v7, :cond_1c

    :cond_1a
    move v7, v11

    goto :goto_14

    :cond_1c
    invoke-static {v6}, Lcom/ibm/icu/impl/UCharacterProperty;->getUnsignedValue(I)I

    move-result v5

    if-ge v4, v12, :cond_24

    move v7, v5

    goto :goto_14

    :cond_24
    shr-int/lit8 v1, v5, 0x4

    and-int/lit8 v0, v5, 0xf

    if-nez v1, :cond_31

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x12

    :goto_2d
    if-le v0, v8, :cond_38

    move v7, v11

    goto :goto_14

    :cond_31
    if-le v1, v8, :cond_35

    move v7, v11

    goto :goto_14

    :cond_35
    add-int/lit8 v0, v0, 0x2

    goto :goto_2d

    :cond_38
    int-to-long v2, v1

    :goto_39
    if-lt v0, v12, :cond_46

    long-to-double v7, v2

    const-wide v9, 0x40c3880000000000L

    mul-double/2addr v7, v9

    double-to-long v2, v7

    add-int/lit8 v0, v0, -0x4

    goto :goto_39

    :cond_46
    packed-switch v0, :pswitch_data_6a

    :goto_49
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v2, v7

    if-gtz v7, :cond_67

    long-to-int v7, v2

    goto :goto_14

    :pswitch_52
    long-to-double v7, v2

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v7, v9

    double-to-long v2, v7

    goto :goto_49

    :pswitch_5b
    long-to-double v7, v2

    const-wide/high16 v9, 0x4059

    mul-double/2addr v7, v9

    double-to-long v2, v7

    goto :goto_49

    :pswitch_61
    long-to-double v7, v2

    const-wide/high16 v9, 0x4024

    mul-double/2addr v7, v9

    double-to-long v2, v7

    goto :goto_49

    :cond_67
    move v7, v11

    goto :goto_14

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5b
        :pswitch_52
    .end packed-switch
.end method

.method private static final getProperty(I)I
    .registers 5

    const v2, 0xdbff

    const v1, 0xd800

    if-lt p0, v1, :cond_e

    if-le p0, v2, :cond_23

    const/high16 v1, 0x1

    if-ge p0, v1, :cond_23

    :cond_e
    :try_start_e
    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_TRIE_DATA_:[C

    sget-object v2, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_TRIE_INDEX_:[C

    shr-int/lit8 v3, p0, 0x5

    aget-char v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, p0, 0x1f

    add-int/2addr v2, v3

    aget-char v1, v1, v2
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_1d} :catch_1e

    :goto_1d
    return v1

    :catch_1e
    move-exception v1

    move-object v0, v1

    sget v1, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_INITIAL_VALUE_:I

    goto :goto_1d

    :cond_23
    if-gt p0, v2, :cond_37

    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_TRIE_DATA_:[C

    sget-object v2, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_TRIE_INDEX_:[C

    shr-int/lit8 v3, p0, 0x5

    add-int/lit16 v3, v3, 0x140

    aget-char v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, p0, 0x1f

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    goto :goto_1d

    :cond_37
    const v1, 0x10ffff

    if-gt p0, v1, :cond_4c

    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v1, v1, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/CharTrie;

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v2

    and-int/lit16 v3, p0, 0x3ff

    int-to-char v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/impl/CharTrie;->getSurrogateValue(CC)C

    move-result v1

    goto :goto_1d

    :cond_4c
    sget v1, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_INITIAL_VALUE_:I

    goto :goto_1d
.end method

.method public static getPropertyEnum(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPropertyName(II)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyValueEnum(ILjava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPropertyValueName(III)Ljava/lang/String;
    .registers 6

    const/16 v2, 0x1002

    if-eq p0, v2, :cond_c

    const/16 v1, 0x1010

    if-eq p0, v1, :cond_c

    const/16 v1, 0x1011

    if-ne p0, v1, :cond_28

    :cond_c
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyMinValue(I)I

    move-result v1

    if-lt p1, v1, :cond_28

    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v1

    if-gt p1, v1, :cond_28

    if-ltz p2, :cond_28

    const/4 v1, 0x2

    if-ge p2, v1, :cond_28

    :try_start_1d
    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v1, p0, p1, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_24

    move-result-object v1

    :goto_23
    return-object v1

    :catch_24
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_23

    :cond_28
    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->PNAMES_:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v1, p0, p1, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public static getStringPropertyValue(III)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x1

    if-ltz p0, :cond_7

    const/16 v0, 0x31

    if-lt p0, v0, :cond_f

    :cond_7
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_18

    const/16 v0, 0x1015

    if-ge p0, v0, :cond_18

    :cond_f
    invoke-static {p1, p0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_25

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_25
    packed-switch p0, :pswitch_data_9c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Property Enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_39
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getISOComment(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_3e
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_47
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_50
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_59
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_5e
    invoke-static {p1, v1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_67
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_70
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_79
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_82
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_8c
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getName1_0(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_91
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    nop

    :pswitch_data_9c
    .packed-switch 0x4000
        :pswitch_30
        :pswitch_3e
        :pswitch_47
        :pswitch_39
        :pswitch_50
        :pswitch_59
        :pswitch_5e
        :pswitch_67
        :pswitch_70
        :pswitch_79
        :pswitch_82
        :pswitch_8c
        :pswitch_91
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getProperty(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static getTypeIterator()Lcom/ibm/icu/util/RangeValueIterator;
    .registers 2

    new-instance v0, Lcom/ibm/icu/lang/UCharacterTypeIterator;

    sget-object v1, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {v0, v1}, Lcom/ibm/icu/lang/UCharacterTypeIterator;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    return-object v0
.end method

.method public static getUnicodeNumericValue(I)D
    .registers 15

    const-wide v12, -0x3e6290cbac000000L

    const/4 v11, 0x4

    sget-object v9, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v9, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/lang/UCharacter;->getNumericType(I)I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v9, 0x6

    if-lt v6, v9, :cond_17

    :cond_15
    move-wide v9, v12

    :goto_16
    return-wide v9

    :cond_17
    invoke-static {v8}, Lcom/ibm/icu/impl/UCharacterProperty;->getUnsignedValue(I)I

    move-result v7

    if-ge v6, v11, :cond_1f

    int-to-double v9, v7

    goto :goto_16

    :cond_1f
    if-ne v6, v11, :cond_2e

    shr-int/lit8 v5, v7, 0x3

    and-int/lit8 v9, v7, 0x7

    add-int/lit8 v0, v9, 0x2

    if-nez v5, :cond_2a

    const/4 v5, -0x1

    :cond_2a
    int-to-double v9, v5

    int-to-double v11, v0

    div-double/2addr v9, v11

    goto :goto_16

    :cond_2e
    shr-int/lit8 v2, v7, 0x4

    and-int/lit8 v1, v7, 0xf

    if-nez v2, :cond_43

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x12

    :goto_37
    int-to-double v3, v2

    :goto_38
    if-lt v1, v11, :cond_4c

    const-wide v9, 0x40c3880000000000L

    mul-double/2addr v3, v9

    add-int/lit8 v1, v1, -0x4

    goto :goto_38

    :cond_43
    const/16 v9, 0x9

    if-le v2, v9, :cond_49

    move-wide v9, v12

    goto :goto_16

    :cond_49
    add-int/lit8 v1, v1, 0x2

    goto :goto_37

    :cond_4c
    packed-switch v1, :pswitch_data_60

    :goto_4f
    move-wide v9, v3

    goto :goto_16

    :pswitch_51
    const-wide v9, 0x408f400000000000L

    mul-double/2addr v3, v9

    goto :goto_4f

    :pswitch_58
    const-wide/high16 v9, 0x4059

    mul-double/2addr v3, v9

    goto :goto_4f

    :pswitch_5c
    const-wide/high16 v9, 0x4024

    mul-double/2addr v3, v9

    goto :goto_4f

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_51
    .end packed-switch
.end method

.method public static getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;
    .registers 1

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;

    return-object v0
.end method

.method public static hasBinaryProperty(II)Z
    .registers 4

    if-ltz p0, :cond_7

    const v0, 0x10ffff

    if-le p0, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Codepoint out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->PROPERTY_:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isBMP(I)Z
    .registers 2

    if-ltz p0, :cond_9

    const v0, 0xffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isBaseForm(I)Z
    .registers 4

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_29

    const/16 v1, 0xb

    if-eq v0, v1, :cond_29

    const/16 v1, 0xa

    if-eq v0, v1, :cond_29

    if-eq v0, v2, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_29

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    const/4 v1, 0x7

    if-eq v0, v1, :cond_29

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    :cond_29
    move v1, v2

    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public static isDefined(I)Z
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isDigit(I)Z
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isHighSurrogate(C)Z
    .registers 2

    const v0, 0xd800

    if-lt p0, v0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isISOControl(I)Z
    .registers 2

    if-ltz p0, :cond_10

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_10

    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isIdentifierIgnorable(I)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_20

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x9

    if-lt p0, v0, :cond_14

    const/16 v0, 0xd

    if-le p0, v0, :cond_1e

    :cond_14
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1e

    :cond_1c
    move v0, v3

    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    goto :goto_1d

    :cond_20
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2a

    move v0, v3

    goto :goto_1d

    :cond_2a
    move v0, v2

    goto :goto_1d
.end method

.method public static isJavaIdentifierPart(I)Z
    .registers 2

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .registers 2

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetter(I)Z
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(I)Z
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isLegal(I)Z
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gez p0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    const v0, 0xd800

    if-ge p0, v0, :cond_d

    move v0, v2

    goto :goto_5

    :cond_d
    const v0, 0xdfff

    if-gt p0, v0, :cond_14

    move v0, v1

    goto :goto_5

    :cond_14
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_5

    :cond_1c
    const v0, 0x10ffff

    if-gt p0, v0, :cond_23

    move v0, v2

    goto :goto_5

    :cond_23
    move v0, v1

    goto :goto_5
.end method

.method public static isLegal(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_1e

    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLegal(I)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x0

    :goto_12
    return v3

    :cond_13
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isSupplementary(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v1, v1, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1e
    const/4 v3, 0x1

    goto :goto_12
.end method

.method public static isLetter(I)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    shl-int v0, v1, v0

    and-int/lit8 v0, v0, 0x3e

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isLetterOrDigit(I)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x23e

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isLowSurrogate(C)Z
    .registers 2

    const v0, 0xdc00

    if-lt p0, v0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isLowerCase(I)Z
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isMirrored(I)Z
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gBdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isPrintable(I)Z
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public static isSpace(I)Z
    .registers 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_18

    if-eq p0, v0, :cond_16

    const/16 v0, 0x9

    if-eq p0, v0, :cond_16

    const/16 v0, 0xa

    if-eq p0, v0, :cond_16

    const/16 v0, 0xc

    if-eq p0, v0, :cond_16

    const/16 v0, 0xd

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static isSpaceChar(I)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isSupplementary(I)Z
    .registers 2

    const/high16 v0, 0x1

    if-lt p0, v0, :cond_b

    const v0, 0x10ffff

    if-gt p0, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isSupplementaryCodePoint(I)Z
    .registers 2

    const/high16 v0, 0x1

    if-lt p0, v0, :cond_b

    const v0, 0x10ffff

    if-gt p0, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isSurrogatePair(CC)Z
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTitleCase(I)Z
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isUAlphabetic(I)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isULowercase(I)Z
    .registers 2

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUUppercase(I)Z
    .registers 2

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUWhiteSpace(I)Z
    .registers 2

    const/16 v0, 0x1f

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .registers 4

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    shl-int v0, v2, v0

    const v1, 0x40077e

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isIdentifierIgnorable(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    move v0, v2

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x43e

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isUpperCase(I)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static final isValidCodePoint(I)Z
    .registers 2

    if-ltz p0, :cond_9

    const v0, 0x10ffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isWhitespace(I)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_17

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2007

    if-eq p0, v0, :cond_17

    const/16 v0, 0x202f

    if-ne p0, v0, :cond_27

    :cond_17
    const/16 v0, 0x9

    if-lt p0, v0, :cond_1f

    const/16 v0, 0xd

    if-le p0, v0, :cond_27

    :cond_1f
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_29

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_29

    :cond_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 11

    const v7, 0xdfff

    const v6, 0xdc00

    const v5, 0xdbff

    const v4, 0xd800

    if-ltz p1, :cond_14

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le p1, v3, :cond_3b

    :cond_14
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") out of range 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3b
    if-gez p2, :cond_5e

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    if-gtz p2, :cond_87

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_47
    if-lt v0, v6, :cond_3d

    if-gt v0, v7, :cond_3d

    if-lez p1, :cond_3d

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_57

    if-le v0, v5, :cond_47

    :cond_57
    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_47

    add-int/lit8 v3, p1, 0x1

    :goto_5d
    return v3

    :cond_5e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, p1

    :cond_63
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_86

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v1, p1

    :goto_6e
    if-lt v0, v4, :cond_63

    if-gt v0, v5, :cond_63

    if-ge v1, v2, :cond_63

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_7e

    if-le v0, v7, :cond_89

    :cond_7e
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_89

    const/4 v3, 0x1

    sub-int v3, p1, v3

    goto :goto_5d

    :cond_86
    move p1, v1

    :cond_87
    move v3, p1

    goto :goto_5d

    :cond_89
    move v1, p1

    goto :goto_6e
.end method

.method public static offsetByCodePoints([CIIII)I
    .registers 13

    const v7, 0xdfff

    const v6, 0xdc00

    const v5, 0xdbff

    const v4, 0xd800

    add-int v2, p1, p2

    if-ltz p1, :cond_19

    if-lt v2, p1, :cond_19

    array-length v3, p0

    if-gt v2, v3, :cond_19

    if-lt p3, p1, :cond_19

    if-le p3, v2, :cond_51

    :cond_19
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") out of range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in array 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    if-gez p4, :cond_9b

    :cond_53
    add-int/lit8 p4, p4, 0x1

    if-gtz p4, :cond_e7

    add-int/lit8 p3, p3, -0x1

    aget-char v0, p0, p3

    if-ge p3, p1, :cond_86

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") < start ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_86
    if-lt v0, v6, :cond_53

    if-gt v0, v7, :cond_53

    if-le p3, p1, :cond_53

    add-int/lit8 p3, p3, -0x1

    aget-char v0, p0, p3

    if-lt v0, v4, :cond_94

    if-le v0, v5, :cond_86

    :cond_94
    add-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_86

    add-int/lit8 v3, p3, 0x1

    :goto_9a
    return v3

    :cond_9b
    move v1, p3

    :cond_9c
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_e6

    add-int/lit8 p3, v1, 0x1

    aget-char v0, p0, v1

    if-le p3, v2, :cond_cf

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") > limit ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_cf
    move v1, p3

    if-lt v0, v4, :cond_9c

    if-gt v0, v5, :cond_9c

    if-ge v1, v2, :cond_9c

    add-int/lit8 p3, v1, 0x1

    aget-char v0, p0, v1

    if-lt v0, v6, :cond_de

    if-le v0, v7, :cond_cf

    :cond_de
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_cf

    const/4 v3, 0x1

    sub-int v3, p3, v3

    goto :goto_9a

    :cond_e6
    move p3, v1

    :cond_e7
    move v3, p3

    goto :goto_9a
.end method

.method public static final toChars(I[CI)I
    .registers 5

    if-ltz p0, :cond_20

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_b

    int-to-char v0, p0

    aput-char v0, p1, p2

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const v0, 0x10ffff

    if-gt p0, v0, :cond_20

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    aput-char v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    aput-char v1, p1, v0

    const/4 v0, 0x2

    goto :goto_a

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final toChars(I)[C
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ltz p0, :cond_23

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    new-array v0, v3, [C

    int-to-char v1, p0

    aput-char v1, v0, v2

    :goto_d
    return-object v0

    :cond_e
    const v0, 0x10ffff

    if-gt p0, v0, :cond_23

    const/4 v0, 0x2

    new-array v0, v0, [C

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    aput-char v1, v0, v2

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    aput-char v1, v0, v3

    goto :goto_d

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final toCodePoint(CC)I
    .registers 3

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v0

    return v0
.end method

.method public static toLowerCase(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->tolower(I)I

    move-result v0

    return v0
.end method

.method public static toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    new-instance v2, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;

    invoke-direct {v2, p1}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    new-array v5, v0, [I

    if-nez p0, :cond_18

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    :cond_18
    aput v4, v5, v4

    :goto_1a
    invoke-virtual {v2}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_3e

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I

    move-result v1

    if-gez v1, :cond_35

    xor-int/lit8 v1, v1, -0x1

    :cond_2b
    const v0, 0xffff

    if-gt v1, v0, :cond_3a

    int-to-char v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_35
    const/16 v0, 0x1f

    if-gt v1, v0, :cond_2b

    goto :goto_1a

    :cond_3a
    invoke-static {v3, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_7

    const v1, 0x10ffff

    if-le p0, v1, :cond_9

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    const/high16 v1, 0x1

    if-ge p0, v1, :cond_13

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_13
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static toTitleCase(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->totitle(I)I

    move-result v0

    return v0
.end method

.method public static toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;
    .registers 23

    new-instance v5, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x1

    new-array v8, v3, [I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez p0, :cond_1e

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    :cond_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v8, v3

    if-nez p2, :cond_28

    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    :cond_28
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    move v9, v7

    move v7, v4

    :goto_3e
    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_137

    if-eqz v7, :cond_ee

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v4

    move/from16 v17, v7

    :goto_4c
    const/4 v7, -0x1

    if-eq v4, v7, :cond_54

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_13e

    :cond_54
    move/from16 v4, v18

    move v15, v4

    :goto_57
    if-ge v9, v15, :cond_e8

    invoke-virtual {v5, v15}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->setLimit(I)V

    invoke-virtual {v5}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v4

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move v7, v0

    if-nez v7, :cond_f6

    sget-object v7, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v7, v4}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v7

    if-nez v7, :cond_f6

    :cond_6f
    invoke-virtual {v5}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v4

    if-ltz v4, :cond_7d

    sget-object v7, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v7, v4}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v7

    if-eqz v7, :cond_6f

    :cond_7d
    invoke-virtual {v5}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->getCPStart()I

    move-result v7

    if-ge v9, v7, :cond_8e

    move-object/from16 v0, p1

    move v1, v9

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8e
    :goto_8e
    if-ge v7, v15, :cond_e8

    const/4 v9, 0x1

    sget-object v3, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I

    move-result v4

    move v3, v9

    :cond_9a
    :goto_9a
    if-gez v4, :cond_fc

    xor-int/lit8 v4, v4, -0x1

    const v7, 0xffff

    if-gt v4, v7, :cond_f8

    int-to-char v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a7
    :goto_a7
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move v7, v0

    if-eqz v7, :cond_10e

    invoke-virtual {v5}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->getCPLimit()I

    move-result v7

    if-ge v7, v15, :cond_9a

    move-object/from16 v0, p1

    move v1, v7

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v16, :cond_13c

    const/16 v9, 0x49

    if-ne v4, v9, :cond_13c

    const-string v4, "j"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "J"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->moveToLimit()V

    :cond_e8
    move v4, v15

    move/from16 v7, v17

    move v9, v4

    goto/16 :goto_3e

    :cond_ee
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v4

    move/from16 v17, v7

    goto/16 :goto_4c

    :cond_f6
    move v7, v9

    goto :goto_8e

    :cond_f8
    invoke-static {v6, v4}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_a7

    :cond_fc
    const/16 v7, 0x1f

    if-le v4, v7, :cond_a7

    const v7, 0xffff

    if-gt v4, v7, :cond_10a

    int-to-char v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a7

    :cond_10a
    invoke-static {v6, v4}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_a7

    :cond_10e
    invoke-virtual {v5}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v10

    if-ltz v10, :cond_e8

    if-eqz v16, :cond_12a

    const/16 v7, 0x4a

    if-eq v10, v7, :cond_11e

    const/16 v7, 0x6a

    if-ne v10, v7, :cond_12a

    :cond_11e
    const/16 v7, 0x49

    if-ne v4, v7, :cond_12a

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12a

    const/16 v4, 0x4a

    const/4 v3, 0x0

    goto/16 :goto_9a

    :cond_12a
    sget-object v9, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v13, p0

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I

    move-result v4

    goto/16 :goto_9a

    :cond_137
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13c
    move-object v4, v7

    goto :goto_e2

    :cond_13e
    move v15, v4

    goto/16 :goto_57
.end method

.method public static toTitleCase(Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperCase(I)I
    .registers 2

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->toupper(I)I

    move-result v0

    return v0
.end method

.method public static toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    new-instance v2, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;

    invoke-direct {v2, p1}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    new-array v5, v0, [I

    if-nez p0, :cond_18

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    :cond_18
    aput v4, v5, v4

    :goto_1a
    invoke-virtual {v2}, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_3e

    sget-object v0, Lcom/ibm/icu/lang/UCharacter;->gCsp:Lcom/ibm/icu/impl/UCaseProps;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/ULocale;[I)I

    move-result v1

    if-gez v1, :cond_35

    xor-int/lit8 v1, v1, -0x1

    :cond_2b
    const v0, 0xffff

    if-gt v1, v0, :cond_3a

    int-to-char v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_35
    const/16 v0, 0x1f

    if-gt v1, v0, :cond_2b

    goto :goto_1a

    :cond_3a
    invoke-static {v3, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
