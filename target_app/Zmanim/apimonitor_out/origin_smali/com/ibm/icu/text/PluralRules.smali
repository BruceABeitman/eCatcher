.class public Lcom/ibm/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/PluralRules$RuleChain;,
        Lcom/ibm/icu/text/PluralRules$ConstrainedRule;,
        Lcom/ibm/icu/text/PluralRules$OrConstraint;,
        Lcom/ibm/icu/text/PluralRules$AndConstraint;,
        Lcom/ibm/icu/text/PluralRules$BinaryConstraint;,
        Lcom/ibm/icu/text/PluralRules$RangeConstraint;,
        Lcom/ibm/icu/text/PluralRules$RuleList;,
        Lcom/ibm/icu/text/PluralRules$Rule;,
        Lcom/ibm/icu/text/PluralRules$Constraint;
    }
.end annotation


# static fields
.field private static final CONT_CHARS:Lcom/ibm/icu/text/UnicodeSet; = null

.field public static final DEFAULT:Lcom/ibm/icu/text/PluralRules; = null

.field private static final DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule; = null

.field public static final KEYWORD_FEW:Ljava/lang/String; = "few"

.field public static final KEYWORD_MANY:Ljava/lang/String; = "many"

.field public static final KEYWORD_ONE:Ljava/lang/String; = "one"

.field public static final KEYWORD_OTHER:Ljava/lang/String; = "other"

.field public static final KEYWORD_TWO:Ljava/lang/String; = "two"

.field public static final KEYWORD_ZERO:Ljava/lang/String; = "zero"

.field private static final NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint; = null

.field private static final START_CHARS:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final keywords:Ljava/util/Set;

.field private repeatLimit:I

