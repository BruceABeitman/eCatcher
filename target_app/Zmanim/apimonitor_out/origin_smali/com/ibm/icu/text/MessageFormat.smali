.class public Lcom/ibm/icu/text/MessageFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field private static final CURLY_BRACE_LEFT:C = '{'

.field private static final CURLY_BRACE_RIGHT:C = '}'

.field private static final DATE_MODIFIER_EMPTY:I = 0x0

.field private static final DATE_MODIFIER_FULL:I = 0x4

.field private static final DATE_MODIFIER_LONG:I = 0x3

.field private static final DATE_MODIFIER_MEDIUM:I = 0x2

.field private static final DATE_MODIFIER_SHORT:I = 0x1

.field private static IDContChars:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static IDStartChars:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static final INITIAL_FORMATS:I = 0xa

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_EMPTY:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final SINGLE_QUOTE:C = '\''

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_IN_QUOTE:I = 0x2

.field private static final STATE_MSG_ELEMENT:I = 0x3

.field private static final STATE_SINGLE_QUOTE:I = 0x1

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_DURATION:I = 0x7

.field private static final TYPE_EMPTY:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_ORDINAL:I = 0x6

.field private static final TYPE_PLURAL:I = 0x8

.field private static final TYPE_SPELLOUT:I = 0x5

.field private static final TYPE_TIME:I = 0x3

