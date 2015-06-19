.class public Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicYuvToRGB.java"
.field private mInput:Landroid/support/v8/renderscript/Allocation;
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
return-void
.end method
.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
.registers 7
sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v3, :cond_c
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGBThunker;
move-result-object v2
:goto_b
return-object v2
:cond_c
const/4 v3, 0x6
invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v4
invoke-virtual {p0, v3, v4}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I
move-result v0
new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
invoke-direct {v2, v0, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
goto :goto_b
.end method
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p0, v0, v1, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
return-void
.end method
.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
move-result-object v0
return-object v0
.end method
.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
.registers 4
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x2
invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
move-result-object v0
return-object v0
.end method
.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
.registers 3
iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroid/support/v8/renderscript/Allocation;
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V
return-void
.end method