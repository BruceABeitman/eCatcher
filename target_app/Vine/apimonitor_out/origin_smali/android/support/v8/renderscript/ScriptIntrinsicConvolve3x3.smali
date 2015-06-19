.class public Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
    .registers 8

    sget-boolean v4, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v4, :cond_c

    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3Thunker;

    move-result-object v3

    :goto_b
    return-object v3

    :cond_c
    const/16 v4, 0x9

    new-array v0, v4, [F

    fill-array-data v0, :array_38

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_25

    new-instance v4, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v5, "Unsuported element type."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_25
    const/4 v4, 0x1

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v1

    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-direct {v3, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    invoke-virtual {v3, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    goto :goto_b

    nop

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .registers 6

    new-instance v1, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    aget v3, p1, v0

    aput v3, v2, v0

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/support/v8/renderscript/Allocation;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    return-void
.end method
