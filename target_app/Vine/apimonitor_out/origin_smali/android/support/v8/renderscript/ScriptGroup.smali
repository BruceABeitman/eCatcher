.class public Landroid/support/v8/renderscript/ScriptGroup;
.super Landroid/support/v8/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ScriptGroup$Builder;,
        Landroid/support/v8/renderscript/ScriptGroup$Node;,
        Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;,
        Landroid/support/v8/renderscript/ScriptGroup$IO;
    }
.end annotation


# instance fields
.field mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

.field mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupExecute(I)V

    return-void
.end method

.method public setInput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v4, p2}, Landroid/support/v8/renderscript/RenderScript;->safeID(Landroid/support/v8/renderscript/BaseObj;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupSetInput(III)V

    return-void

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v4, p2}, Landroid/support/v8/renderscript/RenderScript;->safeID(Landroid/support/v8/renderscript/BaseObj;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupSetOutput(III)V

    return-void

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