.field private final rules:Lcom/ibm/icu/text/PluralRules$RuleList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[[:ID_Start:][_]]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->START_CHARS:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:ID_Continue:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->CONT_CHARS:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/PluralRules$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    new-instance v0, Lcom/ibm/icu/text/PluralRules$2;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRules$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    new-instance v1, Lcom/ibm/icu/text/PluralRules$RuleChain;

    sget-object v2, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/PluralRules$RuleChain;-><init>(Lcom/ibm/icu/text/PluralRules$Rule;)V

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-interface {p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-void
.end method

.method public static createRules(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    :goto_4
    return-object v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
    .registers 2

    sget-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .registers 1

    sget-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .registers 3

    sget-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatLimit()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/PluralRules;->repeatLimit:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-interface {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->getRepeatLimit()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/PluralRules;->repeatLimit:I

    :cond_e
    iget v0, p0, Lcom/ibm/icu/text/PluralRules;->repeatLimit:I

    return v0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    sget-object v1, Lcom/ibm/icu/text/PluralRules;->START_CHARS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    sget-object v1, Lcom/ibm/icu/text/PluralRules;->CONT_CHARS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_28

    move v1, v3

    :goto_27
    return v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    const/4 v1, 0x1

    goto :goto_27

    :cond_2d
    move v1, v3

    goto :goto_27
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    array-length v0, p0

    if-ge p1, v0, :cond_6

    aget-object v0, p0, p1

    return-object v0

    :cond_6
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing token at end of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const-string v4, "or"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 p0, 0x0

    move/from16 v13, p0

    move-object/from16 v17, v3

    :goto_1d
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 p0, v0

    move v0, v13

    move/from16 v1, p0

    if-ge v0, v1, :cond_179

    const/16 p0, 0x0

    aget-object v3, v16, v13

    const-string v4, "and"

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/Utility;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x0

    move v15, v3

    :goto_33
    array-length v3, v11

    if-ge v15, v3, :cond_160

    sget-object v3, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    aget-object v4, v11, v15

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ibm/icu/impl/Utility;->splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v14, 0x0

    const/16 v18, 0x0

    add-int/lit8 v20, v18, 0x1

    aget-object v18, v19, v18

    const-string v21, "n"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_64

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0

    :cond_64
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_184

    add-int/lit8 v7, v20, 0x1

    aget-object v3, v19, v20

    const-string v8, "mod"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_180

    add-int/lit8 v3, v7, 0x1

    aget-object v4, v19, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v7, v3, 0x1

    move-object/from16 v0, v19

    move v1, v3

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v8, v7

    move-object v7, v3

    :goto_8f
    const-string v3, "is"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, v19

    move v1, v8

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "not"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17a

    const/4 v5, 0x0

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, v19

    move v1, v7

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    move/from16 v20, v8

    :goto_b8
    if-eqz v14, :cond_13b

    const-string v3, ".."

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_133

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :goto_d5
    move-object/from16 v0, v19

    array-length v0, v0

    move v3, v0

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_141

    aget-object p0, v19, v20

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0

    :cond_e8
    const/4 v3, 0x1

    const-string v9, "not"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fd

    const/4 v5, 0x0

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, v19

    move v1, v8

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, v9

    :cond_fd
    const-string v9, "in"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_115

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, v19

    move v1, v8

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v7

    move/from16 v20, v9

    move v14, v3

    goto :goto_b8

    :cond_115
    const-string v6, "within"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12e

    const/4 v6, 0x0

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, v19

    move v1, v8

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v7

    move/from16 v20, v9

    move v14, v3

    goto :goto_b8

    :cond_12e
    invoke-static {v7, v12}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0

    :cond_133
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0

    :cond_13b
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-wide v7, v9

    goto :goto_d5

    :cond_141
    new-instance v3, Lcom/ibm/icu/text/PluralRules$RangeConstraint;

    invoke-direct/range {v3 .. v10}, Lcom/ibm/icu/text/PluralRules$RangeConstraint;-><init>(IZZJJ)V

    move v12, v14

    move-object/from16 v14, v18

    move/from16 v18, v20

    :goto_14b
    if-nez p0, :cond_154

    move-object/from16 p0, v3

    :goto_14f
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_33

    :cond_154
    new-instance v4, Lcom/ibm/icu/text/PluralRules$AndConstraint;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$AndConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    move-object/from16 p0, v4

    goto :goto_14f

    :cond_160
    if-nez v17, :cond_16e

    move-object/from16 p0, p0

    move-object/from16 v3, p0

    :goto_166
    add-int/lit8 p0, v13, 0x1

    move/from16 v13, p0

    move-object/from16 v17, v3

    goto/16 :goto_1d

    :cond_16e
    new-instance v3, Lcom/ibm/icu/text/PluralRules$OrConstraint;

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$OrConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    goto :goto_166

    :cond_179
    return-object v17

    :cond_17a
    move-object/from16 v18, v3

    move/from16 v20, v7

    goto/16 :goto_b8

    :cond_180
    move v8, v7

    move-object v7, v3

    goto/16 :goto_8f

    :cond_184
    move v12, v14

    move-object/from16 v14, v18

    move/from16 v18, v20

    goto :goto_14b
.end method

.method public static parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleChain;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V

    goto :goto_c
.end method

.method private static parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing \':\' in rule description \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_29
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_56

    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyword \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_56
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_87

    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing constraint in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_87
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;

    move-result-object v0

    new-instance v2, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;

    invoke-direct {v2, v1, v0}, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    return-object v2
.end method

.method private static parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleChain;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v4, 0x3b

    invoke-static {p0, v4}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_24

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v1

    if-nez v2, :cond_1f

    new-instance v2, Lcom/ibm/icu/text/PluralRules$RuleChain;

    invoke-direct {v2, v1}, Lcom/ibm/icu/text/PluralRules$RuleChain;-><init>(Lcom/ibm/icu/text/PluralRules$Rule;)V

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/PluralRules$RuleChain;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleChain;

    move-result-object v2

    goto :goto_1c

    :cond_24
    return-object v2
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .registers 5

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/ibm/icu/text/PluralRules;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    if-ne p1, p0, :cond_a

    move v2, v6

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v5

    goto :goto_5

    :cond_18
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules;->getRepeatLimit()I

    move-result v2

    invoke-direct {p1}, Lcom/ibm/icu/text/PluralRules;->getRepeatLimit()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v1, :cond_3c

    int-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    int-to-double v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v2, v5

    goto :goto_5

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3c
    move v2, v6

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/ibm/icu/text/PluralRules;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getKeywords()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public select(D)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keywords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules;->getRepeatLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
