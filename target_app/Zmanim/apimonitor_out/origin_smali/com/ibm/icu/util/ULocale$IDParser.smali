.class final Lcom/ibm/icu/util/ULocale$IDParser;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDParser"
.end annotation


# static fields
.field private static final COMMA:C = ','

.field private static final DONE:C = '\uffff'

.field private static final DOT:C = '.'

.field private static final HYPHEN:C = '-'

.field private static final ITEM_SEPARATOR:C = ';'

.field private static final KEYWORD_ASSIGN:C = '='

.field private static final KEYWORD_SEPARATOR:C = '@'


# instance fields
.field baseName:Ljava/lang/String;

.field private blen:I

.field private buffer:[C

.field private canonicalize:Z

.field private hadCountry:Z

.field private id:[C

.field private index:I

.field keywords:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    iput-boolean p2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->canonicalize:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/ibm/icu/util/ULocale$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ibm/icu/util/ULocale$IDParser;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private addSeparator()V
    .registers 2

    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    return-void
.end method

.method private append(C)V
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    aput-char p1, v2, v3
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_7} :catch_e

    :goto_7
    iget v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    return-void

    :catch_e
    move-exception v2

    move-object v0, v2

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    array-length v2, v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_18

    throw v0

    :cond_18
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [C

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    iget-object v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    aput-char p1, v1, v2

    iput-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    goto :goto_7
.end method

.method private append(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private atTerminator()Z
    .registers 3

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->isTerminator(C)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private getKeyComparator()Ljava/util/Comparator;
    .registers 2

    new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser$1;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale$IDParser$1;-><init>(Lcom/ibm/icu/util/ULocale$IDParser;)V

    return-object v0
.end method

.method private getKeyword()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->isDoneOrKeywordAssign(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getKeywordMap()Ljava/util/Map;
    .registers 7

    iget-object v4, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    if-nez v4, :cond_1a

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->setToKeywordStart()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_b
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1d

    :cond_15
    :goto_15
    if-eqz v2, :cond_53

    move-object v4, v2

    :goto_18
    iput-object v4, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    :cond_1a
    iget-object v4, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    return-object v4

    :cond_1d
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v0

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_33

    const v4, 0xffff

    if-eq v0, v4, :cond_15

    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_b

    goto :goto_15

    :cond_33
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2a

    if-nez v2, :cond_4c

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :cond_48
    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_4c
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_2a

    :cond_53
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_18
.end method

.method private getString(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    if-ne p1, v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    iget v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6
.end method

.method private getValue()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->isDoneOrItemSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private haveExperimentalLanguagePrefix()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2c

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    aget-char v0, v1, v4

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_14

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_2c

    :cond_14
    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    aget-char v0, v1, v3

    const/16 v1, 0x78

    if-eq v0, v1, :cond_28

    const/16 v1, 0x58

    if-eq v0, v1, :cond_28

    const/16 v1, 0x69

    if-eq v0, v1, :cond_28

    const/16 v1, 0x49

    if-ne v0, v1, :cond_2a

    :cond_28
    move v1, v4

    :goto_29
    return v1

    :cond_2a
    move v1, v3

    goto :goto_29

    :cond_2c
    move v1, v3

    goto :goto_29
.end method

.method private haveKeywordAssign()Z
    .registers 4

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    aget-char v1, v1, v0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static isDoneOrItemSeparator(C)Z
    .registers 2

    const v0, 0xffff

    if-eq p0, v0, :cond_9

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isDoneOrKeywordAssign(C)Z
    .registers 2

    const v0, 0xffff

    if-eq p0, v0, :cond_9

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isTerminator(C)Z
    .registers 3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_d

    const v0, 0xffff

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isTerminatorOrIDSeparator(C)Z
    .registers 3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_15

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_15

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_15

    const v0, 0xffff

    if-eq p1, v0, :cond_15

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private next()C
    .registers 4

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v1, v1

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    const v0, 0xffff

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    aget-char v0, v0, v1

    goto :goto_10
.end method

.method private parseCountry()I
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->atTerminator()Z

    move-result v5

    if-nez v5, :cond_80

    iget v4, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    :goto_12
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v5

    if-nez v5, :cond_2f

    iget v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    if-ne v3, v5, :cond_27

    iput-boolean v6, p0, Lcom/ibm/icu/util/ULocale$IDParser;->hadCountry:Z

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->addSeparator()V

    add-int/lit8 v3, v3, 0x1

    :cond_27
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    goto :goto_12

    :cond_2f
    iget v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    sub-int v1, v5, v3

    if-nez v1, :cond_3c

    :cond_3a
    :goto_3a
    move v5, v3

    :goto_3b
    return v5

    :cond_3c
    const/4 v5, 0x2

    if-lt v1, v5, :cond_41

    if-le v1, v7, :cond_4b

    :cond_41
    iput v4, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->hadCountry:Z

    goto :goto_3a

    :cond_4b
    if-ne v1, v7, :cond_3a

    #calls: Lcom/ibm/icu/util/ULocale;->initCountryTables()V
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$700()V

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$800()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/ibm/icu/util/ULocale;->access$300([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_68

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$900()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-direct {p0, v3, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->set(ILjava/lang/String;)V

    goto :goto_3a

    :cond_68
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$1000()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/ibm/icu/util/ULocale;->access$300([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3a

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$1100()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-direct {p0, v3, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->set(ILjava/lang/String;)V

    goto :goto_3a

    :cond_80
    iget v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    goto :goto_3b
.end method

.method private parseKeywords()I
    .registers 7

    iget v4, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v1, 0x1

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    if-eqz v1, :cond_41

    const/16 v5, 0x40

    :goto_1f
    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->append(Ljava/lang/String;)V

    const/16 v5, 0x3d

    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->append(Ljava/lang/String;)V

    goto :goto_15

    :cond_41
    const/16 v5, 0x3b

    goto :goto_1f

    :cond_44
    iget v5, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    if-eq v5, v4, :cond_4a

    add-int/lit8 v4, v4, 0x1

    :cond_4a
    return v4
.end method

.method private parseLanguage()I
    .registers 7

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->haveExperimentalLanguagePrefix()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    const/16 v3, 0x2d

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    const/4 v3, 0x2

    iput v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    goto :goto_1a

    :cond_2c
    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_51

    #calls: Lcom/ibm/icu/util/ULocale;->initLanguageTables()V
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$100()V

    invoke-direct {p0, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$200()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v1}, Lcom/ibm/icu/util/ULocale;->access$300([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_52

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$400()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-direct {p0, v5, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->set(ILjava/lang/String;)V

    :cond_51
    :goto_51
    return v5

    :cond_52
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$500()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v1}, Lcom/ibm/icu/util/ULocale;->access$300([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_51

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->access$600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-direct {p0, v5, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->set(ILjava/lang/String;)V

    goto :goto_51
.end method

.method private parseScript()I
    .registers 6

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->atTerminator()Z

    move-result v3

    if-nez v3, :cond_46

    iget v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    :goto_10
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v3

    if-nez v3, :cond_31

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    if-ne v3, v1, :cond_29

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->addSeparator()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    goto :goto_10

    :cond_29
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    goto :goto_10

    :cond_31
    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int/2addr v3, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_43

    iput v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    :goto_41
    move v3, v1

    :goto_42
    return v3

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_46
    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    goto :goto_42
.end method

.method private parseVariant()I
    .registers 9

    const/4 v7, 0x1

    iget v3, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_6
    :goto_6
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v0

    const v6, 0xffff

    if-eq v0, v6, :cond_20

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_16

    const/4 v5, 0x0

    const/4 v4, 0x1

    goto :goto_6

    :cond_16
    const/16 v6, 0x40

    if-ne v0, v6, :cond_2a

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->haveKeywordAssign()Z

    move-result v6

    if-eqz v6, :cond_26

    :cond_20
    iget v6, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    return v3

    :cond_26
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    goto :goto_6

    :cond_2a
    if-eqz v5, :cond_2e

    const/4 v5, 0x0

    goto :goto_6

    :cond_2e
    if-nez v4, :cond_6

    if-eqz v2, :cond_4a

    iget v6, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    if-ne v6, v3, :cond_5c

    move v1, v7

    :goto_37
    const/4 v2, 0x0

    if-eqz v1, :cond_43

    iget-boolean v6, p0, Lcom/ibm/icu/util/ULocale$IDParser;->hadCountry:Z

    if-nez v6, :cond_43

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->addSeparator()V

    add-int/lit8 v3, v3, 0x1

    :cond_43
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->addSeparator()V

    if-eqz v1, :cond_4a

    add-int/lit8 v3, v3, 0x1

    :cond_4a
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_56

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_58

    :cond_56
    const/16 v0, 0x5f

    :cond_58
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->append(C)V

    goto :goto_6

    :cond_5c
    const/4 v6, 0x0

    move v1, v6

    goto :goto_37
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    return-void
.end method

.method private set(ILjava/lang/String;)V
    .registers 3

    iput p1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ULocale$IDParser;->append(Ljava/lang/String;)V

    return-void
.end method

.method private setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    if-nez p1, :cond_9

    if-eqz p3, :cond_8

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyword must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "value must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    if-eqz p2, :cond_8

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_54
    if-nez p3, :cond_5c

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_5c
    if-eqz p2, :cond_62

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_62
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->keywords:Ljava/util/Map;

    goto :goto_8
.end method

.method private setToKeywordStart()Z
    .registers 6

    const/4 v4, 0x1

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :goto_3
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    aget-char v2, v2, v0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_36

    iget-boolean v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->canonicalize:Z

    if-eqz v2, :cond_2b

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_17
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v2, v2

    if-ge v1, v2, :cond_39

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    aget-char v2, v2, v1

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_28

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    move v2, v4

    :goto_27
    return v2

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->id:[C

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    move v2, v4

    goto :goto_27

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_39
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private skipCountry()V
    .registers 4

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->atTerminator()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipUntilTerminatorOrIDSeparator()V

    iget v2, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int v0, v2, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1b

    const/4 v2, 0x3

    if-le v0, v2, :cond_1d

    :cond_1b
    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :cond_1d
    return-void
.end method

.method private skipLanguage()V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->haveExperimentalLanguagePrefix()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipUntilTerminatorOrIDSeparator()V

    return-void
.end method

.method private skipScript()V
    .registers 4

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->atTerminator()Z

    move-result v1

    if-nez v1, :cond_19

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipUntilTerminatorOrIDSeparator()V

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    sub-int/2addr v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_19

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    :cond_19
    return-void
.end method

.method private skipUntilTerminatorOrIDSeparator()V
    .registers 3

    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->index:I

    return-void
.end method


# virtual methods
.method public defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getBaseName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->baseName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseBaseName()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->reset()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipLanguage()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipScript()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseCountry()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_b
.end method

.method public getKeywords()Ljava/util/Iterator;
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_b
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->reset()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseLanguage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageScriptCountryVariant()[Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->reset()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseLanguage()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseScript()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseCountry()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseVariant()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseBaseName()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseKeywords()I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->reset()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipLanguage()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseScript()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->reset()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipLanguage()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipScript()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->skipCountry()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseVariant()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseBaseName()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->baseName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;->set(ILjava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->reset()V

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseLanguage()I

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseScript()I

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseCountry()I

    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$IDParser;->parseVariant()I

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->buffer:[C

    iget v1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    sub-int/2addr v1, v2

    aget-char v0, v0, v1

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/util/ULocale$IDParser;->blen:I

    goto :goto_b
.end method

.method public setBaseName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/util/ULocale$IDParser;->baseName:Ljava/lang/String;

    return-void
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
