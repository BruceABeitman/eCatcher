.class public Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatParser"
.end annotation


# instance fields
.field private items:Ljava/util/List;

.field private transient tokenizer:Lcom/ibm/icu/impl/PatternTokenizer;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ibm/icu/impl/PatternTokenizer;

    invoke-direct {v0}, Lcom/ibm/icu/impl/PatternTokenizer;-><init>()V

    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    const-string v2, "[a-zA-Z]"

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/PatternTokenizer;->setSyntaxCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    const-string v2, "[[[:script=Latn:][:script=Cyrl:]]&[[:L:][:M:]]]"

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/PatternTokenizer;->setExtraQuotingCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/PatternTokenizer;->setUsingQuote(Z)Lcom/ibm/icu/impl/PatternTokenizer;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Lcom/ibm/icu/impl/PatternTokenizer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object v0
.end method

.method private addVariable(Ljava/lang/StringBuffer;Z)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_18
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object v0
.end method

.method public hasDateAndTimeFields()Z
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v6, :cond_9

    check-cast v4, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v5

    shl-int v6, v7, v5

    or-int/2addr v0, v6

    goto :goto_9

    :cond_21
    and-int/lit16 v6, v0, 0x3ff

    if-eqz v6, :cond_33

    move v1, v7

    :goto_26
    const v6, 0xfc00

    and-int/2addr v6, v0

    if-eqz v6, :cond_35

    move v2, v7

    :goto_2d
    if-eqz v1, :cond_37

    if-eqz v2, :cond_37

    move v6, v7

    :goto_32
    return v6

    :cond_33
    move v1, v8

    goto :goto_26

    :cond_35
    move v2, v8

    goto :goto_2d

    :cond_37
    move v6, v8

    goto :goto_32
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Lcom/ibm/icu/impl/PatternTokenizer;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
    .registers 9

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    :goto_c
    return-object p0

    :cond_d
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Lcom/ibm/icu/impl/PatternTokenizer;

    invoke-virtual {v3, p1}, Lcom/ibm/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/PatternTokenizer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Lcom/ibm/icu/impl/PatternTokenizer;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0, v2, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    goto :goto_c

    :cond_2b
    const/4 v3, 0x1

    if-ne v1, v3, :cond_45

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_41

    invoke-direct {p0, v2, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    :cond_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1c

    :cond_45
    invoke-direct {p0, v2, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .registers 9

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_6
    if-ge v1, p2, :cond_30

    iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_22

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Lcom/ibm/icu/impl/PatternTokenizer;

    invoke-virtual {v5, v3}, Lcom/ibm/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
