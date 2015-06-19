.class public Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->mValues:[F

    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    .registers 7

    sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v3, :cond_c

    move-object v1, p0

    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;

    move-result-object v2

    :goto_b
    return-object v2

    :cond_c
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_28

    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Unsuported element type."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_28
    const/4 v3, 0x5

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v2, v0, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    const/high16 v3, 0x40a0

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    goto :goto_b
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->mInput:Landroid/support/v8/renderscript/Allocation;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    return-void
.end method

.method public setRadius(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x41c8

    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    :cond_b
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Radius out of range (0 < r <= 25)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setVar(IF)V

    return-void
.end method
