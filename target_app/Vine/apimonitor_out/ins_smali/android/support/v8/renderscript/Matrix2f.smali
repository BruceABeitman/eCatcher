.class public Landroid/support/v8/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"
.field final mMat:[F
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [F
iput-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix2f;->loadIdentity()V
return-void
.end method
.method public constructor <init>([F)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [F
iput-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
array-length v1, v1
invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public get(II)F
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
mul-int/lit8 v1, p1, 0x2
add-int/2addr v1, p2
aget v0, v0, v1
return v0
.end method
.method public getArray()[F
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
return-object v0
.end method
.method public load(Landroid/support/v8/renderscript/Matrix2f;)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix2f;->getArray()[F
move-result-object v0
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
array-length v2, v2
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public loadIdentity()V
.registers 5
const/high16 v3, 0x3f80
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v1, 0x0
aput v3, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v1, 0x1
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v1, 0x2
aput v2, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v1, 0x3
aput v3, v0, v1
return-void
.end method
.method public loadMultiply(Landroid/support/v8/renderscript/Matrix2f;Landroid/support/v8/renderscript/Matrix2f;)V
.registers 12
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v0, 0x0
:goto_4
if-ge v0, v8, :cond_27
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v1, 0x0
:goto_9
if-ge v1, v8, :cond_1e
invoke-virtual {p2, v0, v1}, Landroid/support/v8/renderscript/Matrix2f;->get(II)F
move-result v2
invoke-virtual {p1, v1, v6}, Landroid/support/v8/renderscript/Matrix2f;->get(II)F
move-result v5
mul-float/2addr v5, v2
add-float/2addr v3, v5
invoke-virtual {p1, v1, v7}, Landroid/support/v8/renderscript/Matrix2f;->get(II)F
move-result v5
mul-float/2addr v5, v2
add-float/2addr v4, v5
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_1e
invoke-virtual {p0, v0, v6, v3}, Landroid/support/v8/renderscript/Matrix2f;->set(IIF)V
invoke-virtual {p0, v0, v7, v4}, Landroid/support/v8/renderscript/Matrix2f;->set(IIF)V
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_27
return-void
.end method
.method public loadRotate(F)V
.registers 7
const v2, 0x3c8efa35
mul-float/2addr p1, v2
float-to-double v2, p1
invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
move-result-wide v2
double-to-float v0, v2
float-to-double v2, p1
invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D
move-result-wide v2
double-to-float v1, v2
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v3, 0x0
aput v0, v2, v3
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v3, 0x1
neg-float v4, v1
aput v4, v2, v3
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v3, 0x2
aput v1, v2, v3
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v3, 0x3
aput v0, v2, v3
return-void
.end method
.method public loadScale(FF)V
.registers 5
invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix2f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v1, 0x0
aput p1, v0, v1
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
const/4 v1, 0x3
aput p2, v0, v1
return-void
.end method
.method public multiply(Landroid/support/v8/renderscript/Matrix2f;)V
.registers 3
new-instance v0, Landroid/support/v8/renderscript/Matrix2f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V
invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix2f;->loadMultiply(Landroid/support/v8/renderscript/Matrix2f;Landroid/support/v8/renderscript/Matrix2f;)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix2f;->load(Landroid/support/v8/renderscript/Matrix2f;)V
return-void
.end method
.method public rotate(F)V
.registers 3
new-instance v0, Landroid/support/v8/renderscript/Matrix2f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix2f;->loadRotate(F)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix2f;->multiply(Landroid/support/v8/renderscript/Matrix2f;)V
return-void
.end method
.method public scale(FF)V
.registers 4
new-instance v0, Landroid/support/v8/renderscript/Matrix2f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V
invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix2f;->loadScale(FF)V
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix2f;->multiply(Landroid/support/v8/renderscript/Matrix2f;)V
return-void
.end method
.method public set(IIF)V
.registers 6
iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
mul-int/lit8 v1, p1, 0x2
add-int/2addr v1, p2
aput p3, v0, v1
return-void
.end method
.method public transpose()V
.registers 6
const/4 v4, 0x2
const/4 v3, 0x1
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
aget v0, v1, v3
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
aget v2, v2, v4
aput v2, v1, v3
iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F
aput v0, v1, v4
return-void
.end method