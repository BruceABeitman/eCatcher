.class public Landroid/support/v8/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"
.field private mDestroyed:Z
.field private mID:I
.field  mRS:Landroid/support/v8/renderscript/RenderScript;
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iput-object p2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
iput p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z
return-void
.end method
.method  checkValid()V
.registers 3
iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
if-nez v0, :cond_12
invoke-virtual {p0}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Invalid object."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
return-void
.end method
.method public declared-synchronized destroy()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z
if-eqz v0, :cond_10
new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v1, "Object already destroyed."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_d
move-exception v0
monitor-exit p0
throw v0
:cond_10
const/4 v0, 0x1
:try_start_11
iput-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z
iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget v1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nObjDestroy(I)V
:try_end_1a
.catchall {:try_start_11 .. :try_end_1a} :catchall_d
monitor-exit p0
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_11
move v1, v2
goto :goto_4
:cond_11
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/BaseObj;
iget v3, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
iget v4, v0, Landroid/support/v8/renderscript/BaseObj;->mID:I
if-eq v3, v4, :cond_4
move v1, v2
goto :goto_4
.end method
.method protected finalize()V
.registers 3
iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z
if-nez v0, :cond_20
iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->isAlive()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget v1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nObjDestroy(I)V
:cond_17
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
const/4 v0, 0x0
iput v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z
:cond_20
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
.end method
.method  getID(Landroid/support/v8/renderscript/RenderScript;)I
.registers 5
iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v1, :cond_1b
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-virtual {p0}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;
move-result-object v1
if-eqz v1, :cond_1b
invoke-virtual {p0}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;
move-result-object v1
invoke-virtual {v1}, Landroid/renderscript/BaseObj;->hashCode()I
move-result v1
:goto_1a
return v1
:cond_1b
iget-boolean v1, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z
if-eqz v1, :cond_27
new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v2, "using a destroyed object."
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_27
iget v1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
if-nez v1, :cond_33
new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v2, "Internal error: Object id 0."
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_33
if-eqz p1, :cond_41
iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;
if-eq p1, v1, :cond_41
new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v2, "using object with mismatched context."
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_41
iget v1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
goto :goto_1a
.end method
.method  getNObj()Landroid/renderscript/BaseObj;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
return v0
.end method
.method  setID(I)V
.registers 4
iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
if-eqz v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v1, "Internal Error, reset of object ID."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I
return-void
.end method