.class public final Landroid/support/v8/renderscript/Script$KernelID;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"
.field  mN:Landroid/renderscript/Script$KernelID;
.field  mScript:Landroid/support/v8/renderscript/Script;
.field  mSig:I
.field  mSlot:I
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V
.registers 6
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iput-object p3, p0, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;
iput p4, p0, Landroid/support/v8/renderscript/Script$KernelID;->mSlot:I
iput p5, p0, Landroid/support/v8/renderscript/Script$KernelID;->mSig:I
return-void
.end method