.class Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicBlend;
.source "ScriptIntrinsicBlendThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicBlend;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;
    .registers 7

    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    move-object v1, p1

    check-cast v1, Landroid/support/v8/renderscript/ElementThunker;

    new-instance v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    return-object v0
.end method


# virtual methods
.method public forEachAdd(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachClear(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDst(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstAtop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstIn(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstOut(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstOver(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachMultiply(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrc(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcAtop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcIn(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcOut(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcOver(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSubtract(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public forEachXor(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, p2

    check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    return-void
.end method

.method public getKernelIDAdd()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0x22

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDAdd()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDClear()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDClear()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDDst()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDst()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDDstAtop()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstAtop()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDDstIn()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstIn()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDDstOut()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstOut()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDDstOver()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDDstOver()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDMultiply()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDMultiply()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDSrc()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrc()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDSrcAtop()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcAtop()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDSrcIn()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcIn()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDSrcOut()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcOut()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDSrcOver()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSrcOver()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDSubtract()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0x23

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDSubtract()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method public getKernelIDXor()Landroid/support/v8/renderscript/Script$KernelID;
    .registers 5

    const/4 v3, 0x0

    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlend;->getKernelIDXor()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicBlend;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlend;

    return-object v0
.end method
