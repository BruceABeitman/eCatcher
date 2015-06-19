.class public Landroid/support/v8/renderscript/Type;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Type.java"
.field  mDimFaces:Z
.field  mDimMipmaps:Z
.field  mDimX:I
.field  mDimY:I
.field  mDimYuv:I
.field  mDimZ:I
.field  mElement:Landroid/support/v8/renderscript/Element;
.field  mElementCount:I
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
return-void
.end method
.method  calcElementCount()V
.registers 9
const/4 v7, 0x1
invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z
move-result v2
invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I
move-result v3
invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I
move-result v4
invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I
move-result v5
const/4 v1, 0x1
invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z
move-result v6
if-eqz v6, :cond_19
const/4 v1, 0x6
:cond_19
if-nez v3, :cond_1c
const/4 v3, 0x1
:cond_1c
if-nez v4, :cond_1f
const/4 v4, 0x1
:cond_1f
if-nez v5, :cond_22
const/4 v5, 0x1
:cond_22
mul-int v6, v3, v4
mul-int/2addr v6, v5
mul-int v0, v6, v1
:goto_27
if-eqz v2, :cond_41
if-gt v3, v7, :cond_2f
if-gt v4, v7, :cond_2f
if-le v5, v7, :cond_41
:cond_2f
if-le v3, v7, :cond_33
shr-int/lit8 v3, v3, 0x1
:cond_33
if-le v4, v7, :cond_37
shr-int/lit8 v4, v4, 0x1
:cond_37
if-le v5, v7, :cond_3b
shr-int/lit8 v5, v5, 0x1
:cond_3b
mul-int v6, v3, v4
mul-int/2addr v6, v5
mul-int/2addr v6, v1
add-int/2addr v0, v6
goto :goto_27
:cond_41
iput v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I
return-void
.end method
.method public getCount()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I
return v0
.end method
.method public getElement()Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
return-object v0
.end method
.method public getX()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimX:I
return v0
.end method
.method public getY()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimY:I
return v0
.end method
.method public getYuv()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I
return v0
.end method
.method public getZ()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I
return v0
.end method
.method public hasFaces()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z
return v0
.end method
.method public hasMipmaps()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z
return v0
.end method