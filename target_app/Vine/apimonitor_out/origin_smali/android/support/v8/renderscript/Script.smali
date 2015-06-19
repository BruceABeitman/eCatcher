.class public Landroid/support/v8/renderscript/Script;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Script$LaunchOptions;,
        Landroid/support/v8/renderscript/Script$FieldBase;,
        Landroid/support/v8/renderscript/Script$Builder;,
        Landroid/support/v8/renderscript/Script$FieldID;,
        Landroid/support/v8/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field mT:Landroid/support/v8/renderscript/ScriptCThunker;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkBindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    if-eqz p1, :cond_23

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_9

    :cond_23
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_9
.end method

.method protected createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
    .registers 8

    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    new-instance v0, Landroid/support/v8/renderscript/Script$FieldID;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v3, v4, p0, p1}, Landroid/support/v8/renderscript/Script$FieldID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V

    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v3, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkCreateFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v8/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;

    :cond_1b
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    :goto_21
    return-object v1

    :cond_22
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Script$FieldID;

    if-eqz v0, :cond_2e

    move-object v1, v0

    goto :goto_21

    :cond_2e
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptFieldIDCreate(II)I

    move-result v2

    if-nez v2, :cond_44

    new-instance v3, Landroid/support/v8/renderscript/RSDriverException;

    const-string v4, "Failed to create FieldID"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_44
    new-instance v0, Landroid/support/v8/renderscript/Script$FieldID;

    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v2, v3, p0, p1}, Landroid/support/v8/renderscript/Script$FieldID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V

    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    goto :goto_21
.end method

.method protected createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
    .registers 12

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Script$KernelID;

    if-eqz v0, :cond_c

    move-object v6, v0

    :goto_b
    return-object v6

    :cond_c
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    new-instance v0, Landroid/support/v8/renderscript/Script$KernelID;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Script$KernelID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkCreateKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    :cond_2a
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v0

    goto :goto_b

    :cond_31
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptKernelIDCreate(III)I

    move-result v1

    if-nez v1, :cond_47

    new-instance v2, Landroid/support/v8/renderscript/RSDriverException;

    const-string v3, "Failed to create KernelID"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_47
    new-instance v0, Landroid/support/v8/renderscript/Script$KernelID;

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Script$KernelID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v0

    goto :goto_b
.end method

.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .registers 11

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    :goto_9
    return-void

    :cond_a
    if-nez p2, :cond_16

    if-nez p3, :cond_16

    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v3, 0x0

    if-eqz p2, :cond_1f

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    :cond_1f
    const/4 v4, 0x0

    if-eqz p3, :cond_28

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    :cond_28
    const/4 v5, 0x0

    if-eqz p4, :cond_2f

    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    :cond_2f
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEach(IIII[B)V

    goto :goto_9
.end method

.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .registers 18

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    :goto_10
    return-void

    :cond_11
    if-nez p2, :cond_1d

    if-nez p3, :cond_1d

    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-nez p5, :cond_23

    invoke-virtual/range {p0 .. p4}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto :goto_10

    :cond_23
    const/4 v3, 0x0

    if-eqz p2, :cond_2c

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    :cond_2c
    const/4 v4, 0x0

    if-eqz p3, :cond_35

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    :cond_35
    const/4 v5, 0x0

    if-eqz p4, :cond_3c

    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    :cond_3c
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    #getter for: Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$000(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v6

    #getter for: Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$100(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v7

    #getter for: Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$200(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v8

    #getter for: Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$300(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v9

    #getter for: Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$400(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v10

    #getter for: Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I
    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$500(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v11

    move v2, p1

    invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEachClipped(IIII[BIIIIII)V

    goto :goto_10
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Script;->getNObj()Landroid/renderscript/Script;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Script;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    return-object v0
.end method

.method protected invoke(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkInvoke(I)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvoke(II)V

    goto :goto_9
.end method

.method protected invoke(ILandroid/support/v8/renderscript/FieldPacker;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkInvoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    :goto_9
    return-void

    :cond_a
    if-eqz p2, :cond_1c

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvokeV(II[B)V

    goto :goto_9

    :cond_1c
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvoke(II)V

    goto :goto_9
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetTimeZone(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    :try_start_f
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetTimeZone(I[B)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_20} :catch_21

    goto :goto_9

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ID)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarD(IID)V

    goto :goto_9
.end method

.method public setVar(IF)V
    .registers 5

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IF)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarF(IIF)V

    goto :goto_9
.end method

.method public setVar(II)V
    .registers 5

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(II)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarI(III)V

    goto :goto_9
.end method

.method public setVar(IJ)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IJ)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarJ(IIJ)V

    goto :goto_9
.end method

.method public setVar(ILandroid/support/v8/renderscript/BaseObj;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/BaseObj;)V

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-nez p2, :cond_19

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarObj(III)V

    goto :goto_9

    :cond_19
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    goto :goto_15
.end method

.method public setVar(ILandroid/support/v8/renderscript/FieldPacker;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarV(II[B)V

    goto :goto_9
.end method

.method public setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    .registers 11

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v2}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    move v2, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarVE(II[BI[I)V

    goto :goto_9
.end method

.method public setVar(IZ)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IZ)V

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarI(III)V

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method
