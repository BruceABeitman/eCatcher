.class public Lcom/ibm/icu/impl/PatternTokenizer;
.super Ljava/lang/Object;
.source "PatternTokenizer.java"


# static fields
.field private static final AFTER_QUOTE:I = -0x1

.field public static final BACK_SLASH:C = '\\'

.field public static final BROKEN_ESCAPE:I = 0x4

.field public static final BROKEN_QUOTE:I = 0x3

.field public static final DONE:I = 0x0

.field private static final HEX:I = 0x4

.field private static IN_QUOTE:I = 0x0

.field public static final LITERAL:I = 0x2

.field private static final NONE:I = 0x0

.field private static final NORMAL_QUOTE:I = 0x2

.field private static NO_QUOTE:I = 0x0

.field public static final SINGLE_QUOTE:C = '\''

.field private static final SLASH_START:I = 0x3

.field private static final START_QUOTE:I = 0x1

.field public static final SYNTAX:I = 0x1

.field public static final UNKNOWN:I = 0x5


# instance fields
.field private escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private limit:I

.field private transient needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private pattern:Ljava/lang/String;

.field private start:I

.field private syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private usingQuote:Z

.field private usingSlash:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    const/4 v0, -0x2

    sput v0, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    iput-boolean v1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    iput-boolean v1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method private appendEscaped(Ljava/lang/StringBuffer;I)V
    .registers 5

    const v0, 0xffff

    if-gt p2, v0, :cond_14

    const-string v0, "\\u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_13
    return-void

    :cond_14
    const-string v0, "\\U"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13
.end method


# virtual methods
.method public getEscapeCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public getExtraQuotingCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public getIgnorableCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public getLimit()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    return v0
.end method

.method public getStart()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return v0
.end method

.method public getSyntaxCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public isUsingQuote()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    return v0
.end method

.method public isUsingSlash()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    return v0
.end method

