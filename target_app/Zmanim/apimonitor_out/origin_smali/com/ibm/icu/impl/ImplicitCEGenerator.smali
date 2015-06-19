.class public Lcom/ibm/icu/impl/ImplicitCEGenerator;
.super Ljava/lang/Object;
.source "ImplicitCEGenerator.java"


# static fields
.field public static final CJK_A_BASE:I = 0x3400

.field public static final CJK_A_LIMIT:I = 0x4dc0

.field public static final CJK_BASE:I = 0x4e00

.field public static final CJK_B_BASE:I = 0x20000

.field public static final CJK_B_LIMIT:I = 0x2a6e0

.field public static final CJK_COMPAT_USED_BASE:I = 0xfa0e

.field public static final CJK_COMPAT_USED_LIMIT:I = 0xfa30

.field public static final CJK_LIMIT:I = 0xa000

.field static final DEBUG:Z = false

.field static final MAX_INPUT:I = 0x220001

.field static NON_CJK_OFFSET:I = 0x0

.field static final bottomByte:J = 0xffL

.field static final fourBytes:J = 0xffffffffL

.field static final topByte:J = 0xff000000L


# instance fields
.field final3Count:I

.field final3Multiplier:I

.field final4Count:I

.field final4Multiplier:I

.field max3Trail:I

.field max4Primary:I

.field max4Trail:I

.field maxTrail:I

.field medialCount:I

.field min3Primary:I

.field min4Boundary:I

.field min4Primary:I

.field minTrail:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x11

    sput v0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 10

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/16 v4, 0xfe

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/ImplicitCEGenerator;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_b

    if-ge p1, p2, :cond_b

    const/16 v10, 0xff

    if-le p2, v10, :cond_13

    :cond_b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "bad lead bytes"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_13
    if-ltz p3, :cond_21

    move v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_21

    const/16 v10, 0xff

    move/from16 v0, p4

    move v1, v10

    if-le v0, v1, :cond_29

    :cond_21
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "bad trail bytes"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_29
    const/4 v10, 0x1

    move/from16 v0, p6

    move v1, v10

    if-ge v0, v1, :cond_37

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "bad three-byte primaries"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_37
    iput p3, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/ImplicitCEGenerator;->maxTrail:I

    iput p1, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min3Primary:I

    iput p2, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max4Primary:I

    add-int/lit8 v10, p5, 0x1

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    sub-int v10, p4, p3

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    div-int/2addr v10, v11

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Count:I

    iget v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Count:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    mul-int/2addr v10, v11

    add-int/2addr v10, p3

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max3Trail:I

    sub-int v10, p4, p3

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    iget v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Count:I

    mul-int v8, v10, v11

    sub-int v10, p2, p1

    add-int/lit8 v7, v10, 0x1

    sub-int v6, v7, p6

    mul-int v3, p6, v8

    add-int v10, p1, p6

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Primary:I

    iput v3, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Boundary:I

    const v10, 0x220001

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Boundary:I

    sub-int v9, v10, v11

    invoke-static {v9, v6}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->divideAndRoundUp(II)I

    move-result v5

    iget v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    mul-int/2addr v10, v11

    invoke-static {v5, v10}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->divideAndRoundUp(II)I

    move-result v4

    sub-int v10, p4, p3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    div-int v2, v10, v4

    const/4 v10, 0x1

    if-ge v2, v10, :cond_98

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "must have larger gap4s"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_98
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Multiplier:I

    iput v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Count:I

    iget v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Count:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Multiplier:I

    mul-int/2addr v10, v11

    add-int/2addr v10, p3

    iput v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max4Trail:I

    iget v10, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    mul-int/2addr v10, v6

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Count:I

    mul-int/2addr v10, v11

    const v11, 0x220001

    if-ge v10, v11, :cond_be

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "internal error"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_be
    return-void
.end method

.method public static divideAndRoundUp(II)I
    .registers 3

    const/4 v0, 0x1

    sub-int v0, p0, v0

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static swapCJK(I)I
    .registers 5

    const v3, 0xfa0e

    const/16 v2, 0x4e00

    const/16 v1, 0x3400

    if-lt p0, v2, :cond_34

    const v0, 0xa000

    if-ge p0, v0, :cond_11

    sub-int v0, p0, v2

    :goto_10
    return v0

    :cond_11
    if-ge p0, v3, :cond_17

    sget v0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    add-int/2addr v0, p0

    goto :goto_10

    :cond_17
    const v0, 0xfa30

    if-ge p0, v0, :cond_21

    sub-int v0, p0, v3

    add-int/lit16 v0, v0, 0x5200

    goto :goto_10

    :cond_21
    const/high16 v0, 0x2

    if-ge p0, v0, :cond_29

    sget v0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    add-int/2addr v0, p0

    goto :goto_10

    :cond_29
    const v0, 0x2a6e0

    if-ge p0, v0, :cond_30

    move v0, p0

    goto :goto_10

    :cond_30
    sget v0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    add-int/2addr v0, p0

    goto :goto_10

    :cond_34
    if-ge p0, v1, :cond_3a

    sget v0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    add-int/2addr v0, p0

    goto :goto_10

    :cond_3a
    const/16 v0, 0x4dc0

    if-ge p0, v0, :cond_45

    sub-int v0, p0, v1

    add-int/lit16 v0, v0, 0x5200

    add-int/lit8 v0, v0, 0x22

    goto :goto_10

    :cond_45
    sget v0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    add-int/2addr v0, p0

    goto :goto_10
