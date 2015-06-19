.class public final Lcom/ibm/icu/text/UTF16;
.super Ljava/lang/Object;
.source "UTF16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/UTF16$StringComparator;
    }
.end annotation


# static fields
.field public static final CODEPOINT_MAX_VALUE:I = 0x10ffff

.field public static final CODEPOINT_MIN_VALUE:I = 0x0

.field private static final LEAD_SURROGATE_BITMASK:I = -0x400

.field private static final LEAD_SURROGATE_BITS:I = 0xd800

.field public static final LEAD_SURROGATE_BOUNDARY:I = 0x2

.field public static final LEAD_SURROGATE_MAX_VALUE:I = 0xdbff

.field public static final LEAD_SURROGATE_MIN_VALUE:I = 0xd800

.field private static final LEAD_SURROGATE_OFFSET_:I = 0xd7c0

.field private static final LEAD_SURROGATE_SHIFT_:I = 0xa

.field public static final SINGLE_CHAR_BOUNDARY:I = 0x1

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field private static final SURROGATE_BITMASK:I = -0x800

.field private static final SURROGATE_BITS:I = 0xd800

.field public static final SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final SURROGATE_MIN_VALUE:I = 0xd800

.field private static final TRAIL_SURROGATE_BITMASK:I = -0x400

.field private static final TRAIL_SURROGATE_BITS:I = 0xdc00

.field public static final TRAIL_SURROGATE_BOUNDARY:I = 0x5

.field private static final TRAIL_SURROGATE_MASK_:I = 0x3ff

