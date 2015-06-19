.class public final Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
.super Ljava/lang/Object;
.source "ScriptGroupThunker.java"
.field  bN:Landroid/renderscript/ScriptGroup$Builder;
.field  mRS:Landroid/support/v8/renderscript/RenderScript;
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;
iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
new-instance v1, Landroid/renderscript/ScriptGroup$Builder;
iget-object v2, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-direct {v1, v2}, Landroid/renderscript/ScriptGroup$Builder;-><init>(Landroid/renderscript/RenderScript;)V
iput-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;
return-void
.end method
.method public addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
.registers 9
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/TypeThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;
invoke-virtual {v0}, Landroid/support/v8/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;
move-result-object v2
iget-object v3, p2, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
iget-object v4, p3, Landroid/support/v8/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;
invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/ScriptGroup$Builder;->addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
return-object p0
.end method
.method public addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
.registers 9
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/TypeThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;
invoke-virtual {v0}, Landroid/support/v8/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;
move-result-object v2
iget-object v3, p2, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
iget-object v4, p3, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/ScriptGroup$Builder;->addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
return-object p0
.end method
.method public addKernel(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;
iget-object v1, p1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
invoke-virtual {v0, v1}, Landroid/renderscript/ScriptGroup$Builder;->addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
return-object p0
.end method
.method public create()Landroid/support/v8/renderscript/ScriptGroupThunker;
.registers 4
new-instance v0, Landroid/support/v8/renderscript/ScriptGroupThunker;
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {v0, v1, v2}, Landroid/support/v8/renderscript/ScriptGroupThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;
invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Builder;->create()Landroid/renderscript/ScriptGroup;
move-result-object v1
iput-object v1, v0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;
return-object v0
.end method