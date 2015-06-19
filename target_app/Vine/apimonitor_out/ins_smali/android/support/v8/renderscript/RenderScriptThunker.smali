.class  Landroid/support/v8/renderscript/RenderScriptThunker;
.super Landroid/support/v8/renderscript/RenderScript;
.source "RenderScriptThunker.java"
.field  mN:Landroid/renderscript/RenderScript;
.method constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
sput-boolean v0, Landroid/support/v8/renderscript/RenderScriptThunker;->isNative:Z
return-void
.end method
.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
.registers 4
new-instance v0, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RenderScriptThunker;-><init>(Landroid/content/Context;)V
invoke-static {p0, p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
move-result-object v1
iput-object v1, v0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
return-object v0
.end method
.method public contextDump()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/renderscript/RenderScript;->contextDump()V
return-void
.end method
.method public destroy()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
return-void
.end method
.method public finish()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/renderscript/RenderScript;->finish()V
return-void
.end method
.method public setPriority(Landroid/support/v8/renderscript/RenderScript$Priority;)V
.registers 4
sget-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->LOW:Landroid/support/v8/renderscript/RenderScript$Priority;
if-ne p1, v0, :cond_b
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
sget-object v1, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;
invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V
:cond_b
sget-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;
if-ne p1, v0, :cond_16
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
sget-object v1, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;
invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V
:cond_16
return-void
.end method
.method  validate()V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
if-nez v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v1, "Calling RS with no Context active."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method