.field private static final dateModifierList:[Ljava/lang/String; = null

.field private static final modifierList:[Ljava/lang/String; = null

.field static final serialVersionUID:J = 0x6308eb804ceb42dbL

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private argumentNames:[Ljava/lang/String;

.field private argumentNamesAreNumeric:Z

.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private maxOffset:I

.field private offsets:[I

.field private pattern:Ljava/lang/String;

.field private ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "time"

    aput-object v1, v0, v6

    const-string v1, "choice"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "spellout"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ordinal"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "plural"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "currency"

    aput-object v1, v0, v4

    const-string v1, "percent"

    aput-object v1, v0, v5

    const-string v1, "integer"

    aput-object v1, v0, v6

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "short"

    aput-object v1, v0, v4

    const-string v1, "medium"

    aput-object v1, v0, v5

    const-string v1, "long"

    aput-object v1, v0, v6

    const-string v1, "full"

    aput-object v1, v0, v7

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:ID_Start:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->IDStartChars:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:ID_Continue:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->IDContChars:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNumbers:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .registers 5

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNumbers:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private static _createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;
    .registers 3

    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method private static _createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5

    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method private static _createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5

    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method private static _createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;
    .registers 16

    if-eqz p0, :cond_5

    array-length v12, p0

    if-nez v12, :cond_c

    :cond_5
    const-string v12, ""

    invoke-static {v12}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v12

    :goto_b
    return-object v12

    :cond_c
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_12
    array-length v12, p0

    if-ge v4, v12, :cond_34

    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v5

    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v2

    move v6, v5

    :goto_22
    if-ge v6, v2, :cond_31

    aget-object v12, p0, v4

    add-int/lit8 v5, v6, 0x1

    invoke-interface {v12, v6}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    goto :goto_22

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_34
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_3f
    array-length v12, p0

    if-ge v4, v12, :cond_9a

    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->first()C

    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v11

    :cond_4d
    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v12

    sub-int v7, v12, v11

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_85

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    add-int v14, v9, v7

    invoke-virtual {v0, v12, v13, v9, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_69

    :cond_85
    add-int/2addr v9, v7

    add-int/2addr v11, v7

    aget-object v12, p0, v4

    invoke-interface {v12, v11}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    aget-object v12, p0, v4

    invoke-interface {v12}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v12

    const v13, 0xffff

    if-ne v12, v13, :cond_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_9a
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v12

    goto/16 :goto_b
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 6

    const v2, 0xffff

    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    if-eq v1, v2, :cond_1a

    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_10
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    if-eq v0, v2, :cond_1a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1a
    return-void
.end method

.method private arrayToMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_17

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return-object v1
.end method

.method public static autoQuoteApostrophe(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x27

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_14
    if-ge v3, v4, :cond_4c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v5, :pswitch_data_5c

    :cond_1d
    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :pswitch_23
    sparse-switch v2, :sswitch_data_68

    goto :goto_1d

    :sswitch_27
    const/4 v5, 0x1

    goto :goto_1d

    :sswitch_29
    const/4 v5, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :pswitch_2d
    sparse-switch v2, :sswitch_data_72

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_1d

    :sswitch_35
    const/4 v5, 0x0

    goto :goto_1d

    :sswitch_37
    const/4 v5, 0x2

    goto :goto_1d

    :pswitch_39
    packed-switch v2, :pswitch_data_80

    goto :goto_1d

    :pswitch_3d
    const/4 v5, 0x0

    goto :goto_1d

    :pswitch_3f
    packed-switch v2, :pswitch_data_86

    :pswitch_42
    goto :goto_1d

    :pswitch_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :pswitch_46
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1d

    const/4 v5, 0x0

    goto :goto_1d

    :cond_4c
    const/4 v6, 0x1

    if-eq v5, v6, :cond_52

    const/4 v6, 0x2

    if-ne v5, v6, :cond_55

    :cond_52
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_55
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v6

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2d
        :pswitch_39
        :pswitch_3f
    .end packed-switch

    :sswitch_data_68
    .sparse-switch
        0x27 -> :sswitch_27
        0x7b -> :sswitch_29
    .end sparse-switch

    :sswitch_data_72
    .sparse-switch
        0x27 -> :sswitch_35
        0x7b -> :sswitch_37
        0x7d -> :sswitch_37
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x27
        :pswitch_3d
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x7b
        :pswitch_43
        :pswitch_42
        :pswitch_46
    .end packed-switch
.end method

.method private static final copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuffer;)V
    .registers 8

    const/4 v1, 0x0

    move v2, p1

    :goto_2
    if-ge v2, p2, :cond_34

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_15

    const-string v3, "\'{\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_15
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_26

    if-eqz v1, :cond_20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    goto :goto_12

    :cond_20
    const-string v3, "\'}\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_26
    const/16 v3, 0x27

    if-ne v0, v3, :cond_30

    const-string v3, "\'\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_34
    return-void
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_19

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v0

    :goto_15
    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public static format(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAlphaIdentifier(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    :goto_8
    return v1

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_31

    if-nez v0, :cond_1e

    sget-object v1, Lcom/ibm/icu/text/MessageFormat;->IDStartChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_1e
    if-lez v0, :cond_2e

    sget-object v1, Lcom/ibm/icu/text/MessageFormat;->IDContChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2c
    move v1, v3

    goto :goto_8

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_31
    const/4 v1, 0x1

    goto :goto_8
.end method

.method private makeFormat(II[Ljava/lang/StringBuffer;)V
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-lt v0, v1, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v13, v21, 0x2

    new-array v12, v13, [Ljava/text/Format;

    new-array v14, v13, [I

    new-array v10, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v12

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v14

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v10

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    :cond_8d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    move v15, v0

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, p3, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    aput v22, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v22, p3, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, p2

    const/16 v21, 0x1

    :try_start_ba
    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_c3} :catch_fc

    move-result v5

    :goto_c4
    if-nez p2, :cond_d0

    if-ltz v5, :cond_101

    const/16 v21, 0x1

    :goto_ca
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    :cond_d0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    move/from16 v21, v0

    if-eqz v21, :cond_da

    if-ltz v5, :cond_f4

    :cond_da
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    move/from16 v21, v0

    if-nez v21, :cond_104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, p2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->isAlphaIdentifier(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_104

    :cond_f4
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "All argument identifiers have to be either non-negative numbers or strings following the pattern ([:ID_Start:] [:ID_Continue:]*).\nFor more details on these unicode sets, visit http://demo.icu-project.org/icu-bin/ubrowse"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :catch_fc
    move-exception v21

    move-object/from16 v7, v21

    const/4 v5, -0x1

    goto :goto_c4

    :cond_101
    const/16 v21, 0x0

    goto :goto_ca

    :cond_104
    const/4 v11, 0x0

    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    packed-switch v21, :pswitch_data_3ac

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "unknown format type at "

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :pswitch_123
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    packed-switch v21, :pswitch_data_3c2

    new-instance v11, Lcom/ibm/icu/text/DecimalFormat;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    :goto_151
    :pswitch_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v21, v0

    aput-object v11, v21, p2

    const/16 v21, 0x1

    aget-object v21, p3, v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->setLength(I)V

    const/16 v21, 0x2

    aget-object v21, p3, v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->setLength(I)V

    const/16 v21, 0x3

    aget-object v21, p3, v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void

    :pswitch_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v11

    goto :goto_151

    :pswitch_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v11

    goto :goto_151

    :pswitch_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v11

    goto :goto_151

    :pswitch_196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v11

    goto :goto_151

    :pswitch_1a1
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    packed-switch v21, :pswitch_data_3ce

    new-instance v11, Lcom/ibm/icu/text/SimpleDateFormat;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_151

    :pswitch_1cb
    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_1d9
    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_1e7
    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_1f5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_203
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_211
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    packed-switch v21, :pswitch_data_3dc

    new-instance v11, Lcom/ibm/icu/text/SimpleDateFormat;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto/16 :goto_151

    :pswitch_23c
    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_24a
    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_258
    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_266
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_274
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v11

    goto/16 :goto_151

    :pswitch_282
    :try_start_282
    new-instance v11, Ljava/text/ChoiceFormat;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_292} :catch_294

    goto/16 :goto_151

    :catch_294
    move-exception v21

    move-object/from16 v7, v21

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Choice Pattern incorrect"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :pswitch_2a4
    new-instance v18, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_2cc

    :try_start_2c9
    invoke-virtual/range {v18 .. v19}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2cc} :catch_3a3

    :cond_2cc
    :goto_2cc
    move-object/from16 v11, v18

    goto/16 :goto_151

    :pswitch_2d0
    new-instance v18, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_2f8

    :try_start_2f5
    invoke-virtual/range {v18 .. v19}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2f8} :catch_3a6

    :cond_2f8
    :goto_2f8
    move-object/from16 v11, v18

    goto/16 :goto_151

    :pswitch_2fc
    new-instance v18, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_324

    :try_start_321
    invoke-virtual/range {v18 .. v19}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_324} :catch_3a9

    :cond_324
    :goto_324
    move-object/from16 v11, v18

    goto/16 :goto_151

    :pswitch_328
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_337
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_38a

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v21, 0x27

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_383

    add-int/lit8 v21, v8, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_377

    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x27

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_377

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    :goto_374
    add-int/lit8 v8, v8, 0x1

    goto :goto_337

    :cond_377
    if-nez v9, :cond_37e

    const/16 v21, 0x1

    move/from16 v9, v21

    :goto_37d
    goto :goto_374

    :cond_37e
    const/16 v21, 0x0

    move/from16 v9, v21

    goto :goto_37d

    :cond_383
    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_374

    :cond_38a
    new-instance v16, Lcom/ibm/icu/text/PluralFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralFormat;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    move-object/from16 v11, v16

    goto/16 :goto_151

    :catch_3a3
    move-exception v21

    goto/16 :goto_2cc

    :catch_3a6
    move-exception v21

    goto/16 :goto_2f8

    :catch_3a9
    move-exception v21

    goto/16 :goto_324

    :pswitch_data_3ac
    .packed-switch 0x0
        :pswitch_151
        :pswitch_123
        :pswitch_1a1
        :pswitch_211
        :pswitch_282
        :pswitch_2a4
        :pswitch_2d0
        :pswitch_2fc
        :pswitch_328
    .end packed-switch

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_175
        :pswitch_180
        :pswitch_18b
        :pswitch_196
    .end packed-switch

    :pswitch_data_3ce
    .packed-switch 0x0
        :pswitch_1cb
        :pswitch_1d9
        :pswitch_1e7
        :pswitch_1f5
        :pswitch_203
    .end packed-switch

    :pswitch_data_3dc
    .packed-switch 0x0
        :pswitch_23c
        :pswitch_24a
        :pswitch_258
        :pswitch_266
        :pswitch_274
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    if-nez v3, :cond_26

    iput-boolean v5, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNumbers:[I

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_12
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNumbers:[I

    array-length v3, v3

    if-ge v0, v3, :cond_26

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNumbers:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    iget v3, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_66

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    iget v4, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-le v3, v4, :cond_66

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    array-length v3, v3

    iget v4, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-le v3, v4, :cond_66

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    array-length v3, v3

    iget v4, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-le v3, v4, :cond_66

    move v1, v5

    :goto_41
    if-eqz v1, :cond_5c

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    iget v0, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    :goto_4d
    if-ltz v0, :cond_5c

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-ltz v3, :cond_5b

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-le v3, v2, :cond_69

    :cond_5b
    const/4 v1, 0x0

    :cond_5c
    if-nez v1, :cond_70

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v4, "Could not reconstruct MessageFormat from corrupt stream."

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_66
    const/4 v3, 0x0

    move v1, v3

    goto :goto_41

    :cond_69
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    :cond_70
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    if-nez v3, :cond_7c

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    :cond_7c
    return-void
.end method

.method private subformat(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 18

    const/4 v12, 0x3

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v4, 0x0

    :goto_7
    iget v10, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v4, v10, :cond_14a

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v11, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v11, v11, v4

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v6, v10, v4

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v3, v10, v4

    if-eqz p1, :cond_28

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    :cond_28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_44
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_47
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v8, 0x0

    if-nez v7, :cond_b9

    const-string v2, "null"

    :cond_51
    :goto_51
    if-eqz p4, :cond_117

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eq v5, v10, :cond_6b

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v10

    move-object/from16 v0, p4

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    :cond_6b
    if-eqz v8, :cond_94

    invoke-virtual {v8, v7}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/ibm/icu/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eq v5, v10, :cond_93

    sget-object v10, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    iget-boolean v11, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-eqz v11, :cond_112

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    :goto_85
    invoke-static {v9, v10, v11}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v10

    move-object/from16 v0, p4

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    :cond_93
    const/4 v2, 0x0

    :cond_94
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_44

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v10, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    iget-boolean v11, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-eqz v11, :cond_115

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    :goto_aa
    invoke-static {v2, v10, v11}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v10

    move-object/from16 v0, p4

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    goto :goto_44

    :cond_b9
    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v10, v10, v4

    if-eqz v10, :cond_e6

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v10, v4

    instance-of v10, v8, Ljava/text/ChoiceFormat;

    if-nez v10, :cond_cb

    instance-of v10, v8, Lcom/ibm/icu/text/PluralFormat;

    if-eqz v10, :cond_51

    :cond_cb
    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v10, v10, v4

    invoke-virtual {v10, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x7b

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_51

    new-instance v8, Lcom/ibm/icu/text/MessageFormat;

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v8, v2, v10}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    move-object v7, p1

    const/4 v2, 0x0

    goto/16 :goto_51

    :cond_e6
    instance-of v10, v7, Ljava/lang/Number;

    if-eqz v10, :cond_f2

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v10}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_51

    :cond_f2
    instance-of v10, v7, Ljava/util/Date;

    if-eqz v10, :cond_fe

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v12, v12, v10}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    goto/16 :goto_51

    :cond_fe
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_108

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_51

    :cond_108
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_51

    const-string v2, "null"

    goto/16 :goto_51

    :cond_112
    move-object v11, v3

    goto/16 :goto_85

    :cond_115
    move-object v11, v3

    goto :goto_aa

    :cond_117
    if-eqz v8, :cond_11d

    invoke-virtual {v8, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_11d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v4, :cond_144

    if-eqz p3, :cond_144

    sget-object v10, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ibm/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_144

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_144
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    goto/16 :goto_44

    :cond_14a
    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v11, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_16f

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eq v5, v10, :cond_16f

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v10

    move-object/from16 v0, p4

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16f
    return-object p2
.end method

.method private subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 6

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->arrayToMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/ibm/icu/text/MessageFormat;->subformat(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 14

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x27

    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_8
    array-length v7, v6

    if-ge v3, v7, :cond_15

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput v10, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    const/4 v3, 0x0

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_94

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v5, :cond_59

    if-ne v1, v9, :cond_4b

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_44

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_44

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_44
    if-nez v4, :cond_49

    const/4 v7, 0x1

    move v4, v7

    :goto_48
    goto :goto_41

    :cond_49
    move v4, v11

    goto :goto_48

    :cond_4b
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_53

    if-nez v4, :cond_53

    const/4 v5, 0x1

    goto :goto_41

    :cond_53
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    :cond_59
    if-eqz v4, :cond_64

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v1, v9, :cond_41

    const/4 v4, 0x0

    goto :goto_41

    :cond_64
    sparse-switch v1, :sswitch_data_ac

    :goto_67
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    :sswitch_6d
    const/4 v7, 0x3

    if-ge v5, v7, :cond_73

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_73
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    :sswitch_79
    add-int/lit8 v0, v0, 0x1

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    :sswitch_81
    if-nez v0, :cond_8a

    const/4 v5, 0x0

    invoke-direct {p0, v3, v2, v6}, Lcom/ibm/icu/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_8a
    add-int/lit8 v0, v0, -0x1

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    :sswitch_92
    const/4 v4, 0x1

    goto :goto_67

    :cond_94
    if-nez v0, :cond_a2

    if-eqz v5, :cond_a2

    iput v10, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unmatched braces in the pattern."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a2
    aget-object v7, v6, v11

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_ac
    .sparse-switch
        0x27 -> :sswitch_92
        0x2c -> :sswitch_6d
        0x7b -> :sswitch_79
        0x7d -> :sswitch_81
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/MessageFormat;

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v2}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/Format;

    check-cast v2, [Ljava/text/Format;

    iput-object v2, v1, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    const/4 v0, 0x0

    :goto_13
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2c

    iget-object v3, v1, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v3, v0

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2f
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, v1, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    iput-boolean v2, v1, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    goto :goto_5

    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/MessageFormat;

    move-object v1, v0

    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    iget v3, v1, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-ne v2, v3, :cond_58

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, v1, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    iget-object v3, v1, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v3, v1, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-boolean v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    iget-boolean v3, v1, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-ne v2, v3, :cond_58

    move v2, v5

    goto :goto_5

    :cond_58
    move v2, v4

    goto :goto_5
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_e

    :cond_7
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/ibm/icu/text/MessageFormat;->subformat(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-boolean v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/ibm/icu/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_d
.end method

.method public final format(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/MessageFormat;->subformat(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6

    iget-boolean v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_15

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_2b

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/ibm/icu/text/MessageFormat;->subformat(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_33

    const-string v2, ""

    invoke-static {v2}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    :goto_2a
    return-object v2

    :cond_2b
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/ibm/icu/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/text/AttributedCharacterIterator;

    check-cast p0, [Ljava/text/AttributedCharacterIterator;

    invoke-static {p0}, Lcom/ibm/icu/text/MessageFormat;->_createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    goto :goto_2a
.end method

.method public getFormatArgumentNames()Ljava/util/Set;
    .registers 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v0, v2, :cond_14

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    return-object v1
.end method

.method public getFormatByArgumentName(Ljava/lang/String;)Ljava/text/Format;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_17

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v1, v1, v0

    :goto_13
    return-object v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getFormats()[Ljava/text/Format;
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/text/Format;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 7

    iget-boolean v4, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_e
    iget v4, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v1, v4, :cond_20

    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_1d

    move v2, v0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    add-int/lit8 v4, v2, 0x1

    new-array v3, v4, [Ljava/text/Format;

    const/4 v1, 0x0

    :goto_25
    iget v4, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v1, v4, :cond_3a

    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3a
    return-object v3
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "MessageFormat parse error!"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1c
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 12

    iget-boolean v7, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v7, :cond_c

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v1, 0x0

    :goto_12
    iget v7, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v1, v7, :cond_24

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_21

    move v4, v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    if-nez v5, :cond_28

    const/4 v7, 0x0

    :goto_27
    return-object v7

    :cond_28
    add-int/lit8 v7, v4, 0x1

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_34

    :cond_4b
    move-object v7, v6

    goto :goto_27
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object v0

    goto :goto_8
.end method

.method public parseToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "MessageFormat parse error!"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1c
    return-object v1
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .registers 16

    const/4 v12, 0x0

    if-nez p1, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    :goto_9
    return-object v10

    :cond_a
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    new-instance v9, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v1, 0x0

    :goto_1b
    iget v10, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v1, v10, :cond_c1

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v10, v10, v1

    sub-int v2, v10, v4

    if-eqz v2, :cond_2f

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v10, v4, p1, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_4f

    :cond_2f
    add-int/2addr v6, v2

    add-int/2addr v4, v2

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v10, v10, v1

    if-nez v10, :cond_9e

    iget v10, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-eq v1, v10, :cond_54

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    add-int/lit8 v11, v1, 0x1

    aget v10, v10, v11

    move v8, v10

    :goto_42
    if-lt v4, v8, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_48
    if-gez v3, :cond_67

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v10, v12

    goto :goto_9

    :cond_4f
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v10, v12

    goto :goto_9

    :cond_54
    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v8, v10

    goto :goto_42

    :cond_5c
    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v10, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_48

    :cond_67
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_99

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    move v6, v3

    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b

    :cond_9e
    invoke-virtual {v9, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v10, v10, v1

    iget-object v11, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v11, v11, v1

    invoke-virtual {v11, p1, v9}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ne v10, v6, :cond_bc

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v10, v12

    goto/16 :goto_9

    :cond_bc
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    goto :goto_9a

    :cond_c1
    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v4

    if-eqz v2, :cond_d3

    iget-object v10, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v10, v4, p1, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_db

    :cond_d3
    add-int v10, v6, v2

    invoke-virtual {p2, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v10, v5

    goto/16 :goto_9

    :cond_db
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v10, v12

    goto/16 :goto_9
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 6

    iget-boolean v1, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget v1, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_22

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_1f

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_22
    return-void
.end method

.method public setFormatByArgumentName(Ljava/lang/String;Ljava/text/Format;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_16

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 6

    array-length v1, p1

    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_b

    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v2, 0x1

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_17

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 6

    iget-boolean v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v0, v2, :cond_25

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method

.method public setFormatsByArgumentName(Ljava/util/Map;)V
    .registers 5

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_20

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v0, v2, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_20
    return-void
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)V
    .registers 3

    invoke-virtual {p0}, Lcom/ibm/icu/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->setLocale(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .registers 15

    const/16 v13, 0x27

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_d
    iget v7, p0, Lcom/ibm/icu/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_215

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v8, v8, v2

    invoke-static {v7, v4, v8, v6}, Lcom/ibm/icu/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuffer;)V

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->offsets:[I

    aget v4, v7, v2

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNames:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    if-nez v7, :cond_38

    :cond_30
    :goto_30
    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_38
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    instance-of v7, v7, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v7, :cond_ba

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v8}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const-string v7, ",number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_56
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v8}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    const-string v7, ",number,currency"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_6c
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v8}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    const-string v7, ",number,percent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_82
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v8}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    const-string v7, ",number,integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",number,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    check-cast v7, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v7}, Lcom/ibm/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_ba
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    instance-of v7, v7, Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz v7, :cond_19c

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v11, v8}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    const-string v7, ",date"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_d9
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v12, v8}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f0

    const-string v7, ",date,short"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_f0
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v10, v8}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_107

    const-string v7, ",date,long"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_107
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v9, v8}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11e

    const-string v7, ",date,full"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_11e
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v11, v8}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_135

    const-string v7, ",time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_135
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v12, v8}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    const-string v7, ",time,short"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_14c
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v10, v8}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_163

    const-string v7, ",time,long"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_163
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v9, v8}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17a

    const-string v7, ",time,full"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_17a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",date,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    check-cast v7, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v7}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_19c
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    instance-of v7, v7, Ljava/text/ChoiceFormat;

    if-eqz v7, :cond_1c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",choice,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    check-cast v7, Ljava/text/ChoiceFormat;

    invoke-virtual {v7}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_1c6
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    instance-of v7, v7, Lcom/ibm/icu/text/PluralFormat;

    if-eqz v7, :cond_30

    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v7, v7, v2

    check-cast v7, Lcom/ibm/icu/text/PluralFormat;

    invoke-virtual {v7}, Lcom/ibm/icu/text/PluralFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eqz v7, :cond_1fd

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1e4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1f9

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_1f3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e4

    :cond_1f9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1fd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",plural,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_30

    :cond_215
    iget-object v7, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v8, p0, Lcom/ibm/icu/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v4, v8, v6}, Lcom/ibm/icu/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuffer;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public usesNamedArguments()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/MessageFormat;->argumentNamesAreNumeric:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
