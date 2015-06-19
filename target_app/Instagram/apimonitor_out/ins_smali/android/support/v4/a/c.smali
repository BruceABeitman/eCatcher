.class public Landroid/support/v4/a/c;
.super Ljava/lang/Object;
.source "Loader.java"
.field  f:I
.field  g:Landroid/support/v4/a/d;
.field  h:Landroid/content/Context;
.field  i:Z
.field  j:Z
.field  k:Z
.field  l:Z
.field  m:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Landroid/support/v4/a/c;->i:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->j:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/a/c;->k:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->l:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->m:Z
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/a/c;->h:Landroid/content/Context;
return-void
.end method
.method public static b(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {p0, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 1
return-void
.end method
.method public final a(ILandroid/support/v4/a/d;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "There is already a listener registered"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p2, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
iput p1, p0, Landroid/support/v4/a/c;->f:I
return-void
.end method
.method public final a(Landroid/support/v4/a/d;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No listener register"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
if-eq v0, p1, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Attempting to unregister the wrong listener"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
return-void
.end method
.method public a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
invoke-interface {v0, p0, p1}, Landroid/support/v4/a/d;->a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
:cond_9
return-void
.end method
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mId="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/a/c;->f:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mListener="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/d;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
iget-boolean v0, p0, Landroid/support/v4/a/c;->i:Z
if-nez v0, :cond_23
iget-boolean v0, p0, Landroid/support/v4/a/c;->l:Z
if-nez v0, :cond_23
iget-boolean v0, p0, Landroid/support/v4/a/c;->m:Z
if-eqz v0, :cond_44
:cond_23
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/a/c;->i:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mContentChanged="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/a/c;->l:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mProcessingChange="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/a/c;->m:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
:cond_44
iget-boolean v0, p0, Landroid/support/v4/a/c;->j:Z
if-nez v0, :cond_4c
iget-boolean v0, p0, Landroid/support/v4/a/c;->k:Z
if-eqz v0, :cond_63
:cond_4c
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mAbandoned="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/a/c;->j:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mReset="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/a/c;->k:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
:cond_63
return-void
.end method
.method public final f()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v4/a/c;->h:Landroid/content/Context;
return-object v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Landroid/support/v4/a/c;->f:I
return v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/a/c;->i:Z
return v0
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/a/c;->j:Z
return v0
.end method
.method public final j()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/a/c;->k:Z
return v0
.end method
.method public final k()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/a/c;->i:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->k:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->j:Z
invoke-virtual {p0}, Landroid/support/v4/a/c;->l()V
return-void
.end method
.method protected l()V
.registers 1
return-void
.end method
.method public final m()V
.registers 1
invoke-virtual {p0}, Landroid/support/v4/a/c;->a()V
return-void
.end method
.method public final n()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/a/c;->i:Z
invoke-virtual {p0}, Landroid/support/v4/a/c;->o()V
return-void
.end method
.method protected o()V
.registers 1
return-void
.end method
.method public final p()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/a/c;->j:Z
return-void
.end method
.method public final q()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v4/a/c;->r()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/a/c;->k:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->i:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->j:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->l:Z
iput-boolean v1, p0, Landroid/support/v4/a/c;->m:Z
return-void
.end method
.method protected r()V
.registers 1
return-void
.end method
.method public final s()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/a/c;->m:Z
return-void
.end method
.method public final t()V
.registers 2
iget-boolean v0, p0, Landroid/support/v4/a/c;->m:Z
if-eqz v0, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/a/c;->l:Z
:cond_7
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {p0, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, " id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/a/c;->f:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method