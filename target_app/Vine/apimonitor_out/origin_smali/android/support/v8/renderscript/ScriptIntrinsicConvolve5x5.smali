.class public Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve5x5.java"


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;
    .registers 6

    sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v2, :cond_c

    move-object v1, p0

    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5Thunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5Thunker;

    move-result-object v2

    :goto_b
    return-object v2

    :cond_c
    const/4 v2, 0x4

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;

    invoke-direct {v2, v0, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    goto :goto_b
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .registers 6

    new-instance v1, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v3, p1, v0

    aput v3, v2, v0

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroid/support/v8/renderscript/Allocation;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    return-void
.end method