.end method


# virtual methods
.method public getCodePointFromRaw(I)I
    .registers 5

    const/16 v2, 0x5200

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    sget v1, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    if-lt p1, v1, :cond_e

    sget v1, Lcom/ibm/icu/impl/ImplicitCEGenerator;->NON_CJK_OFFSET:I

    sub-int v0, p1, v1

    :goto_d
    return v0

    :cond_e
    const/high16 v1, 0x2

    if-lt p1, v1, :cond_14

    move v0, p1

    goto :goto_d

    :cond_14
    const v1, 0x9fe2

    if-ge p1, v1, :cond_31

    if-ge p1, v2, :cond_1e

    add-int/lit16 v0, p1, 0x4e00

    goto :goto_d

    :cond_1e
    const/16 v1, 0x5222

    if-ge p1, v1, :cond_29

    const v1, 0xfa0e

    add-int/2addr v1, p1

    sub-int v0, v1, v2

    goto :goto_d

    :cond_29
    add-int/lit16 v1, p1, 0x3400

    sub-int/2addr v1, v2

    const/16 v2, 0x22

    sub-int v0, v1, v2

    goto :goto_d

    :cond_31
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public getGap3()I
    .registers 3

    iget v0, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGap4()I
    .registers 3

    iget v0, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Multiplier:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getImplicitFromCodePoint(I)I
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->swapCJK(I)I

    move-result v0

    add-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->getImplicitFromRaw(I)I

    move-result v0

    return v0
.end method

.method public getImplicitFromRaw(I)I
    .registers 10

    if-ltz p1, :cond_7

    const v4, 0x220001

    if-le p1, v4, :cond_25

    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Code point out of range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/ibm/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_25
    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Boundary:I

    sub-int v0, p1, v4

    if-gez v0, :cond_81

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Count:I

    div-int v1, p1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Count:I

    rem-int v0, p1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    div-int v2, v1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    rem-int/2addr v1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    iget v5, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    mul-int/2addr v5, v0

    add-int v0, v4, v5

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min3Primary:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Primary:I

    if-lt v2, v4, :cond_78

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "4-byte out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/ibm/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-static {v6, v7}, Lcom/ibm/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_78
    shl-int/lit8 v4, v2, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x8

    add-int/2addr v4, v5

    :goto_80
    return v4

    :cond_81
    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Count:I

    div-int v1, v0, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Count:I

    rem-int/2addr v0, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    div-int v2, v1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    rem-int/2addr v1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    div-int v3, v2, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    rem-int/2addr v2, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    iget v5, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Multiplier:I

    mul-int/2addr v5, v0

    add-int v0, v4, v5

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Primary:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max4Primary:I

    if-le v3, v4, :cond_d7

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "4-byte out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/ibm/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v3

    invoke-static {v6, v7}, Lcom/ibm/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d7
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    goto :goto_80
.end method

.method public getMaxTrail()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->maxTrail:I

    return v0
.end method

.method public getMinTrail()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    return v0
.end method

.method public getRawFromCodePoint(I)I
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/impl/ImplicitCEGenerator;->swapCJK(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRawFromImplicit(I)I
    .registers 11

    const/4 v8, -0x1

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 v2, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 v0, p1, 0xff

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min3Primary:I

    if-lt v0, v6, :cond_1f

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max4Primary:I

    if-gt v0, v6, :cond_1f

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    if-lt v1, v6, :cond_1f

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->maxTrail:I

    if-le v1, v6, :cond_21

    :cond_1f
    move v6, v8

    :goto_20
    return v6

    :cond_21
    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    sub-int/2addr v1, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Primary:I

    if-ge v0, v6, :cond_57

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    if-lt v2, v6, :cond_32

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max3Trail:I

    if-gt v2, v6, :cond_32

    if-eqz v3, :cond_34

    :cond_32
    move v6, v8

    goto :goto_20

    :cond_34
    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    rem-int v4, v2, v6

    if-eqz v4, :cond_3f

    move v6, v8

    goto :goto_20

    :cond_3f
    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min3Primary:I

    sub-int/2addr v0, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Multiplier:I

    div-int/2addr v2, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    iget v7, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final3Count:I

    mul-int/2addr v6, v7

    add-int v5, v6, v2

    :goto_4e
    if-ltz v5, :cond_55

    const v6, 0x220001

    if-le v5, v6, :cond_8e

    :cond_55
    move v6, v8

    goto :goto_20

    :cond_57
    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    if-lt v2, v6, :cond_67

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->maxTrail:I

    if-gt v2, v6, :cond_67

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    if-lt v3, v6, :cond_67

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->max4Trail:I

    if-le v3, v6, :cond_69

    :cond_67
    move v6, v8

    goto :goto_20

    :cond_69
    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->minTrail:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Multiplier:I

    rem-int v4, v3, v6

    if-eqz v4, :cond_77

    move v6, v8

    goto :goto_20

    :cond_77
    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Multiplier:I

    div-int/2addr v3, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Primary:I

    sub-int/2addr v0, v6

    iget v6, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    iget v7, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->medialCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    iget v7, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->final4Count:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v3

    iget v7, p0, Lcom/ibm/icu/impl/ImplicitCEGenerator;->min4Boundary:I

    add-int v5, v6, v7

    goto :goto_4e

    :cond_8e
    move v6, v5

    goto :goto_20
.end method
