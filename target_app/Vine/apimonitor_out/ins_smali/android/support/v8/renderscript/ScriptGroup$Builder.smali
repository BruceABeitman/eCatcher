.class public final Landroid/support/v8/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"
.field private mKernelCount:I
.field private mLines:Ljava/util/ArrayList;
.field private mNodes:Ljava/util/ArrayList;
.field private mRS:Landroid/support/v8/renderscript/RenderScript;
.field private mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v0, :cond_1c
new-instance v0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
invoke-direct {v0, p1}, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V
iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
:cond_1c
iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
return-void
.end method
.method private findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_29
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$Node;
const/4 v1, 0x0
:goto_12
iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_26
iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
if-ne p1, v3, :cond_23
:goto_22
return-object v2
:cond_23
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_29
const/4 v2, 0x0
goto :goto_22
.end method
.method private findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
.registers 4
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v0, v1, :cond_21
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;
iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mScript:Landroid/support/v8/renderscript/Script;
if-ne p1, v1, :cond_1e
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;
:goto_1d
return-object v1
:cond_1e
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_21
const/4 v1, 0x0
goto :goto_1d
.end method
.method private mergeDAGs(II)V
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v0, v1, :cond_22
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;
iget v1, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
if-ne v1, p2, :cond_1f
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;
iput p1, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_22
return-void
.end method
.method private validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V
.registers 8
const/4 v1, 0x0
:goto_1
iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_4e
iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
if-eqz v3, :cond_2e
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
iget-object v3, v3, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2b
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "Loops in group not allowed."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_2b
invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V
:cond_2e
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;
if-eqz v3, :cond_4b
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;
iget-object v3, v3, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_48
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "Loops in group not allowed."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_48
invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V
:cond_4b
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_4e
return-void
.end method
.method private validateDAG()V
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_3a
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$Node;
iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_37
iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_32
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v4, 0x1
if-le v3, v4, :cond_32
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "Groups cannot contain unconnected scripts"
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_32
add-int/lit8 v3, v0, 0x1
invoke-direct {p0, v2, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V
:cond_37
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_3a
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v8/renderscript/ScriptGroup$Node;
iget v1, v3, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
const/4 v0, 0x0
:goto_46
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_65
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v8/renderscript/ScriptGroup$Node;
iget v3, v3, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
if-eq v3, v1, :cond_62
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "Multiple DAGs in group not allowed."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_62
add-int/lit8 v0, v0, 0x1
goto :goto_46
:cond_65
return-void
.end method
.method private validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V
.registers 7
iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
if-eqz v3, :cond_e
iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
if-eq v3, p2, :cond_e
iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
invoke-direct {p0, v3, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V
:cond_d
return-void
:cond_e
iput p2, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
const/4 v1, 0x0
:goto_11
iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_d
iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
if-eqz v3, :cond_30
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
iget-object v3, v3, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v2
invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V
:cond_30
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;
if-eqz v3, :cond_3f
iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;
iget-object v3, v3, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v2
invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V
:cond_3f
add-int/lit8 v1, v1, 0x1
goto :goto_11
.end method
.method public addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroup$Builder;
.registers 9
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
if-eqz v3, :cond_a
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
invoke-virtual {v3, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
:goto_9
return-object p0
:cond_a
invoke-direct {p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v1
if-nez v1, :cond_18
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "From script not found."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_18
iget-object v3, p3, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v2
if-nez v2, :cond_28
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "To script not found."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_28
new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
invoke-direct {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)V
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
new-instance v4, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
invoke-direct {v4, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)V
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v3, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0, v1, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V
goto :goto_9
.end method
.method public addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Builder;
.registers 9
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
if-eqz v3, :cond_a
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
invoke-virtual {v3, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
:goto_9
return-object p0
:cond_a
invoke-direct {p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v1
if-nez v1, :cond_18
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "From script not found."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_18
invoke-direct {p0, p3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v2
if-nez v2, :cond_26
new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v4, "To script not found."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_26
new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
invoke-direct {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)V
iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
new-instance v4, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
invoke-direct {v4, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)V
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v3, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0, v1, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V
goto :goto_9
.end method
.method public addKernel(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Builder;
.registers 5
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
if-eqz v1, :cond_a
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->addKernel(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
:cond_9
:goto_9
return-object p0
:cond_a
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-eqz v1, :cond_1a
new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v2, "Kernels may not be added once connections exist."
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1a
invoke-direct {p0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v1
if-nez v1, :cond_9
iget v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I
iget-object v1, p1, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {p0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
move-result-object v0
if-nez v0, :cond_3a
new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Node;
iget-object v1, p1, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Node;-><init>(Landroid/support/v8/renderscript/Script;)V
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_3a
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_9
.end method
.method public create()Landroid/support/v8/renderscript/ScriptGroup;
.registers 23
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
if-eqz v1, :cond_f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mT:Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
invoke-virtual {v1}, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->create()Landroid/support/v8/renderscript/ScriptGroupThunker;
move-result-object v20
:cond_e
return-object v20
:cond_f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_23
new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v21, "Empty script groups are not allowed"
move-object/from16 v0, v21
invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_23
const/4 v8, 0x0
:goto_24
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v8, v1, :cond_41
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;
const/16 v21, 0x0
move/from16 v0, v21
iput v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I
add-int/lit8 v8, v8, 0x1
goto :goto_24
:cond_41
invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAG()V
new-instance v16, Ljava/util/ArrayList;
invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
new-instance v19, Ljava/util/ArrayList;
invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I
new-array v2, v1, [I
const/4 v14, 0x0
const/4 v8, 0x0
:goto_56
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v8, v1, :cond_f2
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v18
check-cast v18, Landroid/support/v8/renderscript/ScriptGroup$Node;
const/4 v9, 0x0
:goto_6b
move-object/from16 v0, v18
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v9, v1, :cond_ee
move-object/from16 v0, v18
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;
invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/support/v8/renderscript/Script$KernelID;
add-int/lit8 v15, v14, 0x1
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v0, v17
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
aput v1, v2, v14
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v10, 0x0
:goto_90
move-object/from16 v0, v18
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v10, v1, :cond_ae
move-object/from16 v0, v18
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;
invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
move-object/from16 v0, v17
if-ne v1, v0, :cond_ab
const/4 v11, 0x1
:cond_ab
add-int/lit8 v10, v10, 0x1
goto :goto_90
:cond_ae
const/4 v10, 0x0
:goto_af
move-object/from16 v0, v18
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v10, v1, :cond_cd
move-object/from16 v0, v18
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;
invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;
move-object/from16 v0, v17
if-ne v1, v0, :cond_ca
const/4 v12, 0x1
:cond_ca
add-int/lit8 v10, v10, 0x1
goto :goto_af
:cond_cd
if-nez v11, :cond_db
new-instance v1, Landroid/support/v8/renderscript/ScriptGroup$IO;
move-object/from16 v0, v17
invoke-direct {v1, v0}, Landroid/support/v8/renderscript/ScriptGroup$IO;-><init>(Landroid/support/v8/renderscript/Script$KernelID;)V
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_db
if-nez v12, :cond_e9
new-instance v1, Landroid/support/v8/renderscript/ScriptGroup$IO;
move-object/from16 v0, v17
invoke-direct {v1, v0}, Landroid/support/v8/renderscript/ScriptGroup$IO;-><init>(Landroid/support/v8/renderscript/Script$KernelID;)V
move-object/from16 v0, v19
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_e9
add-int/lit8 v9, v9, 0x1
move v14, v15
goto/16 :goto_6b
:cond_ee
add-int/lit8 v8, v8, 0x1
goto/16 :goto_56
:cond_f2
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I
if-eq v14, v1, :cond_102
new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v21, "Count mismatch, should not happen."
move-object/from16 v0, v21
invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_102
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v3, v1, [I
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v4, v1, [I
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v5, v1, [I
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v6, v1, [I
const/4 v8, 0x0
:goto_12b
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v8, v1, :cond_18a
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;
invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
iget-object v1, v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
aput v1, v3, v8
iget-object v1, v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
if-eqz v1, :cond_163
iget-object v1, v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
aput v1, v4, v8
:cond_163
iget-object v1, v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;
if-eqz v1, :cond_177
iget-object v1, v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
aput v1, v5, v8
:cond_177
iget-object v1, v7, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/support/v8/renderscript/Type;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
aput v1, v6, v8
add-int/lit8 v8, v8, 0x1
goto :goto_12b
:cond_18a
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupCreate([I[I[I[I[I)I
move-result v13
if-nez v13, :cond_19e
new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v21, "Object creation error, should not happen."
move-object/from16 v0, v21
invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_19e
new-instance v20, Landroid/support/v8/renderscript/ScriptGroup;
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v0, v20
invoke-direct {v0, v13, v1}, Landroid/support/v8/renderscript/ScriptGroup;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v1, v1, [Landroid/support/v8/renderscript/ScriptGroup$IO;
move-object/from16 v0, v20
iput-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;
const/4 v8, 0x0
:goto_1b4
invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v8, v1, :cond_1cd
move-object/from16 v0, v20
iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;
move-object/from16 v21, v0
move-object/from16 v0, v19
invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$IO;
aput-object v1, v21, v8
add-int/lit8 v8, v8, 0x1
goto :goto_1b4
:cond_1cd
invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v1, v1, [Landroid/support/v8/renderscript/ScriptGroup$IO;
move-object/from16 v0, v20
iput-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;
const/4 v8, 0x0
:goto_1d8
invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v8, v1, :cond_e
move-object/from16 v0, v20
iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;
move-object/from16 v21, v0
move-object/from16 v0, v16
invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$IO;
aput-object v1, v21, v8
add-int/lit8 v8, v8, 0x1
goto :goto_1d8
.end method