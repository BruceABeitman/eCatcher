.class public Landroid/support/v8/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"
.field final mMat:[F
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
return-void
.end method
.method public constructor <init>([F)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
array-length v1, v1
invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private computeCofactor(II)F
.registers 17
add-int/lit8 v8, p1, 0x1
rem-int/lit8 v0, v8, 0x4
add-int/lit8 v8, p1, 0x2
rem-int/lit8 v1, v8, 0x4
add-int/lit8 v8, p1, 0x3
rem-int/lit8 v2, v8, 0x4
add-int/lit8 v8, p2, 0x1
rem-int/lit8 v5, v8, 0x4
add-int/lit8 v8, p2, 0x2
rem-int/lit8 v6, v8, 0x4
add-int/lit8 v8, p2, 0x3
rem-int/lit8 v7, v8, 0x4
iget-object v8, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v9, v5, 0x4
add-int/2addr v9, v0
aget v8, v8, v9
iget-object v9, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v10, v6, 0x4
add-int/2addr v10, v1
aget v9, v9, v10
iget-object v10, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v11, v7, 0x4
add-int/2addr v11, v2
aget v10, v10, v11
mul-float/2addr v9, v10
iget-object v10, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v11, v7, 0x4
add-int/2addr v11, v1
aget v10, v10, v11
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v12, v6, 0x4
add-int/2addr v12, v2
aget v11, v11, v12
mul-float/2addr v10, v11
sub-float/2addr v9, v10
mul-float/2addr v8, v9
iget-object v9, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v10, v6, 0x4
add-int/2addr v10, v0
aget v9, v9, v10
iget-object v10, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v11, v5, 0x4
add-int/2addr v11, v1
aget v10, v10, v11
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v12, v7, 0x4
add-int/2addr v12, v2
aget v11, v11, v12
mul-float/2addr v10, v11
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v12, v7, 0x4
add-int/2addr v12, v1
aget v11, v11, v12
iget-object v12, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v13, v5, 0x4
add-int/2addr v13, v2
aget v12, v12, v13
mul-float/2addr v11, v12
sub-float/2addr v10, v11
mul-float/2addr v9, v10
sub-float/2addr v8, v9
iget-object v9, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v10, v7, 0x4
add-int/2addr v10, v0
aget v9, v9, v10
iget-object v10, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v11, v5, 0x4
add-int/2addr v11, v1
aget v10, v10, v11
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v12, v6, 0x4
add-int/2addr v12, v2
aget v11, v11, v12
mul-float/2addr v10, v11
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v12, v6, 0x4
add-int/2addr v12, v1
aget v11, v11, v12
iget-object v12, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v13, v5, 0x4
add-int/2addr v13, v2
aget v12, v12, v13
mul-float/2addr v11, v12
sub-float/2addr v10, v11
mul-float/2addr v9, v10
add-float v4, v8, v9
add-int v8, p1, p2
and-int/lit8 v8, v8, 0x1
if-eqz v8, :cond_98
neg-float v3, v4
:goto_97
return v3
:cond_98
move v3, v4
goto :goto_97
.end method
.method public get(II)F
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v1, p1, 0x4
add-int/2addr v1, p2
aget v0, v0, v1
return v0
.end method
.method public getArray()[F
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
return-object v0
.end method
.method public inverse()Z
.registers 11
const/4 v5, 0x1
const/4 v9, 0x4
const/4 v4, 0x0
new-instance v3, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v3}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
const/4 v1, 0x0
:goto_9
if-ge v1, v9, :cond_1f
const/4 v2, 0x0
:goto_c
if-ge v2, v9, :cond_1c
iget-object v6, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v7, v1, 0x4
add-int/2addr v7, v2
invoke-direct {p0, v1, v2}, Landroid/support/v8/renderscript/Matrix4f;->computeCofactor(II)F
move-result v8
aput v8, v6, v7
add-int/lit8 v2, v2, 0x1
goto :goto_c
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_1f
iget-object v6, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v6, v6, v4
iget-object v7, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v7, v7, v4
mul-float/2addr v6, v7
iget-object v7, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v7, v7, v9
iget-object v8, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v8, v8, v5
mul-float/2addr v7, v8
add-float/2addr v6, v7
iget-object v7, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v8, 0x8
aget v7, v7, v8
iget-object v8, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v9, 0x2
aget v8, v8, v9
mul-float/2addr v7, v8
add-float/2addr v6, v7
iget-object v7, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v8, 0xc
aget v7, v7, v8
iget-object v8, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v9, 0x3
aget v8, v8, v9
mul-float/2addr v7, v8
add-float v0, v6, v7
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v6
float-to-double v6, v6
const-wide v8, 0x3eb0c6f7a0b5ed8dL
cmpg-double v6, v6, v8
if-gez v6, :cond_5c
:goto_5b
return v4
:cond_5c
const/high16 v4, 0x3f80
div-float v0, v4, v0
const/4 v1, 0x0
:goto_61
const/16 v4, 0x10
if-ge v1, v4, :cond_71
iget-object v4, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v6, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v6, v6, v1
mul-float/2addr v6, v0
aput v6, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_61
:cond_71
move v4, v5
goto :goto_5b
.end method
.method public inverseTranspose()Z
.registers 12
const/16 v10, 0xc
const/16 v9, 0x8
const/4 v4, 0x0
const/4 v8, 0x4
new-instance v3, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v3}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
const/4 v1, 0x0
:goto_c
if-ge v1, v8, :cond_22
const/4 v2, 0x0
:goto_f
if-ge v2, v8, :cond_1f
iget-object v5, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v6, v2, 0x4
add-int/2addr v6, v1
invoke-direct {p0, v1, v2}, Landroid/support/v8/renderscript/Matrix4f;->computeCofactor(II)F
move-result v7
aput v7, v5, v6
add-int/lit8 v2, v2, 0x1
goto :goto_f
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_22
iget-object v5, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v5, v5, v4
iget-object v6, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v6, v6, v4
mul-float/2addr v5, v6
iget-object v6, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v6, v6, v8
iget-object v7, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v7, v7, v8
mul-float/2addr v6, v7
add-float/2addr v5, v6
iget-object v6, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v6, v6, v9
iget-object v7, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v7, v7, v9
mul-float/2addr v6, v7
add-float/2addr v5, v6
iget-object v6, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v6, v6, v10
iget-object v7, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v7, v7, v10
mul-float/2addr v6, v7
add-float v0, v5, v6
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v5
float-to-double v5, v5
const-wide v7, 0x3eb0c6f7a0b5ed8dL
cmpg-double v5, v5, v7
if-gez v5, :cond_59
:goto_58
return v4
:cond_59
const/high16 v4, 0x3f80
div-float v0, v4, v0
const/4 v1, 0x0
:goto_5e
const/16 v4, 0x10
if-ge v1, v4, :cond_6e
iget-object v4, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v5, v3, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aget v5, v5, v1
mul-float/2addr v5, v0
aput v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_5e
:cond_6e
const/4 v4, 0x1
goto :goto_58
.end method
.method public load(Landroid/support/v8/renderscript/Matrix3f;)V
.registers 9
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
aget v1, v1, v2
aput v1, v0, v2
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
aget v1, v1, v3
aput v1, v0, v3
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
aget v1, v1, v5
aput v1, v0, v5
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
aput v4, v0, v6
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x4
iget-object v2, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
aget v2, v2, v6
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x5
iget-object v2, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
const/4 v3, 0x4
aget v2, v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x6
iget-object v2, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
const/4 v3, 0x5
aget v2, v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x7
aput v4, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0x8
iget-object v2, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
const/4 v3, 0x6
aget v2, v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0x9
iget-object v2, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
const/4 v3, 0x7
aget v2, v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xa
iget-object v2, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F
const/16 v3, 0x8
aget v2, v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xb
aput v4, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xc
aput v4, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xd
aput v4, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xe
aput v4, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xf
const/high16 v2, 0x3f80
aput v2, v0, v1
return-void
.end method
.method public load(Landroid/support/v8/renderscript/Matrix4f;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F
move-result-object v0
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
array-length v2, v2
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public loadFrustum(FFFFFF)V
.registers 12
const/high16 v4, 0x4000
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x0
mul-float v2, v4, p5
sub-float v3, p2, p1
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x5
mul-float v2, v4, p5
sub-float v3, p4, p3
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0x8
add-float v2, p2, p1
sub-float v3, p2, p1
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0x9
add-float v2, p4, p3
sub-float v3, p4, p3
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xa
add-float v2, p6, p5
neg-float v2, v2
sub-float v3, p6, p5
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xb
const/high16 v2, -0x4080
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xe
const/high16 v2, -0x4000
mul-float/2addr v2, p6
mul-float/2addr v2, p5
sub-float v3, p6, p5
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xf
const/4 v2, 0x0
aput v2, v0, v1
return-void
.end method
.method public loadIdentity()V
.registers 5
const/high16 v3, 0x3f80
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x0
aput v3, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x1
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x2
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x4
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x5
aput v3, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x6
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x7
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0x8
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0x9
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xa
aput v3, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xb
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xc
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xd
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xe
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xf
aput v3, v0, v1
return-void
.end method
.method public loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
.registers 16
const/4 v12, 0x4
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v0, 0x0
:goto_6
if-ge v0, v12, :cond_3d
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v1, 0x0
:goto_d
if-ge v1, v12, :cond_2e
invoke-virtual {p2, v0, v1}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F
move-result v2
invoke-virtual {p1, v1, v8}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F
move-result v7
mul-float/2addr v7, v2
add-float/2addr v3, v7
invoke-virtual {p1, v1, v9}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F
move-result v7
mul-float/2addr v7, v2
add-float/2addr v4, v7
invoke-virtual {p1, v1, v10}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F
move-result v7
mul-float/2addr v7, v2
add-float/2addr v5, v7
invoke-virtual {p1, v1, v11}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F
move-result v7
mul-float/2addr v7, v2
add-float/2addr v6, v7
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_2e
invoke-virtual {p0, v0, v8, v3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
invoke-virtual {p0, v0, v9, v4}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
invoke-virtual {p0, v0, v10, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
invoke-virtual {p0, v0, v11, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_3d
return-void
.end method
.method public loadOrtho(FFFFFF)V
.registers 11
const/high16 v3, 0x4000
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x0
sub-float v2, p2, p1
div-float v2, v3, v2
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x5
sub-float v2, p4, p3
div-float v2, v3, v2
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xa
const/high16 v2, -0x4000
sub-float v3, p6, p5
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xc
add-float v2, p2, p1
neg-float v2, v2
sub-float v3, p2, p1
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xd
add-float v2, p4, p3
neg-float v2, v2
sub-float v3, p4, p3
div-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xe
add-float v2, p6, p5
neg-float v2, v2
sub-float v3, p6, p5
div-float/2addr v2, v3
aput v2, v0, v1
return-void
.end method
.method public loadOrthoWindow(II)V
.registers 10
const/4 v1, 0x0
int-to-float v2, p1
int-to-float v3, p2
const/high16 v5, -0x4080
const/high16 v6, 0x3f80
move-object v0, p0
move v4, v1
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadOrtho(FFFFFF)V
return-void
.end method
.method public loadPerspective(FFFF)V
.registers 14
float-to-double v5, p1
const-wide v7, 0x400921fb54442d18L
mul-double/2addr v5, v7
const-wide v7, 0x4076800000000000L
div-double/2addr v5, v7
double-to-float v0, v5
float-to-double v5, v0
invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D
move-result-wide v5
double-to-float v0, v5
mul-float v4, p3, v0
neg-float v3, v4
mul-float v1, v3, p2
mul-float v2, v4, p2
move-object v0, p0
move v5, p3
move v6, p4
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadFrustum(FFFFFF)V
return-void
.end method
.method public loadProjectionNormalized(II)V
.registers 14
new-instance v0, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
new-instance v10, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v10}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
if-le p1, p2, :cond_42
int-to-float v1, p1
int-to-float v3, p2
div-float v2, v1, v3
neg-float v1, v2
const/high16 v3, -0x4080
const/high16 v4, 0x3f80
const/high16 v5, 0x3f80
const/high16 v6, 0x42c8
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadFrustum(FFFFFF)V
:goto_1c
const/high16 v1, 0x4334
const/4 v3, 0x0
const/high16 v4, 0x3f80
const/4 v5, 0x0
invoke-virtual {v10, v1, v3, v4, v5}, Landroid/support/v8/renderscript/Matrix4f;->loadRotate(FFFF)V
invoke-virtual {v0, v0, v10}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
const/high16 v1, -0x4000
const/high16 v3, 0x4000
const/high16 v4, 0x3f80
invoke-virtual {v10, v1, v3, v4}, Landroid/support/v8/renderscript/Matrix4f;->loadScale(FFF)V
invoke-virtual {v0, v0, v10}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
const/4 v1, 0x0
const/4 v3, 0x0
const/high16 v4, 0x4000
invoke-virtual {v10, v1, v3, v4}, Landroid/support/v8/renderscript/Matrix4f;->loadTranslate(FFF)V
invoke-virtual {v0, v0, v10}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V
return-void
:cond_42
int-to-float v1, p2
int-to-float v3, p1
div-float v2, v1, v3
const/high16 v4, -0x4080
const/high16 v5, 0x3f80
neg-float v6, v2
const/high16 v8, 0x3f80
const/high16 v9, 0x42c8
move-object v3, v0
move v7, v2
invoke-virtual/range {v3 .. v9}, Landroid/support/v8/renderscript/Matrix4f;->loadFrustum(FFFFFF)V
goto :goto_1c
.end method
.method public loadRotate(FFFF)V
.registers 19
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x3
const/4 v13, 0x0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x7
const/4 v13, 0x0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0xb
const/4 v13, 0x0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0xc
const/4 v13, 0x0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0xd
const/4 v13, 0x0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0xe
const/4 v13, 0x0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0xf
const/high16 v13, 0x3f80
aput v13, v11, v12
const v11, 0x3c8efa35
mul-float/2addr p1, v11
float-to-double v11, p1
invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D
move-result-wide v11
double-to-float v0, v11
float-to-double v11, p1
invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D
move-result-wide v11
double-to-float v4, v11
mul-float v11, p2, p2
mul-float v12, p3, p3
add-float/2addr v11, v12
mul-float v12, p4, p4
add-float/2addr v11, v12
float-to-double v11, v11
invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v11
double-to-float v1, v11
const/high16 v11, 0x3f80
cmpl-float v11, v1, v11
if-nez v11, :cond_5e
const/high16 v11, 0x3f80
div-float v3, v11, v1
mul-float p2, p2, v3
mul-float p3, p3, v3
mul-float p4, p4, v3
:cond_5e
const/high16 v11, 0x3f80
sub-float v2, v11, v0
mul-float v6, p2, p3
mul-float v8, p3, p4
mul-float v10, p4, p2
mul-float v5, p2, v4
mul-float v7, p3, v4
mul-float v9, p4, v4
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x0
mul-float v13, p2, p2
mul-float/2addr v13, v2
add-float/2addr v13, v0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x4
mul-float v13, v6, v2
sub-float/2addr v13, v9
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0x8
mul-float v13, v10, v2
add-float/2addr v13, v7
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x1
mul-float v13, v6, v2
add-float/2addr v13, v9
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x5
mul-float v13, p3, p3
mul-float/2addr v13, v2
add-float/2addr v13, v0
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0x9
mul-float v13, v8, v2
sub-float/2addr v13, v5
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x2
mul-float v13, v10, v2
sub-float/2addr v13, v7
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v12, 0x6
mul-float v13, v8, v2
add-float/2addr v13, v5
aput v13, v11, v12
iget-object v11, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v12, 0xa
mul-float v13, p4, p4
mul-float/2addr v13, v2
add-float/2addr v13, v0
aput v13, v11, v12
return-void
.end method
.method public loadScale(FFF)V
.registers 6
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x0
aput p1, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/4 v1, 0x5
aput p2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xa
aput p3, v0, v1
return-void
.end method
.method public loadTranslate(FFF)V
.registers 6
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xc
aput p1, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xd
aput p2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
const/16 v1, 0xe
aput p3, v0, v1
return-void
.end method
.method public multiply(Landroid/support/v8/renderscript/Matrix4f;)V
.registers 3
new-instance v0, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V
return-void
.end method
.method public rotate(FFFF)V
.registers 6
new-instance v0, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Matrix4f;->loadRotate(FFFF)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->multiply(Landroid/support/v8/renderscript/Matrix4f;)V
return-void
.end method
.method public scale(FFF)V
.registers 5
new-instance v0, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->loadScale(FFF)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->multiply(Landroid/support/v8/renderscript/Matrix4f;)V
return-void
.end method
.method public set(IIF)V
.registers 6
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v1, p1, 0x4
add-int/2addr v1, p2
aput p3, v0, v1
return-void
.end method
.method public translate(FFF)V
.registers 5
new-instance v0, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->loadTranslate(FFF)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->multiply(Landroid/support/v8/renderscript/Matrix4f;)V
return-void
.end method
.method public transpose()V
.registers 8
const/4 v0, 0x0
:goto_1
const/4 v3, 0x3
if-ge v0, v3, :cond_2b
add-int/lit8 v1, v0, 0x1
:goto_6
const/4 v3, 0x4
if-ge v1, v3, :cond_28
iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v4, v0, 0x4
add-int/2addr v4, v1
aget v2, v3, v4
iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v4, v0, 0x4
add-int/2addr v4, v1
iget-object v5, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v6, v1, 0x4
add-int/2addr v6, v0
aget v5, v5, v6
aput v5, v3, v4
iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F
mul-int/lit8 v4, v1, 0x4
add-int/2addr v4, v0
aput v2, v3, v4
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_28
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_2b
return-void
.end method