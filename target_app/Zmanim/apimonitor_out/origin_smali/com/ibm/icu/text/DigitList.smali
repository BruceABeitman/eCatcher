.class final Lcom/ibm/icu/text/DigitList;
.super Ljava/lang/Object;
.source "DigitList.java"


# static fields
.field public static final DBL_DIG:I = 0x11

.field private static LONG_MIN_REP:[B = null

.field public static final MAX_LONG_DIGITS:I = 0x13


# instance fields
.field public count:I

.field public decimalAt:I

.field public digits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x13

    const-wide/high16 v2, -0x8000

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [B

    sput-object v2, Lcom/ibm/icu/text/DigitList;->LONG_MIN_REP:[B

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_1d

    sget-object v2, Lcom/ibm/icu/text/DigitList;->LONG_MIN_REP:[B

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iput v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    const/16 v0, 0x13

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    return-void
.end method

.method private final ensureCapacity(II)V
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    array-length v1, v1

    if-le p1, v1, :cond_11

    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    invoke-static {v1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    :cond_11
    return-void
.end method

.method private getStringRep(Z)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x30

    const/16 v5, 0x2e

    invoke-virtual {p0}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "0"

    :goto_c
    return-object v4

    :cond_d
    new-instance v3, Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    if-nez p1, :cond_1d

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1d
    iget v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    if-gez v0, :cond_2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_24
    if-gez v0, :cond_2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_2c
    const/4 v0, -0x1

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v2, v4, :cond_42

    if-ne v0, v2, :cond_37

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_37
    iget-object v4, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_42
    :goto_42
    add-int/lit8 v1, v0, -0x1

    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-le v0, v4, :cond_4d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_42

    :cond_4d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c
.end method

.method private isLongMIN_VALUE()Z
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ne v1, v2, :cond_d

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_f

    :cond_d
    move v1, v3

    :goto_e
    return v1

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, v0

    sget-object v2, Lcom/ibm/icu/text/DigitList;->LONG_MIN_REP:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_20

    move v1, v3

    goto :goto_e

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private set(Ljava/lang/String;I)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, -0x1

    iput v8, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iput v9, p0, Lcom/ibm/icu/text/DigitList;->count:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_14

    add-int/lit8 v2, v2, 0x1

    :cond_14
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_49

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_29

    iget v5, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iput v5, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    const/16 v5, 0x65

    if-eq v0, v5, :cond_31

    const/16 v5, 0x45

    if-ne v0, v5, :cond_59

    :cond_31
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_3d

    add-int/lit8 v2, v2, 0x1

    :cond_3d
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_49
    iget v5, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    if-ne v5, v8, :cond_51

    iget v5, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iput v5, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    :cond_51
    iget v5, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    sub-int v6, v1, v3

    add-int/2addr v5, v6

    iput v5, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    return-void

    :cond_59
    iget v5, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v5, p2, :cond_26

    if-nez v4, :cond_6d

    const/16 v5, 0x30

    if-eq v0, v5, :cond_84

    const/4 v5, 0x1

    move v4, v5

    :goto_65
    if-nez v4, :cond_6d

    iget v5, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    if-eq v5, v8, :cond_6d

    add-int/lit8 v3, v3, 0x1

    :cond_6d
    if-eqz v4, :cond_26

    iget v5, p0, Lcom/ibm/icu/text/DigitList;->count:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-direct {p0, v5, v6}, Lcom/ibm/icu/text/DigitList;->ensureCapacity(II)V

    iget-object v5, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    iget v6, p0, Lcom/ibm/icu/text/DigitList;->count:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ibm/icu/text/DigitList;->count:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    goto :goto_26

    :cond_84
    move v4, v9

    goto :goto_65
.end method

.method private setBigDecimalDigits(Ljava/lang/String;IZ)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DigitList;->set(Ljava/lang/String;I)V

    if-eqz p3, :cond_10

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    add-int/2addr v0, p2

    :goto_c
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DigitList;->round(I)V

    return-void

    :cond_10
    if-nez p2, :cond_14

    const/4 v0, -0x1

    goto :goto_c

    :cond_14
    move v0, p2

    goto :goto_c
.end method

.method private shouldRoundUp(I)Z
    .registers 7

    const/16 v2, 0x35

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge p1, v1, :cond_39

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, p1

    if-le v1, v2, :cond_10

    move v1, v3

    :goto_f
    return v1

    :cond_10
    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, p1

    if-ne v1, v2, :cond_39

    add-int/lit8 v0, p1, 0x1

    :goto_18
    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_26

    move v1, v3

    goto :goto_f

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    if-lez p1, :cond_37

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    sub-int v2, p1, v3

    aget-byte v1, v1, v2

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_37

    move v1, v3

    goto :goto_f

    :cond_37
    move v1, v4

    goto :goto_f

    :cond_39
    move v1, v4

    goto :goto_f
.end method


# virtual methods
.method public append(I)V
    .registers 5

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DigitList;->ensureCapacity(II)V

    iget-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_6

    move v3, v6

    :goto_5
    return v3

    :cond_6
    instance-of v3, p1, Lcom/ibm/icu/text/DigitList;

    if-nez v3, :cond_c

    move v3, v5

    goto :goto_5

    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/DigitList;

    move-object v2, v0

    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iget v4, v2, Lcom/ibm/icu/text/DigitList;->count:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iget v4, v2, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    if-eq v3, v4, :cond_1e

    :cond_1c
    move v3, v5

    goto :goto_5

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v1, v3, :cond_32

    iget-object v3, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, v1

    iget-object v4, v2, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_2f

    move v3, v5

    goto :goto_5

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_32
    move v3, v6

    goto :goto_5
.end method

.method public getBigDecimal(Z)Ljava/math/BigDecimal;
    .registers 14

    invoke-virtual {p0}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v8

    if-eqz v8, :cond_d

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    :goto_c
    return-object v8

    :cond_d
    iget v8, p0, Lcom/ibm/icu/text/DigitList;->count:I

    int-to-long v8, v8

    iget v10, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    int-to-long v10, v10

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_66

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_33

    const-wide/32 v8, 0x7fffffff

    sub-long v2, v4, v8

    iget v8, p0, Lcom/ibm/icu/text/DigitList;->count:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_4f

    int-to-long v8, v1

    sub-long/2addr v8, v2

    long-to-int v1, v8

    :cond_33
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    if-nez p1, :cond_41

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v1, :cond_56

    iget-object v8, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4f
    new-instance v8, Ljava/math/BigDecimal;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_c

    :cond_56
    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/math/BigDecimal;

    long-to-int v9, v4

    invoke-direct {v8, v7, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_c

    :cond_66
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DigitList;->getStringRep(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public getBigDecimalICU(Z)Lcom/ibm/icu/math/BigDecimal;
    .registers 14

    invoke-virtual {p0}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v8

    if-eqz v8, :cond_d

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcom/ibm/icu/math/BigDecimal;->valueOf(J)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v8

    :goto_c
    return-object v8

    :cond_d
    iget v8, p0, Lcom/ibm/icu/text/DigitList;->count:I

    int-to-long v8, v8

    iget v10, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    int-to-long v10, v10

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_66

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_33

    const-wide/32 v8, 0x7fffffff

    sub-long v2, v4, v8

    iget v8, p0, Lcom/ibm/icu/text/DigitList;->count:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_4f

    int-to-long v8, v1

    sub-long/2addr v8, v2

    long-to-int v1, v8

    :cond_33
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    if-nez p1, :cond_41

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v1, :cond_56

    iget-object v8, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4f
    new-instance v8, Lcom/ibm/icu/math/BigDecimal;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/ibm/icu/math/BigDecimal;-><init>(I)V

    goto :goto_c

    :cond_56
    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/ibm/icu/math/BigDecimal;

    long-to-int v9, v4

    invoke-direct {v8, v7, v9}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_c

    :cond_66
    new-instance v8, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DigitList;->getStringRep(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public getBigInteger(Z)Ljava/math/BigInteger;
    .registers 8

    invoke-virtual {p0}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v4

    if-eqz v4, :cond_d

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_c
    return-object v4

    :cond_d
    iget v4, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iget v5, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-le v4, v5, :cond_35

    iget v4, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move v1, v4

    :goto_16
    if-nez p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    new-array v3, v1, [C

    const/4 v2, 0x0

    if-nez p1, :cond_48

    const/4 v4, 0x0

    const/16 v5, 0x2d

    aput-char v5, v3, v4

    const/4 v0, 0x0

    :goto_25
    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v4, :cond_39

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    move v1, v4

    goto :goto_16

    :cond_39
    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    add-int/lit8 v2, v4, 0x1

    :goto_3d
    move v0, v2

    :goto_3e
    array-length v4, v3

    if-ge v0, v4, :cond_5a

    const/16 v4, 0x30

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_48
    const/4 v0, 0x0

    :goto_49
    iget v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v4, :cond_57

    iget-object v4, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_57
    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    goto :goto_3d

    :cond_5a
    new-instance v4, Ljava/math/BigInteger;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public final getDouble()D
    .registers 5

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    :goto_6
    return-wide v2

    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_14
    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_23
    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_6
.end method

.method public final getLong()J
    .registers 5

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    :goto_6
    return-wide v2

    :cond_7
    invoke-direct {p0}, Lcom/ibm/icu/text/DigitList;->isLongMIN_VALUE()Z

    move-result v2

    if-eqz v2, :cond_10

    const-wide/high16 v2, -0x8000

    goto :goto_6

    :cond_10
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    if-ge v0, v2, :cond_2e

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2b
    const/16 v2, 0x30

    goto :goto_25

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_6
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v1, v2, :cond_12

    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method isIntegral()Z
    .registers 4

    const/4 v2, 0x1

    :goto_1
    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    goto :goto_1

    :cond_16
    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-lt v0, v1, :cond_22

    :cond_20
    move v0, v2

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method isZero()Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_f

    const/4 v1, 0x0

    :goto_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public final round(I)V
    .registers 6

    const/4 v3, 0x1

    if-ltz p1, :cond_4a

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge p1, v0, :cond_4a

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DigitList;->shouldRoundUp(I)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_d
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_38

    iget-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    const/4 v1, 0x0

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    const/4 p1, 0x0

    :goto_1f
    add-int/lit8 p1, p1, 0x1

    :cond_21
    iput p1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    :goto_23
    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-le v0, v3, :cond_4a

    iget-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4a

    iget v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/DigitList;->count:I

    goto :goto_23

    :cond_38
    iget-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    iget-object v0, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v0, v0, p1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_d

    goto :goto_1f

    :cond_4a
    return-void
.end method

.method final set(DIZ)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_a

    const-wide/16 p1, 0x0

    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DigitList;->set(Ljava/lang/String;I)V

    if-eqz p4, :cond_3a

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    neg-int v1, v1

    if-le v1, p3, :cond_1d

    iput v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    :goto_1c
    return-void

    :cond_1d
    iget v1, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    neg-int v1, v1

    if-ne v1, p3, :cond_3a

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/DigitList;->shouldRoundUp(I)Z

    move-result v1

    if-eqz v1, :cond_37

    iput v4, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    const/16 v2, 0x31

    aput-byte v2, v1, v3

    goto :goto_1c

    :cond_37
    iput v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    goto :goto_1c

    :cond_3a
    :goto_3a
    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-le v1, v4, :cond_4f

    iget-object v1, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    const/16 v2, 0x30

    if-ne v1, v2, :cond_4f

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/ibm/icu/text/DigitList;->count:I

    goto :goto_3a

    :cond_4f
    if-eqz p4, :cond_58

    iget v1, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    add-int/2addr v1, p3

    :goto_54
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DigitList;->round(I)V

    goto :goto_1c

    :cond_58
    if-nez p3, :cond_5c

    const/4 v1, -0x1

    goto :goto_54

    :cond_5c
    move v1, p3

    goto :goto_54
.end method

.method public final set(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/DigitList;->set(JI)V

    return-void
.end method

.method public final set(JI)V
    .registers 11

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2a

    const-wide/high16 v2, -0x8000

    cmp-long v2, p1, v2

    if-nez v2, :cond_23

    const/16 v2, 0x13

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    sget-object v2, Lcom/ibm/icu/text/DigitList;->LONG_MIN_REP:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    const/4 v5, 0x0

    iget v6, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1d
    if-lez p3, :cond_22

    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/DigitList;->round(I)V

    :cond_22
    return-void

    :cond_23
    const/4 v2, 0x0

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    goto :goto_1d

    :cond_2a
    const/16 v0, 0x13

    :goto_2c
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_45

    iget-object v2, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v3, 0x30

    const-wide/16 v5, 0xa

    rem-long v5, p1, v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const-wide/16 v2, 0xa

    div-long/2addr p1, v2

    goto :goto_2c

    :cond_45
    const/16 v2, 0x13

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    const/16 v1, 0x12

    :goto_4c
    iget-object v2, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_57

    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    :cond_57
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iget-object v2, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    iget-object v3, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d
.end method

.method public final set(Lcom/ibm/icu/math/BigDecimal;IZ)V
    .registers 5

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final set(Ljava/math/BigDecimal;IZ)V
    .registers 5

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final set(Ljava/math/BigInteger;I)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    iput v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    :goto_e
    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-le v3, v5, :cond_23

    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_23

    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    goto :goto_e

    :cond_23
    const/4 v1, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_38

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    iget v3, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    :cond_38
    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    invoke-direct {p0, v3, v6}, Lcom/ibm/icu/text/DigitList;->ensureCapacity(II)V

    const/4 v0, 0x0

    :goto_3e
    iget v3, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v0, v3, :cond_50

    iget-object v3, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    add-int v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_50
    if-lez p2, :cond_55

    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/DigitList;->round(I)V

    :cond_55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "0"

    :goto_8
    return-object v2

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "0."

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_11
    iget v2, p0, Lcom/ibm/icu/text/DigitList;->count:I

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Lcom/ibm/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    const-string v2, "x10^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method
