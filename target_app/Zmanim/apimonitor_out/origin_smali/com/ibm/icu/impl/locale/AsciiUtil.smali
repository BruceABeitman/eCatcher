.class public final Lcom/ibm/icu/impl/locale/AsciiUtil;
.super Ljava/lang/Object;
.source "AsciiUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public static caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_6

    move v4, v7

    :goto_5
    return v4

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_12

    move v4, v6

    goto :goto_5

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_29

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_2d

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v4

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v5

    if-eq v4, v5, :cond_2d

    :cond_29
    if-ne v2, v3, :cond_30

    move v4, v7

    goto :goto_5

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_30
    move v4, v6

    goto :goto_5
.end method

.method public static isAlpha(C)Z
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isAlphaNumeric(C)Z
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isAlphaNumericString(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    :cond_13
    return v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static isAlphaString(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    :cond_13
    return v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static isNumeric(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNumericString(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    :cond_13
    return v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static toLower(C)C
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_b
    return p0
.end method

.method public static toLowerString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x41

    if-lt v1, v3, :cond_1b

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_1b

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1e

    move-object v3, p0

    :goto_1a
    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1e
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a
.end method

.method public static toUpper(C)C
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_d

    const/16 v0, 0x20

    sub-int v0, p0, v0

    int-to-char p0, v0

    :cond_d
    return p0
.end method

.method public static toUpperString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-lt v1, v3, :cond_1b

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_1b

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1e

    move-object v3, p0

    :goto_1a
    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1e
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a
.end method
