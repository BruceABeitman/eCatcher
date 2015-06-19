.class public Lcom/ibm/icu/impl/duration/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chineseNumber(JLcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    neg-long p0, p0

    :cond_7
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gtz v0, :cond_24

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1a

    iget-char p0, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0

    :cond_1a
    iget-object p2, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    long-to-int p0, p0

    aget-char p0, p2, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_24
    const/16 v0, 0x28

    new-array v0, v0, [C

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x1

    const/4 v1, 0x0

    array-length v7, v0

    array-length v3, v2

    const/4 v6, -0x1

    const/4 v5, -0x1

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    :goto_3a
    add-int/lit8 v4, v3, -0x1

    if-ltz v4, :cond_a9

    const/4 v3, -0x1

    if-ne v7, v3, :cond_78

    const/4 v3, -0x1

    if-eq v6, v3, :cond_1b7

    add-int/lit8 v5, v8, -0x1

    iget-object v1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    aget-char v1, v1, v6

    aput-char v1, v0, v5

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v8, v5

    :goto_4f
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v3

    move v3, v1

    :goto_54
    aget-char v1, v2, v4

    const/16 v9, 0x30

    sub-int/2addr v1, v9

    if-nez v1, :cond_9c

    array-length v1, v0

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    if-ge v8, v1, :cond_66

    if-eqz v7, :cond_66

    const/16 v1, 0x2a

    aput-char v1, v0, v8

    :cond_66
    if-nez v5, :cond_6a

    if-eqz v3, :cond_8b

    :cond_6a
    add-int/lit8 v1, v8, -0x1

    const/16 v8, 0x2a

    aput-char v8, v0, v1

    move v10, v1

    move v1, v3

    move v3, v5

    move v5, v10

    :goto_74
    move v8, v5

    move v5, v3

    move v3, v4

    goto :goto_3a

    :cond_78
    add-int/lit8 v8, v8, -0x1

    iget-object v9, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    add-int/lit8 v3, v7, 0x1

    aget-char v7, v9, v7

    aput-char v7, v0, v8

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1b3

    const/4 v7, -0x1

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v1

    goto :goto_54

    :cond_8b
    add-int/lit8 v5, v8, -0x1

    iget-object v1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v3, 0x0

    aget-char v1, v1, v3

    aput-char v1, v0, v5

    const/4 v3, 0x1

    const/4 v1, 0x1

    if-ne v7, v1, :cond_9a

    const/4 v1, 0x1

    :goto_99
    goto :goto_74

    :cond_9a
    const/4 v1, 0x0

    goto :goto_99

    :cond_9c
    const/4 v5, 0x0

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v1, v9, v1

    aput-char v1, v0, v8

    move v1, v3

    move v3, v5

    move v5, v8

    goto :goto_74

    :cond_a9
    const-wide/32 v1, 0xf4240

    cmp-long v1, p0, v1

    if-lez v1, :cond_117

    const/4 v2, 0x1

    array-length v1, v0

    const/4 v3, 0x3

    sub-int/2addr v1, v3

    :cond_b4
    aget-char v3, v0, v1

    const/16 v4, 0x30

    if-ne v3, v4, :cond_127

    :goto_ba
    array-length v1, v0

    const/4 v3, 0x7

    sub-int/2addr v1, v3

    :cond_bd
    aget-char v3, v0, v1

    iget-object v4, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_cc

    if-nez v2, :cond_cc

    const/16 v3, 0x2a

    aput-char v3, v0, v1

    :cond_cc
    add-int/lit8 v1, v1, -0x8

    if-nez v2, :cond_131

    const/4 v2, 0x1

    :goto_d1
    if-gt v1, v8, :cond_bd

    const-wide/32 v1, 0x5f5e100

    cmp-long p0, p0, v1

    if-ltz p0, :cond_117

    array-length p0, v0

    const/16 p1, 0x8

    sub-int/2addr p0, p1

    move v1, p0

    :goto_df
    const/4 p1, 0x1

    const/4 p0, 0x1

    sub-int v2, v1, p0

    const/4 p0, 0x1

    sub-int p0, v8, p0

    const/16 v3, 0x8

    sub-int v3, v1, v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_ee
    if-le v2, p0, :cond_1b0

    aget-char v3, v0, v2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_133

    const/4 p0, 0x0

    :goto_f7
    if-eqz p0, :cond_113

    add-int/lit8 p0, v1, 0x1

    aget-char p0, v0, p0

    const/16 p1, 0x2a

    if-eq p0, p1, :cond_136

    add-int/lit8 p0, v1, 0x1

    aget-char p0, v0, p0

    iget-object p1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v2, 0x0

    aget-char p1, p1, v2

    if-eq p0, p1, :cond_136

    iget-object p0, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 p1, 0x0

    aget-char p0, p0, p1

    aput-char p0, v0, v1

    :cond_113
    :goto_113
    add-int/lit8 p0, v1, -0x8

    if-gt p0, v8, :cond_1ad

    :cond_117
    move p0, v8

    :goto_118
    array-length p1, v0

    if-ge p0, p1, :cond_173

    aget-char p1, v0, p0

    iget-object v1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v2, 0x2

    aget-char v1, v1, v2

    if-eq p1, v1, :cond_13b

    :cond_124
    :goto_124
    add-int/lit8 p0, p0, 0x1

    goto :goto_118

    :cond_127
    add-int/lit8 v1, v1, -0x8

    if-nez v2, :cond_12f

    const/4 v2, 0x1

    :goto_12c
    if-gt v1, v8, :cond_b4

    goto :goto_ba

    :cond_12f
    const/4 v2, 0x0

    goto :goto_12c

    :cond_131
    const/4 v2, 0x0

    goto :goto_d1

    :cond_133
    add-int/lit8 v2, v2, -0x1

    goto :goto_ee

    :cond_136
    const/16 p0, 0x2a

    aput-char p0, v0, v1

    goto :goto_113

    :cond_13b
    array-length p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    if-ge p0, p1, :cond_14b

    add-int/lit8 p1, p0, 0x1

    aget-char p1, v0, p1

    iget-object v1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    if-eq p1, v1, :cond_124

    :cond_14b
    if-le p0, v8, :cond_16e

    const/4 p1, 0x1

    sub-int p1, p0, p1

    aget-char p1, v0, p1

    iget-object v1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    if-eq p1, v1, :cond_124

    const/4 p1, 0x1

    sub-int p1, p0, p1

    aget-char p1, v0, p1

    iget-object v1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    if-eq p1, v1, :cond_124

    const/4 p1, 0x1

    sub-int p1, p0, p1

    aget-char p1, v0, p1

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_124

    :cond_16e
    iget-char p1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    aput-char p1, v0, p0

    goto :goto_124

    :cond_173
    aget-char p0, v0, v8

    iget-object p1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v1, 0x1

    aget-char p1, p1, v1

    if-ne p0, p1, :cond_1ab

    iget-boolean p0, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    if-nez p0, :cond_18b

    add-int/lit8 p0, v8, 0x1

    aget-char p0, v0, p0

    iget-object p1, p2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 p2, 0x0

    aget-char p1, p1, p2

    if-ne p0, p1, :cond_1ab

    :cond_18b
    add-int/lit8 p0, v8, 0x1

    move v1, p0

    :goto_18e
    move p1, v1

    move p0, v1

    :goto_190
    array-length p2, v0

    if-ge p0, p2, :cond_1a3

    aget-char p2, v0, p0

    const/16 v2, 0x2a

    if-eq p2, v2, :cond_1a0

    add-int/lit8 p2, p1, 0x1

    aget-char v2, v0, p0

    aput-char v2, v0, p1

    move p1, p2

    :cond_1a0
    add-int/lit8 p0, p0, 0x1

    goto :goto_190

    :cond_1a3
    new-instance p0, Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_19

    :cond_1ab
    move v1, v8

    goto :goto_18e

    :cond_1ad
    move v1, p0

    goto/16 :goto_df

    :cond_1b0
    move p0, p1

    goto/16 :goto_f7

    :cond_1b3
    move v7, v3

    move v3, v1

    goto/16 :goto_54

    :cond_1b7
    move v3, v5

    goto/16 :goto_4f
.end method

.method public static final localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 8

    const/4 v6, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    const-string v1, ""

    const-string v2, ""

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_19

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_19
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2b

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2b
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_24

    aget-object v0, p0, v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->DEBUG:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;

    invoke-static {v2, v3, v5}, Lcom/ibm/icu/impl/duration/impl/Utils;->chineseNumber(JLcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method