.field public static final TRAIL_SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final TRAIL_SURROGATE_MIN_VALUE:I = 0xdc00


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _charAt(Ljava/lang/CharSequence;IC)I
    .registers 8

    const v4, 0xdfff

    const v3, 0xdbff

    if-le p2, v4, :cond_a

    move v2, p2

    :goto_9
    return v2

    :cond_a
    if-gt p2, v3, :cond_24

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p1, :cond_38

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_38

    if-gt v1, v4, :cond_38

    invoke-static {p2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v2

    goto :goto_9

    :cond_24
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_38

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-lt v0, v2, :cond_38

    if-gt v0, v3, :cond_38

    invoke-static {v0, p2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v2

    goto :goto_9

    :cond_38
    move v2, p2

    goto :goto_9
.end method

.method private static _charAt(Ljava/lang/String;IC)I
    .registers 8

    const v4, 0xdfff

    const v3, 0xdbff

    if-le p2, v4, :cond_a

    move v2, p2

    :goto_9
    return v2

    :cond_a
    if-gt p2, v3, :cond_24

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p1, :cond_38

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_38

    if-gt v1, v4, :cond_38

    invoke-static {p2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v2

    goto :goto_9

    :cond_24
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_38

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-lt v0, v2, :cond_38

    if-gt v0, v3, :cond_38

    invoke-static {v0, p2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v2

    goto :goto_9

    :cond_38
    move v2, p2

    goto :goto_9
.end method

.method public static append([CII)I
    .registers 6

    if-ltz p2, :cond_7

    const v1, 0x10ffff

    if-le p2, v1, :cond_f

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal codepoint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/high16 v1, 0x1

    if-lt p2, v1, :cond_24

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    aput-char v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    aput-char v1, p0, v0

    :goto_23
    return p1

    :cond_24
    add-int/lit8 v0, p1, 0x1

    int-to-char v1, p2

    aput-char v1, p0, p1

    move p1, v0

    goto :goto_23
.end method

.method public static append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 5

    if-ltz p1, :cond_7

    const v0, 0x10ffff

    if-le p1, v0, :cond_24

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal codepoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/high16 v0, 0x1

    if-lt p1, v0, :cond_37

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_36
    return-object p0

    :cond_37
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36
.end method

.method public static appendCodePoint(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 3

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static bounds(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_24

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x2

    :goto_23
    return v1

    :cond_24
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x5

    goto :goto_23

    :cond_34
    const/4 v1, 0x1

    goto :goto_23
.end method

.method public static bounds(Ljava/lang/StringBuffer;I)I
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_24

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x2

    :goto_23
    return v1

    :cond_24
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x5

    goto :goto_23

    :cond_34
    const/4 v1, 0x1

    goto :goto_23
.end method

.method public static bounds([CIII)I
    .registers 6

    add-int/2addr p3, p1

    if-lt p3, p1, :cond_5

    if-lt p3, p2, :cond_b

    :cond_5
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_b
    aget-char v0, p0, p3

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_27

    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_35

    aget-char v1, p0, p3

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    :goto_26
    return v1

    :cond_27
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p1, :cond_35

    aget-char v1, p0, p3

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x5

    goto :goto_26

    :cond_35
    const/4 v1, 0x1

    goto :goto_26
.end method

.method public static charAt(Lcom/ibm/icu/text/Replaceable;I)I
    .registers 6

    if-ltz p1, :cond_8

    invoke-interface {p0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v3

    if-lt p1, v3, :cond_e

    :cond_8
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_e
    invoke-interface {p0, p1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_19
    return v3

    :cond_1a
    const v3, 0xdbff

    if-gt v1, v3, :cond_36

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v3

    if-eq v3, p1, :cond_49

    invoke-interface {p0, p1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    goto :goto_19

    :cond_36
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_49

    invoke-interface {p0, p1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    goto :goto_19

    :cond_49
    move v3, v1

    goto :goto_19
.end method

.method public static charAt(Ljava/lang/CharSequence;I)I
    .registers 4

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_b

    move v1, v0

    :goto_a
    return v1

    :cond_b
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/UTF16;->_charAt(Ljava/lang/CharSequence;IC)I

    move-result v1

    goto :goto_a
.end method

.method public static charAt(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_b

    move v1, v0

    :goto_a
    return v1

    :cond_b
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/UTF16;->_charAt(Ljava/lang/String;IC)I

    move-result v1

    goto :goto_a
.end method

.method public static charAt(Ljava/lang/StringBuffer;I)I
    .registers 6

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt p1, v3, :cond_e

    :cond_8
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_19
    return v3

    :cond_1a
    const v3, 0xdbff

    if-gt v1, v3, :cond_36

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eq v3, p1, :cond_49

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    goto :goto_19

    :cond_36
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_49

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    goto :goto_19

    :cond_49
    move v3, v1

    goto :goto_19
.end method

.method public static charAt([CIII)I
    .registers 8

    add-int/2addr p3, p1

    if-lt p3, p1, :cond_5

    if-lt p3, p2, :cond_b

    :cond_5
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_b
    aget-char v1, p0, p3

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_14
    return v3

    :cond_15
    const v3, 0xdbff

    if-gt v1, v3, :cond_2d

    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_20

    move v3, v1

    goto :goto_14

    :cond_20
    aget-char v2, p0, p3

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    goto :goto_14

    :cond_2d
    if-ne p3, p1, :cond_31

    move v3, v1

    goto :goto_14

    :cond_31
    add-int/lit8 p3, p3, -0x1

    aget-char v0, p0, p3

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    move-result v3

    goto :goto_14

    :cond_40
    move v3, v1

    goto :goto_14
.end method

.method public static countCodePoint(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/UTF16;->findCodePointOffset(Ljava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public static countCodePoint(Ljava/lang/StringBuffer;)I
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/UTF16;->findCodePointOffset(Ljava/lang/StringBuffer;I)I

    move-result v0

    goto :goto_9
.end method

.method public static countCodePoint([CII)I
    .registers 4

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    sub-int v0, p2, p1

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/text/UTF16;->findCodePointOffset([CIII)I

    move-result v0

    goto :goto_6
.end method

.method public static delete([CII)I
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v3, p1, p2}, Lcom/ibm/icu/text/UTF16;->bounds([CIII)I

    move-result v1

    packed-switch v1, :pswitch_data_22

    :goto_9
    :pswitch_9
    add-int v1, p2, v0

    add-int v2, p2, v0

    sub-int v2, p1, v2

    invoke-static {p0, v1, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, p1, v0

    aput-char v3, p0, v1

    sub-int v1, p1, v0

    return v1

    :pswitch_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :pswitch_1c
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_19
        :pswitch_9
        :pswitch_9
        :pswitch_1c
    .end packed-switch
.end method

.method public static delete(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v1

    packed-switch v1, :pswitch_data_16

    :goto_8
    :pswitch_8
    add-int v1, p1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-object p0

    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :pswitch_11
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method

.method public static findCodePointOffset(Ljava/lang/String;I)I
    .registers 8

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le p1, v5, :cond_e

    :cond_8
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v5

    :cond_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, p1, :cond_2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v1, :cond_23

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v1, 0x0

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p1, v5, :cond_32

    move v4, v3

    :goto_31
    return v4

    :cond_32
    if-eqz v1, :cond_40

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_40

    add-int/lit8 v3, v3, -0x1

    :cond_40
    move v4, v3

    goto :goto_31
.end method

.method public static findCodePointOffset(Ljava/lang/StringBuffer;I)I
    .registers 8

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le p1, v5, :cond_e

    :cond_8
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v5

    :cond_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, p1, :cond_2a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eqz v1, :cond_23

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v1, 0x0

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ne p1, v5, :cond_32

    move v4, v3

    :goto_31
    return v4

    :cond_32
    if-eqz v1, :cond_40

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_40

    add-int/lit8 v3, v3, -0x1

    :cond_40
    move v4, v3

    goto :goto_31
.end method

.method public static findCodePointOffset([CIII)I
    .registers 10

    add-int/2addr p3, p1

    if-le p3, p2, :cond_9

    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v5

    :cond_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    move v2, p1

    :goto_c
    if-ge v2, p3, :cond_23

    aget-char v0, p0, v2

    if-eqz v1, :cond_1c

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v1, 0x0

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_23
    if-ne p3, p2, :cond_27

    move v4, v3

    :goto_26
    return v4

    :cond_27
    if-eqz v1, :cond_33

    aget-char v5, p0, p3

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_33

    add-int/lit8 v3, v3, -0x1

    :cond_33
    move v4, v3

    goto :goto_26
.end method

.method public static findOffsetFromCodePoint(Ljava/lang/String;I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move v1, p1

    if-ltz p1, :cond_a

    if-le p1, v3, :cond_10

    :cond_a
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_10
    :goto_10
    if-ge v2, v3, :cond_35

    if-lez v1, :cond_35

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_30

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v2, v2, 0x1

    :cond_30
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_35
    if-eqz v1, :cond_3d

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_3d
    return v2
.end method

.method public static findOffsetFromCodePoint(Ljava/lang/StringBuffer;I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v2, 0x0

    move v1, p1

    if-ltz p1, :cond_a

    if-le p1, v3, :cond_10

    :cond_a
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_10
    :goto_10
    if-ge v2, v3, :cond_35

    if-lez v1, :cond_35

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_30

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v2, v2, 0x1

    :cond_30
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_35
    if-eqz v1, :cond_3d

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_3d
    return v2
.end method

.method public static findOffsetFromCodePoint([CIII)I
    .registers 8

    move v2, p1

    move v1, p3

    sub-int v3, p2, p1

    if-le p3, v3, :cond_c

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_c
    :goto_c
    if-ge v2, p2, :cond_2d

    if-lez v1, :cond_2d

    aget-char v0, p0, v2

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v3, v2, 0x1

    if-ge v3, p2, :cond_28

    add-int/lit8 v3, v2, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2d
    if-eqz v1, :cond_35

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_35
    sub-int v3, v2, p1

    return v3
.end method

.method public static getCharCount(I)I
    .registers 2

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public static getLeadSurrogate(I)C
    .registers 3

    const/high16 v0, 0x1

    if-lt p0, v0, :cond_c

    const v0, 0xd7c0

    shr-int/lit8 v1, p0, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getTrailSurrogate(I)C
    .registers 3

    const/high16 v0, 0x1

    if-lt p0, v0, :cond_c

    const v0, 0xdc00

    and-int/lit16 v1, p0, 0x3ff

    add-int/2addr v0, v1

    int-to-char v0, v0

    :goto_b
    return v0

    :cond_c
    int-to-char v0, p0

    goto :goto_b
.end method

.method public static hasMoreCodePointsThan(Ljava/lang/String;I)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_6

    move v4, v6

    :goto_5
    return v4

    :cond_6
    if-nez p0, :cond_a

    move v4, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-le v4, p1, :cond_16

    move v4, v6

    goto :goto_5

    :cond_16
    sub-int v1, v0, p1

    if-gtz v1, :cond_1c

    move v4, v5

    goto :goto_5

    :cond_1c
    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    if-nez v0, :cond_22

    move v4, v5

    goto :goto_5

    :cond_22
    if-nez p1, :cond_26

    move v4, v6

    goto :goto_5

    :cond_26
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_46

    if-eq v2, v0, :cond_46

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_46

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_46

    move v4, v5

    goto :goto_5

    :cond_46
    add-int/lit8 p1, p1, -0x1

    move v3, v2

    goto :goto_1e
.end method

.method public static hasMoreCodePointsThan(Ljava/lang/StringBuffer;I)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_6

    move v4, v6

    :goto_5
    return v4

    :cond_6
    if-nez p0, :cond_a

    move v4, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-le v4, p1, :cond_16

    move v4, v6

    goto :goto_5

    :cond_16
    sub-int v1, v0, p1

    if-gtz v1, :cond_1c

    move v4, v5

    goto :goto_5

    :cond_1c
    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    if-nez v0, :cond_22

    move v4, v5

    goto :goto_5

    :cond_22
    if-nez p1, :cond_26

    move v4, v6

    goto :goto_5

    :cond_26
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_46

    if-eq v2, v0, :cond_46

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_46

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_46

    move v4, v5

    goto :goto_5

    :cond_46
    add-int/lit8 p1, p1, -0x1

    move v3, v2

    goto :goto_1e
.end method

.method public static hasMoreCodePointsThan([CIII)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    sub-int v0, p2, p1

    if-ltz v0, :cond_a

    if-ltz p1, :cond_a

    if-gez p2, :cond_12

    :cond_a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Start and limit indexes should be non-negative and start <= limit"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    if-gez p3, :cond_16

    move v3, v5

    :goto_15
    return v3

    :cond_16
    if-nez p0, :cond_1a

    move v3, v4

    goto :goto_15

    :cond_1a
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v3, v3, 0x1

    if-le v3, p3, :cond_22

    move v3, v5

    goto :goto_15

    :cond_22
    sub-int v1, v0, p3

    if-gtz v1, :cond_51

    move v3, v4

    goto :goto_15

    :cond_28
    add-int/lit8 p3, p3, -0x1

    move v2, p1

    :goto_2b
    if-nez v0, :cond_30

    move p1, v2

    move v3, v4

    goto :goto_15

    :cond_30
    if-nez p3, :cond_35

    move p1, v2

    move v3, v5

    goto :goto_15

    :cond_35
    add-int/lit8 p1, v2, 0x1

    aget-char v3, p0, v2

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eq p1, p2, :cond_28

    aget-char v3, p0, p1

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_28

    move v3, v4

    goto :goto_15

    :cond_51
    move v2, p1

    goto :goto_2b
.end method

.method public static indexOf(Ljava/lang/String;I)I
    .registers 7

    const/high16 v4, 0x1

    const/4 v3, 0x1

    if-ltz p1, :cond_a

    const v2, 0x10ffff

    if-le p1, v2, :cond_12

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const v2, 0xd800

    if-lt p1, v2, :cond_1e

    const v2, 0xdfff

    if-le p1, v2, :cond_24

    if-ge p1, v4, :cond_24

    :cond_1e
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_23
    return v2

    :cond_24
    if-ge p1, v4, :cond_65

    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_63

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_4e
    if-lez v1, :cond_63

    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_63

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_63
    move v2, v1

    goto :goto_23

    :cond_65
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_23
.end method

.method public static indexOf(Ljava/lang/String;II)I
    .registers 8

    const/high16 v4, 0x1

    const/4 v3, 0x1

    if-ltz p1, :cond_a

    const v2, 0x10ffff

    if-le p1, v2, :cond_12

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const v2, 0xd800

    if-lt p1, v2, :cond_1e

    const v2, 0xdfff

    if-le p1, v2, :cond_24

    if-ge p1, v4, :cond_24

    :cond_1e
    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :goto_23
    return v2

    :cond_24
    if-ge p1, v4, :cond_65

    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_63

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_4e
    if-lez v1, :cond_63

    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_63

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_63
    move v2, v1

    goto :goto_23

    :cond_65
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_23
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_21

    sub-int v3, v2, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_20
    return v3

    :cond_21
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int v1, v0, v2

    if-ltz v0, :cond_6e

    sub-int v3, v2, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_4f

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4f

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto :goto_20

    :cond_4f
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_6e

    if-lez v0, :cond_6e

    sub-int v3, v0, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_6e

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto :goto_20

    :cond_6e
    move v3, v0

    goto :goto_20
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_21

    sub-int v3, v2, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    :goto_20
    return v3

    :cond_21
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int v1, v0, v2

    if-ltz v0, :cond_6c

    sub-int v3, v2, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_4d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4d

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto :goto_20

    :cond_4d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_6c

    if-lez v0, :cond_6c

    sub-int v3, v0, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_6c

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto :goto_20

    :cond_6c
    move v3, v0

    goto :goto_20
.end method

.method public static insert([CIII)I
    .registers 9

    const/4 v4, 0x0

    invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eq p2, p1, :cond_10

    invoke-static {p0, v4, p1, p2}, Lcom/ibm/icu/text/UTF16;->bounds([CIII)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    add-int/lit8 p2, p2, 0x1

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, p1, v0

    array-length v3, p0

    if-le v2, v3, :cond_21

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    :cond_21
    add-int v2, p2, v0

    sub-int v3, p1, p2

    invoke-static {p0, p2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p0, p2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3a

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p0, v2

    :cond_3a
    add-int v2, p1, v0

    return v2
.end method

.method public static insert(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .registers 6

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq p1, v1, :cond_13

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    add-int/lit8 p1, p1, 0x1

    :cond_13
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static isLeadSurrogate(C)Z
    .registers 3

    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isSurrogate(C)Z
    .registers 3

    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isTrailSurrogate(C)Z
    .registers 3

    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static lastIndexOf(Ljava/lang/String;I)I
    .registers 7

    const/high16 v4, 0x1

    const/4 v3, 0x1

    if-ltz p1, :cond_a

    const v2, 0x10ffff

    if-le p1, v2, :cond_12

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const v2, 0xd800

    if-lt p1, v2, :cond_1e

    const v2, 0xdfff

    if-le p1, v2, :cond_24

    if-ge p1, v4, :cond_24

    :cond_1e
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :goto_23
    return v2

    :cond_24
    if-ge p1, v4, :cond_65

    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_63

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    sub-int v2, v1, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_4e
    if-lez v1, :cond_63

    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_63

    sub-int v2, v1, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_63
    move v2, v1

    goto :goto_23

    :cond_65
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_23
.end method

.method public static lastIndexOf(Ljava/lang/String;II)I
    .registers 8

    const/high16 v4, 0x1

    const/4 v3, 0x1

    if-ltz p1, :cond_a

    const v2, 0x10ffff

    if-le p1, v2, :cond_12

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const v2, 0xd800

    if-lt p1, v2, :cond_1e

    const v2, 0xdfff

    if-le p1, v2, :cond_24

    if-ge p1, v4, :cond_24

    :cond_1e
    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :goto_23
    return v2

    :cond_24
    if-ge p1, v4, :cond_65

    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_63

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    sub-int v2, v1, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_4e
    if-lez v1, :cond_63

    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_63

    sub-int v2, v1, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    goto :goto_23

    :cond_63
    move v2, v1

    goto :goto_23

    :cond_65
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_23
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_21

    sub-int v2, v1, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    :goto_20
    return v2

    :cond_21
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6e

    sub-int v2, v1, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_4f

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4f

    sub-int v2, v0, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_20

    :cond_4f
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6e

    if-lez v0, :cond_6e

    sub-int v2, v0, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6e

    sub-int v2, v0, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_20

    :cond_6e
    move v2, v0

    goto :goto_20
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_21

    sub-int v2, v1, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    :goto_20
    return v2

    :cond_21
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6c

    sub-int v2, v1, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_4d

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4d

    sub-int v2, v0, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_20

    :cond_4d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6c

    if-lez v0, :cond_6c

    sub-int v2, v0, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6c

    sub-int v2, v0, v3

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_20

    :cond_6c
    move v2, v0

    goto :goto_20
.end method

.method public static moveCodePointOffset(Ljava/lang/String;II)I
    .registers 8

    move v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz p1, :cond_9

    if-le p1, v3, :cond_f

    :cond_9
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_f
    if-lez p2, :cond_41

    add-int v4, p2, p1

    if-le v4, v3, :cond_1b

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1b
    move v1, p2

    :goto_1c
    if-ge v2, v3, :cond_52

    if-lez v1, :cond_52

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3c

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    add-int/lit8 v2, v2, 0x1

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_41
    add-int v4, p1, p2

    if-gez v4, :cond_4b

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_4b
    neg-int v1, p2

    :goto_4c
    if-lez v1, :cond_52

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5a

    :cond_52
    if-eqz v1, :cond_78

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_5a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_75

    if-lez v2, :cond_75

    const/4 v4, 0x1

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_75

    add-int/lit8 v2, v2, -0x1

    :cond_75
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    :cond_78
    return v2
.end method

.method public static moveCodePointOffset(Ljava/lang/StringBuffer;II)I
    .registers 8

    move v2, p1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ltz p1, :cond_9

    if-le p1, v3, :cond_f

    :cond_9
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_f
    if-lez p2, :cond_41

    add-int v4, p2, p1

    if-le v4, v3, :cond_1b

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1b
    move v1, p2

    :goto_1c
    if-ge v2, v3, :cond_52

    if-lez v1, :cond_52

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3c

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    add-int/lit8 v2, v2, 0x1

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_41
    add-int v4, p1, p2

    if-gez v4, :cond_4b

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_4b
    neg-int v1, p2

    :goto_4c
    if-lez v1, :cond_52

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5a

    :cond_52
    if-eqz v1, :cond_78

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_5a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_75

    if-lez v2, :cond_75

    const/4 v4, 0x1

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_75

    add-int/lit8 v2, v2, -0x1

    :cond_75
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    :cond_78
    return v2
.end method

.method public static moveCodePointOffset([CIIII)I
    .registers 10

    array-length v3, p0

    add-int v2, p3, p1

    if-ltz p1, :cond_7

    if-ge p2, p1, :cond_d

    :cond_7
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_d
    if-le p2, v3, :cond_15

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_15
    if-ltz p3, :cond_19

    if-le v2, p2, :cond_1f

    :cond_19
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1f
    if-lez p4, :cond_4d

    add-int v4, p4, v2

    if-le v4, v3, :cond_2b

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_2b
    move v1, p4

    :goto_2c
    if-ge v2, p2, :cond_5e

    if-lez v1, :cond_5e

    aget-char v0, p0, v2

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_48

    add-int/lit8 v4, v2, 0x1

    if-ge v4, p2, :cond_48

    add-int/lit8 v4, v2, 0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_48

    add-int/lit8 v2, v2, 0x1

    :cond_48
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_4d
    add-int v4, v2, p4

    if-ge v4, p1, :cond_57

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_57
    neg-int v1, p4

    :goto_58
    if-lez v1, :cond_5e

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p1, :cond_66

    :cond_5e
    if-eqz v1, :cond_80

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_66
    aget-char v0, p0, v2

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7d

    if-le v2, p1, :cond_7d

    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-char v4, p0, v4

    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7d

    add-int/lit8 v2, v2, -0x1

    :cond_7d
    add-int/lit8 v1, v1, -0x1

    goto :goto_58

    :cond_80
    sub-int/2addr v2, p1

    return v2
.end method

.method public static newString([III)Ljava/lang/String;
    .registers 16

    const/4 v12, 0x0

    if-gez p2, :cond_9

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_9
    new-array v0, p2, [C

    const/4 v7, 0x0

    move v5, p1

    add-int v2, p1, p2

    :goto_f
    if-ge v5, v2, :cond_5c

    aget v1, p0, v5

    if-ltz v1, :cond_1a

    const v8, 0x10ffff

    if-le v1, v8, :cond_39

    :cond_1a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :catch_20
    move-exception v8

    move-object v3, v8

    array-length v8, p0

    int-to-double v8, v8

    add-int/lit8 v10, v7, 0x2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-int v10, v5, p1

    add-int/lit8 v10, v10, 0x1

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    new-array v6, v4, [C

    invoke-static {v0, v12, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v6

    :cond_39
    const/high16 v8, 0x1

    if-ge v1, v8, :cond_45

    int-to-char v8, v1

    :try_start_3e
    aput-char v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_45
    const v8, 0xd7c0

    shr-int/lit8 v9, v1, 0xa

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v0, v7

    add-int/lit8 v8, v7, 0x1

    const v9, 0xdc00

    and-int/lit16 v10, v1, 0x3ff

    add-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v0, v8
    :try_end_59
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_59} :catch_20

    add-int/lit8 v7, v7, 0x2

    goto :goto_42

    :cond_5c
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v12, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v8
.end method

.method public static replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 13

    const v8, 0x10ffff

    const/4 v9, -0x1

    if-lez p1, :cond_8

    if-le p1, v8, :cond_10

    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Argument oldChar32 is not a valid codepoint"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_10
    if-lez p2, :cond_14

    if-le p2, v8, :cond_1c

    :cond_14
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Argument newChar32 is not a valid codepoint"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1c
    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_24

    move-object v8, p0

    :goto_23
    return-object v8

    :cond_24
    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v7, v1

    const/high16 v8, 0x1

    if-lt p1, v8, :cond_38

    const/4 v5, 0x2

    :cond_38
    :goto_38
    if-eq v1, v9, :cond_4a

    add-int v0, v7, v5

    invoke-virtual {v6, v7, v0, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int v2, v1, v5

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v1

    add-int v8, v3, v1

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    goto :goto_38

    :cond_4a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_23
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, -0x1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_9

    move-object v7, p0

    :goto_8
    return-object v7

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v6, v1

    :goto_17
    if-eq v1, v8, :cond_29

    add-int v0, v6, v4

    invoke-virtual {v5, v6, v0, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int v2, v1, v4

    invoke-static {p0, p1, v2}, Lcom/ibm/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    add-int v7, v3, v1

    sub-int/2addr v7, v2

    add-int/2addr v6, v7

    goto :goto_17

    :cond_29
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8
.end method

.method public static reverse(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v4

    move v3, v2

    :goto_b
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_37

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_32

    if-lez v2, :cond_32

    const/4 v6, 0x1

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    goto :goto_b

    :cond_32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    goto :goto_b

    :cond_37
    return-object v5
.end method

.method public static setCharAt([CIII)I
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-lt p2, p1, :cond_a

    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v5

    :cond_a
    const/4 v0, 0x1

    aget-char v2, p0, p2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_47

    array-length v5, p0

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_47

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_47

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    :goto_2a
    invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move v1, p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, p0, p2

    if-ne v0, v4, :cond_5e

    const/4 v5, 0x2

    if-ne v0, v5, :cond_46

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, v5

    :cond_46
    :goto_46
    return v1

    :cond_47
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    if-lez p2, :cond_2a

    sub-int v5, p2, v9

    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_5e
    add-int v5, p2, v0

    add-int v6, p2, v4

    add-int v7, p2, v0

    sub-int v7, p1, v7

    invoke-static {p0, v5, p0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v0, v4, :cond_7b

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, v5

    add-int/lit8 v1, v1, 0x1

    array-length v5, p0

    if-ge v1, v5, :cond_46

    aput-char v8, p0, v1

    goto :goto_46

    :cond_7b
    add-int/lit8 v1, v1, -0x1

    aput-char v8, p0, v1

    goto :goto_46
.end method

.method public static setCharAt(Ljava/lang/StringBuffer;II)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-le v2, v3, :cond_31

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v0, v0, 0x1

    :cond_27
    :goto_27
    add-int v2, p1, v0

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_31
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_27

    if-lez p1, :cond_27

    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method private static toString(I)Ljava/lang/String;
    .registers 3

    const/high16 v1, 0x1

    if-ge p0, v1, :cond_a

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_9
    return-object v1

    :cond_a
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

    goto :goto_9
.end method

.method public static valueOf(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_7

    const v0, 0x10ffff

    if-le p0, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->bounds(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :pswitch_7
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :pswitch_e
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_15
    const/4 v0, 0x1

    sub-int v0, p1, v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :pswitch_7
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :pswitch_e
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_15
    const/4 v0, 0x1

    sub-int v0, p1, v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf([CIII)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/text/UTF16;->bounds([CIII)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :pswitch_9
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_10
    return-object v0

    :pswitch_11
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    invoke-direct {v0, p0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_10

    :pswitch_19
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    sub-int/2addr v1, v2

    invoke-direct {v0, p0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_10

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_11
        :pswitch_9
        :pswitch_9
        :pswitch_19
    .end packed-switch
.end method
