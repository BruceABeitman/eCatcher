.class public Lcom/ibm/icu/impl/LocaleUtility;
.super Ljava/lang/Object;
.source "LocaleUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fallback(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v0, 0x2

    :goto_19
    if-ltz v0, :cond_27

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, ""

    aput-object v2, v1, v0

    :cond_27
    if-gez v0, :cond_2e

    const/4 v2, 0x0

    :goto_2a
    return-object v2

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_2e
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public static getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;
    .registers 8

    const/16 v6, 0x5f

    const-string v3, ""

    const-string v0, ""

    const-string v4, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_15

    move-object v3, p0

    :goto_f
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v3, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_15
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_27
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_f
.end method

.method public static isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    :goto_8
    return v1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_8

    :cond_1d
    move v1, v3

    goto :goto_8
.end method

.method public static isFallbackOf(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