.method public next(Ljava/lang/StringBuffer;)I
    .registers 12

    const/16 v9, 0x5c

    iget v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    iget v8, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    if-lt v7, v8, :cond_a

    const/4 v7, 0x0

    :goto_9
    return v7

    :cond_a
    const/4 v6, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    :goto_11
    iget v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    if-ge v3, v7, :cond_b1

    iget-object v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v5, :pswitch_data_ca

    :goto_1e
    :pswitch_1e
    iget-object v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_7e

    :cond_26
    :goto_26
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_11

    :pswitch_2c
    sparse-switch v0, :sswitch_data_da

    iget-boolean v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v7, :cond_41

    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_26

    :sswitch_38
    const/4 v5, 0x4

    const/4 v1, 0x4

    const/4 v2, 0x0

    goto :goto_26

    :sswitch_3c
    const/4 v5, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    goto :goto_26

    :cond_41
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_1e

    :pswitch_46
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    sparse-switch v0, :sswitch_data_e4

    iput v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    const/4 v7, 0x4

    goto :goto_9

    :sswitch_50
    add-int/lit8 v2, v2, -0x30

    :goto_52
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_26

    const/4 v5, 0x0

    invoke-static {p1, v2}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_26

    :sswitch_5b
    add-int/lit8 v2, v2, -0x57

    goto :goto_52

    :sswitch_5e
    add-int/lit8 v2, v2, -0x37

    goto :goto_52

    :pswitch_61
    if-ne v0, v4, :cond_68

    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x2

    goto :goto_26

    :cond_68
    const/4 v5, 0x0

    goto :goto_1e

    :pswitch_6a
    if-ne v0, v4, :cond_71

    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_26

    :cond_71
    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x2

    goto :goto_26

    :pswitch_76
    if-ne v0, v4, :cond_7a

    const/4 v5, -0x1

    goto :goto_26

    :cond_7a
    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_26

    :cond_7e
    iget-object v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_9b

    const/4 v7, 0x5

    if-ne v6, v7, :cond_96

    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v7, v3

    iput v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    const/4 v7, 0x1

    goto/16 :goto_9

    :cond_96
    iput v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    move v7, v6

    goto/16 :goto_9

    :cond_9b
    const/4 v6, 0x2

    if-ne v0, v9, :cond_a0

    const/4 v5, 0x3

    goto :goto_26

    :cond_a0
    iget-boolean v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v7, :cond_ac

    const/16 v7, 0x27

    if-ne v0, v7, :cond_ac

    move v4, v0

    const/4 v5, 0x1

    goto/16 :goto_26

    :cond_ac
    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto/16 :goto_26

    :cond_b1
    iget v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    iput v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    packed-switch v5, :pswitch_data_13e

    :goto_b8
    move v7, v6

    goto/16 :goto_9

    :pswitch_bb
    const/4 v6, 0x4

    goto :goto_b8

    :pswitch_bd
    iget-boolean v7, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v7, :cond_c3

    const/4 v6, 0x4

    goto :goto_b8

    :cond_c3
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b8

    :pswitch_c7
    const/4 v6, 0x3

    goto :goto_b8

    nop

    :pswitch_data_ca
    .packed-switch -0x1
        :pswitch_61
        :pswitch_1e
        :pswitch_6a
        :pswitch_76
        :pswitch_2c
        :pswitch_46
    .end packed-switch

    :sswitch_data_da
    .sparse-switch
        0x55 -> :sswitch_3c
        0x75 -> :sswitch_38
    .end sparse-switch

    :sswitch_data_e4
    .sparse-switch
        0x30 -> :sswitch_50
        0x31 -> :sswitch_50
        0x32 -> :sswitch_50
        0x33 -> :sswitch_50
        0x34 -> :sswitch_50
        0x35 -> :sswitch_50
        0x36 -> :sswitch_50
        0x37 -> :sswitch_50
        0x38 -> :sswitch_50
        0x39 -> :sswitch_50
        0x41 -> :sswitch_5e
        0x42 -> :sswitch_5e
        0x43 -> :sswitch_5e
        0x44 -> :sswitch_5e
        0x45 -> :sswitch_5e
        0x46 -> :sswitch_5e
        0x61 -> :sswitch_5b
        0x62 -> :sswitch_5b
        0x63 -> :sswitch_5b
        0x64 -> :sswitch_5b
        0x65 -> :sswitch_5b
        0x66 -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_c7
        :pswitch_bd
        :pswitch_bb
    .end packed-switch
.end method

.method public normalize()Ljava/lang/String;
    .registers 6

    iget v1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_c
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v3

    if-nez v3, :cond_1d

    iput v1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1d
    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_c
.end method

.method public quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x5c

    const/16 v6, 0x27

    iget-object v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    if-nez v4, :cond_33

    new-instance v4, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v4}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iget-object v5, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    iget-boolean v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_2a
    iget-boolean v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_33
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget v2, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_aa

    invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    sget v4, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_56

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget v2, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    :cond_56
    invoke-direct {p0, v3, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    :cond_59
    :goto_59
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3b

    :cond_5f
    iget-object v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    sget v4, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_78

    invoke-static {v3, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    iget-boolean v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_59

    if-ne v0, v6, :cond_59

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_59

    :cond_78
    iget-boolean v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v4, :cond_83

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_59

    :cond_83
    iget-boolean v4, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_99

    if-ne v0, v6, :cond_90

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_59

    :cond_90
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    sget v2, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    goto :goto_59

    :cond_99
    invoke-direct {p0, v3, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    goto :goto_59

    :cond_9d
    sget v4, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_a6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget v2, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    :cond_a6
    invoke-static {v3, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_59

    :cond_aa
    sget v4, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_b1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setEscapeCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setExtraQuotingCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setIgnorableCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setLimit(I)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 2

    iput p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    return-object p0
.end method

.method public setPattern(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/PatternTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inconsistent arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public setStart(I)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 2

    iput p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return-object p0
.end method

.method public setSyntaxCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setUsingQuote(Z)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    iput-boolean p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setUsingSlash(Z)Lcom/ibm/icu/impl/PatternTokenizer;
    .registers 3

    iput-boolean p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method
