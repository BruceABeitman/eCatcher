.class public Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicColorMatrix.java"
.field private mInput:Landroid/support/v8/renderscript/Allocation;
.field private final mMatrix:Landroid/support/v8/renderscript/Matrix4f;
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
new-instance v0, Landroid/support/v8/renderscript/Matrix4f;
invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
return-void
.end method
.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
.registers 6
sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v2, :cond_c
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
move-result-object v2
:goto_b
return-object v2
:cond_c
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v2
invoke-virtual {p1, v2}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z
move-result v2
if-nez v2, :cond_1e
new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v3, "Unsuported element type."
invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1e
const/4 v2, 0x2
invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v3
invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I
move-result v0
new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
invoke-direct {v2, v0, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
goto :goto_b
.end method
.method private setMatrix()V
.registers 3
new-instance v0, Landroid/support/v8/renderscript/FieldPacker;
const/16 v1, 0x40
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V
return-void
.end method
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0, v0, p1, p2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
return-void
.end method
.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
.registers 4
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x3
invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
move-result-object v0
return-object v0
.end method
.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix3f;)V
invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V
return-void
.end method
.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V
invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V
return-void
.end method
.method public setGreyscale()V
.registers 8
const v6, 0x3e991687
const v5, 0x3de978d5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v2, v2, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3f1645a2
invoke-virtual {v0, v3, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v4, v2, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v2, v3, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3f1645a2
invoke-virtual {v0, v3, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v4, v3, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v2, v4, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3f1645a2
invoke-virtual {v0, v3, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v4, v4, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V
return-void
.end method
.method public setRGBtoYUV()V
.registers 6
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3e991687
invoke-virtual {v0, v2, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3f1645a2
invoke-virtual {v0, v3, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3de978d5
invoke-virtual {v0, v4, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, -0x41e956c1
invoke-virtual {v0, v2, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, -0x416c1a8b
invoke-virtual {v0, v3, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3edf3b64
invoke-virtual {v0, v4, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3f1d70a4
invoke-virtual {v0, v2, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, -0x40fc299e
invoke-virtual {v0, v3, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, -0x42332df5
invoke-virtual {v0, v4, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V
return-void
.end method
.method public setYUVtoRGB()V
.registers 8
const/4 v6, 0x0
const/high16 v5, 0x3f80
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v2, v2, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v3, v2, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x3f91e5f3
invoke-virtual {v0, v4, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v2, v3, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, -0x4135f06f
invoke-virtual {v0, v3, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, -0x40eb5dcc
invoke-virtual {v0, v4, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v2, v4, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
const v1, 0x40020e17
invoke-virtual {v0, v3, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;
invoke-virtual {v0, v4, v4, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V
invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V
return-void
.end method