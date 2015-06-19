.class Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
.source "ScriptIntrinsicLUTThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicLUT;


# direct methods
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;
    .registers 7

    move-object v1, p0

    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    iget-object v3, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicLUT;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    return-object v2
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicLUT;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicLUT;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    return-object v0
.end method

.method public setAlpha(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setAlpha(II)V

    return-void
.end method

.method public setBlue(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setBlue(II)V

    return-void
.end method

.method public setGreen(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setGreen(II)V

    return-void
.end method

.method public setRed(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setRed(II)V

    return-void
.end method
