.class final Landroid/support/v4/app/aq;
.super Ljava/lang/Object;
.source "LoaderManager.java"
.implements Landroid/support/v4/a/d;
.field final a:I
.field final b:Landroid/os/Bundle;
.field  c:Landroid/support/v4/app/ao;
.field  d:Landroid/support/v4/a/c;
.field  e:Z
.field  f:Z
.field  g:Ljava/lang/Object;
.field  h:Z
.field  i:Z
.field  j:Z
.field  k:Z
.field  l:Z
.field  m:Z
.field  n:Landroid/support/v4/app/aq;
.field final synthetic o:Landroid/support/v4/app/ap;
.method public constructor <init>(Landroid/support/v4/app/ap;ILandroid/os/Bundle;Landroid/support/v4/app/ao;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Landroid/support/v4/app/aq;->a:I
iput-object p3, p0, Landroid/support/v4/app/aq;->b:Landroid/os/Bundle;
iput-object p4, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
return-void
.end method
.method final a()V
.registers 4
const/4 v2, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/aq;->i:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/aq;->j:Z
if-eqz v0, :cond_c
iput-boolean v2, p0, Landroid/support/v4/app/aq;->h:Z
:cond_b
:goto_b
return-void
:cond_c
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
if-nez v0, :cond_b
iput-boolean v2, p0, Landroid/support/v4/app/aq;->h:Z
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "  Starting: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_20
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
if-nez v0, :cond_34
iget-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
if-eqz v0, :cond_34
iget-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
iget v1, p0, Landroid/support/v4/app/aq;->a:I
iget-object v1, p0, Landroid/support/v4/app/aq;->b:Landroid/os/Bundle;
invoke-interface {v0, v1}, Landroid/support/v4/app/ao;->a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
:cond_34
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z
move-result v0
if-eqz v0, :cond_6b
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-nez v0, :cond_6b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6b
iget-boolean v0, p0, Landroid/support/v4/app/aq;->m:Z
if-nez v0, :cond_78
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
iget v1, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v0, v1, p0}, Landroid/support/v4/a/c;->a(ILandroid/support/v4/a/d;)V
iput-boolean v2, p0, Landroid/support/v4/app/aq;->m:Z
:cond_78
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0}, Landroid/support/v4/a/c;->k()V
goto :goto_b
.end method
.method public final a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
.registers 7
const/4 v3, 0x0
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "onLoadComplete: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_f
iget-boolean v0, p0, Landroid/support/v4/app/aq;->l:Z
if-eqz v0, :cond_16
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
:cond_15
:goto_15
return-void
:cond_16
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
iget v1, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;
move-result-object v0
if-eq v0, p0, :cond_25
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
goto :goto_15
:cond_25
iget-object v0, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
if-eqz v0, :cond_4b
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_37
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Switching to pending loader: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_37
iput-object v3, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
iget-object v1, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v1, v1, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
iget v2, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v1, v2, v3}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V
invoke-virtual {p0}, Landroid/support/v4/app/aq;->f()V
iget-object v1, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
invoke-virtual {v1, v0}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/aq;)V
goto :goto_15
:cond_4b
iget-object v0, p0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
if-ne v0, p2, :cond_53
iget-boolean v0, p0, Landroid/support/v4/app/aq;->e:Z
if-nez v0, :cond_5f
:cond_53
iput-object p2, p0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/aq;->e:Z
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
if-eqz v0, :cond_5f
invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/aq;->b(Landroid/support/v4/a/c;Ljava/lang/Object;)V
:cond_5f
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
iget v1, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
if-eqz v0, :cond_7e
if-eq v0, p0, :cond_7e
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v4/app/aq;->f:Z
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
iget v1, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->b(I)V
:cond_7e
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/u;->h()V
goto/16 :goto_15
.end method
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 8
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mId="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mArgs="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->b:Landroid/os/Bundle;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mCallbacks="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mLoader="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
if-eqz v0, :cond_4d
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/a/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_4d
iget-boolean v0, p0, Landroid/support/v4/app/aq;->e:Z
if-nez v0, :cond_55
iget-boolean v0, p0, Landroid/support/v4/app/aq;->f:Z
if-eqz v0, :cond_79
:cond_55
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mHaveData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->e:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, "  mDeliveredData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->f:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_79
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mReportNextStart="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->k:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mDestroyed="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->l:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mRetaining="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->i:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mRetainingStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->j:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mListenerRegistered="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/aq;->m:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-object v0, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
if-eqz v0, :cond_e9
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Pending Loader "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
const-string v0, ":"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aq;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_e9
return-void
.end method
.method final b()V
.registers 3
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "  Retaining: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_e
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/aq;->i:Z
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
iput-boolean v0, p0, Landroid/support/v4/app/aq;->j:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
return-void
.end method
.method final b(Landroid/support/v4/a/c;Ljava/lang/Object;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
if-eqz v0, :cond_56
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v1, v1, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v1, :cond_69
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v0
iget-object v0, v0, Landroid/support/v4/app/u;->u:Ljava/lang/String;
iget-object v1, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v1, v1, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v1}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v1
const-string v2, "onLoadFinished"
iput-object v2, v1, Landroid/support/v4/app/u;->u:Ljava/lang/String;
move-object v1, v0
:goto_22
:try_start_22
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_3e
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "  onLoadFinished in "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ": "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Landroid/support/v4/a/c;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3e
iget-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
:try_end_43
.catchall {:try_start_22 .. :try_end_43} :catchall_57
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v0, :cond_53
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v0
iput-object v1, v0, Landroid/support/v4/app/u;->u:Ljava/lang/String;
:cond_53
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/aq;->f:Z
:cond_56
return-void
:catchall_57
move-exception v0
iget-object v2, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v2, v2, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v2, :cond_68
iget-object v2, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v2, v2, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v2}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v2
iput-object v1, v2, Landroid/support/v4/app/u;->u:Ljava/lang/String;
:cond_68
throw v0
:cond_69
move-object v1, v0
goto :goto_22
.end method
.method final c()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/aq;->i:Z
if-eqz v0, :cond_22
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "  Finished Retaining: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_12
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/aq;->i:Z
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
iget-boolean v1, p0, Landroid/support/v4/app/aq;->j:Z
if-eq v0, v1, :cond_22
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
if-nez v0, :cond_22
invoke-virtual {p0}, Landroid/support/v4/app/aq;->e()V
:cond_22
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
if-eqz v0, :cond_35
iget-boolean v0, p0, Landroid/support/v4/app/aq;->e:Z
if-eqz v0, :cond_35
iget-boolean v0, p0, Landroid/support/v4/app/aq;->k:Z
if-nez v0, :cond_35
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
iget-object v1, p0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/aq;->b(Landroid/support/v4/a/c;Ljava/lang/Object;)V
:cond_35
return-void
.end method
.method final d()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/aq;->h:Z
if-eqz v0, :cond_16
iget-boolean v0, p0, Landroid/support/v4/app/aq;->k:Z
if-eqz v0, :cond_16
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/aq;->k:Z
iget-boolean v0, p0, Landroid/support/v4/app/aq;->e:Z
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
iget-object v1, p0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/aq;->b(Landroid/support/v4/a/c;Ljava/lang/Object;)V
:cond_16
return-void
.end method
.method final e()V
.registers 4
const/4 v2, 0x0
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "  Stopping: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_f
iput-boolean v2, p0, Landroid/support/v4/app/aq;->h:Z
iget-boolean v0, p0, Landroid/support/v4/app/aq;->i:Z
if-nez v0, :cond_29
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
if-eqz v0, :cond_29
iget-boolean v0, p0, Landroid/support/v4/app/aq;->m:Z
if-eqz v0, :cond_29
iput-boolean v2, p0, Landroid/support/v4/app/aq;->m:Z
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0, p0}, Landroid/support/v4/a/c;->a(Landroid/support/v4/a/d;)V
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0}, Landroid/support/v4/a/c;->n()V
:cond_29
return-void
.end method
.method final f()V
.registers 6
const/4 v2, 0x0
const/4 v4, 0x0
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "  Destroying: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_10
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/aq;->l:Z
iget-boolean v0, p0, Landroid/support/v4/app/aq;->f:Z
iput-boolean v4, p0, Landroid/support/v4/app/aq;->f:Z
iget-object v1, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
if-eqz v1, :cond_64
iget-object v1, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
if-eqz v1, :cond_64
iget-boolean v1, p0, Landroid/support/v4/app/aq;->e:Z
if-eqz v1, :cond_64
if-eqz v0, :cond_64
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_33
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "  Reseting: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_33
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v0, :cond_9a
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v0
iget-object v0, v0, Landroid/support/v4/app/u;->u:Ljava/lang/String;
iget-object v1, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v1, v1, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v1}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v1
const-string v3, "onLoaderReset"
iput-object v3, v1, Landroid/support/v4/app/u;->u:Ljava/lang/String;
move-object v1, v0
:try_start_50
:goto_50
iget-object v0, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
:try_end_54
.catchall {:try_start_50 .. :try_end_54} :catchall_88
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v0, :cond_64
iget-object v0, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v0, v0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v0
iput-object v1, v0, Landroid/support/v4/app/u;->u:Ljava/lang/String;
:cond_64
iput-object v2, p0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
iput-object v2, p0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
iput-boolean v4, p0, Landroid/support/v4/app/aq;->e:Z
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
if-eqz v0, :cond_7e
iget-boolean v0, p0, Landroid/support/v4/app/aq;->m:Z
if-eqz v0, :cond_79
iput-boolean v4, p0, Landroid/support/v4/app/aq;->m:Z
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0, p0}, Landroid/support/v4/a/c;->a(Landroid/support/v4/a/d;)V
:cond_79
iget-object v0, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v0}, Landroid/support/v4/a/c;->q()V
:cond_7e
iget-object v0, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
if-eqz v0, :cond_87
iget-object v0, p0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
:cond_87
return-void
:catchall_88
move-exception v0
iget-object v2, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v2, v2, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v2, :cond_99
iget-object v2, p0, Landroid/support/v4/app/aq;->o:Landroid/support/v4/app/ap;
iget-object v2, v2, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v2}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v2
iput-object v1, v2, Landroid/support/v4/app/u;->u:Ljava/lang/String;
:cond_99
throw v0
:cond_9a
move-object v1, v2
goto :goto_50
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "LoaderInfo{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, " : "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method