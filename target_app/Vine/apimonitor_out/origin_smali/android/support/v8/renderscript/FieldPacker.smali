.class public Landroid/support/v8/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private final mData:[B

.field private mLen:I

.field private mN:Landroid/renderscript/FieldPacker;

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    new-array v0, p1, [B

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-direct {v0, p1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    :cond_19
    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .registers 3

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    :goto_b
    return-void

    :cond_c
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_f
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public addF32(F)V
    .registers 3

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_b
.end method

.method public addF32(Landroid/support/v8/renderscript/Float2;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float2;

    iget v2, p1, Landroid/support/v8/renderscript/Float2;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Float2;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    :goto_14
    return-void

    :cond_15
    iget v0, p1, Landroid/support/v8/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    iget v0, p1, Landroid/support/v8/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_14
.end method

.method public addF32(Landroid/support/v8/renderscript/Float3;)V
    .registers 7

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float3;

    iget v2, p1, Landroid/support/v8/renderscript/Float3;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float3;->y:F

    iget v4, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p1, Landroid/support/v8/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    iget v0, p1, Landroid/support/v8/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    iget v0, p1, Landroid/support/v8/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_16
.end method

.method public addF32(Landroid/support/v8/renderscript/Float4;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->x:F

    iget v3, p1, Landroid/support/v8/renderscript/Float4;->y:F

    iget v4, p1, Landroid/support/v8/renderscript/Float4;->z:F

    iget v5, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Float4;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    :goto_18
    return-void

    :cond_19
    iget v0, p1, Landroid/support/v8/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    iget v0, p1, Landroid/support/v8/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    iget v0, p1, Landroid/support/v8/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    iget v0, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto :goto_18
.end method

.method public addF64(D)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addF64(D)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_b
.end method

.method public addF64(Landroid/support/v8/renderscript/Double2;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Double2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Double2;-><init>(DD)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    :goto_14
    return-void

    :cond_15
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_14
.end method

.method public addF64(Landroid/support/v8/renderscript/Double3;)V
    .registers 10

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Double3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/support/v8/renderscript/Double3;->y:D

    iget-wide v5, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Double3;-><init>(DDD)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    :goto_16
    return-void

    :cond_17
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_16
.end method

.method public addF64(Landroid/support/v8/renderscript/Double4;)V
    .registers 12

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Double4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/support/v8/renderscript/Double4;->y:D

    iget-wide v5, p1, Landroid/support/v8/renderscript/Double4;->z:D

    iget-wide v7, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Double4;-><init>(DDDD)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    :goto_18
    return-void

    :cond_19
    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF64(D)V

    goto :goto_18
.end method

.method public addI16(Landroid/support/v8/renderscript/Short2;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short2;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    :goto_14
    return-void

    :cond_15
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_14
.end method

.method public addI16(Landroid/support/v8/renderscript/Short3;)V
    .registers 7

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short3;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short3;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    :goto_16
    return-void

    :cond_17
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_16
.end method

.method public addI16(Landroid/support/v8/renderscript/Short4;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short4;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short4;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short4;->z:S

    iget-short v5, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    :goto_18
    return-void

    :cond_19
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI16(S)V

    goto :goto_18
.end method

.method public addI16(S)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_b
.end method

.method public addI32(I)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_b
.end method

.method public addI32(Landroid/support/v8/renderscript/Int2;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroid/support/v8/renderscript/Int2;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    :goto_14
    return-void

    :cond_15
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_14
.end method

.method public addI32(Landroid/support/v8/renderscript/Int3;)V
    .registers 7

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroid/support/v8/renderscript/Int3;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int3;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_16
.end method

.method public addI32(Landroid/support/v8/renderscript/Int4;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroid/support/v8/renderscript/Int4;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int4;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int4;->z:I

    iget v5, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    :goto_18
    return-void

    :cond_19
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_18
.end method

.method public addI64(J)V
    .registers 10

    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_f
.end method

.method public addI64(Landroid/support/v8/renderscript/Long2;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    :goto_14
    return-void

    :cond_15
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_14
.end method

.method public addI64(Landroid/support/v8/renderscript/Long3;)V
    .registers 10

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    :goto_16
    return-void

    :cond_17
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_16
.end method

.method public addI64(Landroid/support/v8/renderscript/Long4;)V
    .registers 12

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v7, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    :goto_18
    return-void

    :cond_19
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI64(J)V

    goto :goto_18
.end method

.method public addI8(B)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    goto :goto_b
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte2;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte2;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Byte2;-><init>(BB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    :goto_14
    return-void

    :cond_15
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_14
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte3;)V
    .registers 7

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte3;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    iget-byte v4, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Byte3;-><init>(BBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    :goto_16
    return-void

    :cond_17
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_16
.end method

.method public addI8(Landroid/support/v8/renderscript/Byte4;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte4;

    iget-byte v2, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    iget-byte v3, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    iget-byte v4, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    iget-byte v5, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Byte4;-><init>(BBBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    :goto_18
    return-void

    :cond_19
    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    iget-byte v0, p1, Landroid/support/v8/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI8(B)V

    goto :goto_18
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix2f;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v2, Landroid/renderscript/Matrix2f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix2f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix2f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v2, Landroid/renderscript/Matrix3f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix3f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/Matrix4f;-><init>([F)V

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p1, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public addObj(Landroid/support/v8/renderscript/BaseObj;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    goto :goto_12

    :cond_19
    if-eqz p1, :cond_23

    invoke-virtual {p1, v1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_12

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    goto :goto_12
.end method

.method public addU16(I)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    :goto_b
    return-void

    :cond_c
    if-ltz p1, :cond_13

    const v0, 0xffff

    if-le p1, v0, :cond_39

    :cond_13
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU16( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_b
.end method

.method public addU16(Landroid/support/v8/renderscript/Int2;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroid/support/v8/renderscript/Int2;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int2;)V

    :goto_14
    return-void

    :cond_15
    iget v0, p1, Landroid/support/v8/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_14
.end method

.method public addU16(Landroid/support/v8/renderscript/Int3;)V
    .registers 7

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroid/support/v8/renderscript/Int3;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int3;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int3;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p1, Landroid/support/v8/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_16
.end method

.method public addU16(Landroid/support/v8/renderscript/Int4;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroid/support/v8/renderscript/Int4;->x:I

    iget v3, p1, Landroid/support/v8/renderscript/Int4;->y:I

    iget v4, p1, Landroid/support/v8/renderscript/Int4;->z:I

    iget v5, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int4;)V

    :goto_18
    return-void

    :cond_19
    iget v0, p1, Landroid/support/v8/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    iget v0, p1, Landroid/support/v8/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU16(I)V

    goto :goto_18
.end method

.method public addU32(J)V
    .registers 9

    const-wide/16 v4, 0xff

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    :goto_d
    return-void

    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1d

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_43

    :cond_1d
    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU32( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_d
.end method

.method public addU32(Landroid/support/v8/renderscript/Long2;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long2;)V

    :goto_14
    return-void

    :cond_15
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_14
.end method

.method public addU32(Landroid/support/v8/renderscript/Long3;)V
    .registers 10

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long3;)V

    :goto_16
    return-void

    :cond_17
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_16
.end method

.method public addU32(Landroid/support/v8/renderscript/Long4;)V
    .registers 12

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v7, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long4;)V

    :goto_18
    return-void

    :cond_19
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    goto :goto_18
.end method

.method public addU64(J)V
    .registers 10

    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU64(J)V

    :goto_f
    return-void

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_3c

    const-string v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU64( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-virtual {p0, v6}, Landroid/support/v8/renderscript/FieldPacker;->align(I)V

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_f
.end method

.method public addU64(Landroid/support/v8/renderscript/Long2;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroid/support/v8/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long2;)V

    :goto_14
    return-void

    :cond_15
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_14
.end method

.method public addU64(Landroid/support/v8/renderscript/Long3;)V
    .registers 10

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v7, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long3;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long3;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v7, v0}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long3;)V

    :goto_16
    return-void

    :cond_17
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_16
.end method

.method public addU64(Landroid/support/v8/renderscript/Long4;)V
    .registers 12

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v9, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v0, Landroid/renderscript/Long4;

    iget-wide v1, p1, Landroid/support/v8/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/support/v8/renderscript/Long4;->y:J

    iget-wide v5, p1, Landroid/support/v8/renderscript/Long4;->z:J

    iget-wide v7, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long4;)V

    :goto_18
    return-void

    :cond_19
    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    iget-wide v0, p1, Landroid/support/v8/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addU64(J)V

    goto :goto_18
.end method

.method public addU8(Landroid/support/v8/renderscript/Short2;)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short2;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short2;)V

    :goto_14
    return-void

    :cond_15
    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_14
.end method

.method public addU8(Landroid/support/v8/renderscript/Short3;)V
    .registers 7

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short3;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short3;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short3;)V

    :goto_16
    return-void

    :cond_17
    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_16
.end method

.method public addU8(Landroid/support/v8/renderscript/Short4;)V
    .registers 8

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroid/support/v8/renderscript/Short4;->x:S

    iget-short v3, p1, Landroid/support/v8/renderscript/Short4;->y:S

    iget-short v4, p1, Landroid/support/v8/renderscript/Short4;->z:S

    iget-short v5, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    :goto_18
    return-void

    :cond_19
    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    iget-short v0, p1, Landroid/support/v8/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    goto :goto_18
.end method

.method public addU8(S)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    :goto_b
    return-void

    :cond_c
    if-ltz p1, :cond_12

    const/16 v0, 0xff

    if-le p1, v0, :cond_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_b
.end method

.method public align(I)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->align(I)V

    :cond_b
    return-void

    :cond_c
    if-lez p1, :cond_13

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_2c

    :cond_13
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_2c
.end method

.method public final getData()[B
    .registers 2

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    goto :goto_c
.end method

.method public reset()V
    .registers 2

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_b
.end method

.method public reset(I)V
    .registers 5

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    :goto_b
    return-void

    :cond_c
    if-ltz p1, :cond_12

    iget v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-lt p1, v0, :cond_2b

    :cond_12
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput p1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_b
.end method

.method public skip(I)V
    .registers 6

    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p1}, Landroid/renderscript/FieldPacker;->skip(I)V

    :goto_b
    return-void

    :cond_c
    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    add-int v0, v1, p1

    if-ltz v0, :cond_16

    iget v1, p0, Landroid/support/v8/renderscript/FieldPacker;->mLen:I

    if-le v0, v1, :cond_2f

    :cond_16
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    iput v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mPos:I

    goto :goto_b
.end method
