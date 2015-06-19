.class final Landroid/support/v4/app/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/content/m;
.field final a:I
.field final b:Landroid/os/Bundle;
.field  c:Landroid/support/v4/app/z;
.field  d:Landroid/support/v4/content/k;
.field  e:Z
.field  f:Z
.field  g:Ljava/lang/Object;
.field  h:Z
.field  i:Z
.field  j:Z
.field  k:Z
.field  l:Z
.field  m:Z
.field  n:Landroid/support/v4/app/ab;
.field final synthetic o:Landroid/support/v4/app/aa;
.method public constructor <init>(Landroid/support/v4/app/aa;ILandroid/os/Bundle;Landroid/support/v4/app/z;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Landroid/support/v4/app/ab;->a:I
iput-object p3, p0, Landroid/support/v4/app/ab;->b:Landroid/os/Bundle;
iput-object p4, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
return-void
.end method
.method final a()V
.registers 5
const/4 v3, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/ab;->i:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/ab;->j:Z
if-eqz v0, :cond_c
iput-boolean v3, p0, Landroid/support/v4/app/ab;->h:Z
:cond_b
:goto_b
return-void
:cond_c
iget-boolean v0, p0, Landroid/support/v4/app/ab;->h:Z
if-nez v0, :cond_b
iput-boolean v3, p0, Landroid/support/v4/app/ab;->h:Z
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_2a
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Starting: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
if-nez v0, :cond_3e
iget-object v0, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
if-eqz v0, :cond_3e
iget-object v0, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
iget v1, p0, Landroid/support/v4/app/ab;->a:I
iget-object v2, p0, Landroid/support/v4/app/ab;->b:Landroid/os/Bundle;
invoke-interface {v0, v1, v2}, Landroid/support/v4/app/z;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
:cond_3e
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z
move-result v0
if-eqz v0, :cond_75
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-nez v0, :cond_75
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_75
iget-boolean v0, p0, Landroid/support/v4/app/ab;->m:Z
if-nez v0, :cond_82
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
iget v1, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/k;->a(ILandroid/support/v4/content/m;)V
iput-boolean v3, p0, Landroid/support/v4/app/ab;->m:Z
:cond_82
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0}, Landroid/support/v4/content/k;->l()V
goto :goto_b
.end method
.method public final a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x0
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_19
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "onLoadComplete: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_19
iget-boolean v0, p0, Landroid/support/v4/app/ab;->l:Z
if-eqz v0, :cond_29
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_28
const-string v0, "LoaderManager"
const-string v1, "  Ignoring load complete -- destroyed"
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_28
:goto_28
return-void
:cond_29
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
iget v1, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->a(I)Ljava/lang/Object;
move-result-object v0
if-eq v0, p0, :cond_41
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_28
const-string v0, "LoaderManager"
const-string v1, "  Ignoring load complete -- not active"
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_28
:cond_41
iget-object v0, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
if-eqz v0, :cond_71
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_5d
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  Switching to pending loader: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_5d
iput-object v4, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
iget-object v1, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v1, v1, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
iget v2, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v1, v2, v4}, Landroid/support/v4/c/n;->a(ILjava/lang/Object;)V
invoke-virtual {p0}, Landroid/support/v4/app/ab;->c()V
iget-object v1, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/ab;)V
goto :goto_28
:cond_71
iget-object v0, p0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;
if-ne v0, p2, :cond_79
iget-boolean v0, p0, Landroid/support/v4/app/ab;->e:Z
if-nez v0, :cond_85
:cond_79
iput-object p2, p0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ab;->e:Z
iget-boolean v0, p0, Landroid/support/v4/app/ab;->h:Z
if-eqz v0, :cond_85
invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/ab;->b(Landroid/support/v4/content/k;Ljava/lang/Object;)V
:cond_85
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
iget v1, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
if-eqz v0, :cond_a4
if-eq v0, p0, :cond_a4
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v4/app/ab;->f:Z
invoke-virtual {v0}, Landroid/support/v4/app/ab;->c()V
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
iget v1, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->b(I)V
:cond_a4
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_28
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()Z
move-result v0
if-nez v0, :cond_28
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->g()V
goto/16 :goto_28
.end method
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 8
:goto_0
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mId="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mArgs="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->b:Landroid/os/Bundle;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mCallbacks="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mLoader="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
if-eqz v0, :cond_4d
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_4d
iget-boolean v0, p0, Landroid/support/v4/app/ab;->e:Z
if-nez v0, :cond_55
iget-boolean v0, p0, Landroid/support/v4/app/ab;->f:Z
if-eqz v0, :cond_79
:cond_55
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mHaveData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->e:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, "  mDeliveredData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->f:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_79
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->h:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mReportNextStart="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->k:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mDestroyed="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->l:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mRetaining="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->i:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mRetainingStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->j:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mListenerRegistered="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/ab;->m:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-object v0, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
if-eqz v0, :cond_e8
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Pending Loader "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
const-string v0, ":"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object p0, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "  "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
goto/16 :goto_0
:cond_e8
return-void
.end method
.method final b()V
.registers 5
const/4 v3, 0x0
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_19
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Stopping: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_19
iput-boolean v3, p0, Landroid/support/v4/app/ab;->h:Z
iget-boolean v0, p0, Landroid/support/v4/app/ab;->i:Z
if-nez v0, :cond_33
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
if-eqz v0, :cond_33
iget-boolean v0, p0, Landroid/support/v4/app/ab;->m:Z
if-eqz v0, :cond_33
iput-boolean v3, p0, Landroid/support/v4/app/ab;->m:Z
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0, p0}, Landroid/support/v4/content/k;->a(Landroid/support/v4/content/m;)V
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0}, Landroid/support/v4/content/k;->n()V
:cond_33
return-void
.end method
.method final b(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 8
iget-object v0, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
if-eqz v0, :cond_69
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v1, v1, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v1, :cond_7a
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iget-object v0, v0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
iget-object v1, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v1, v1, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
const-string v2, "onLoadFinished"
iput-object v2, v1, Landroid/support/v4/app/t;->u:Ljava/lang/String;
move-object v1, v0
:try_start_1e
:goto_1e
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_53
const-string v0, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  onLoadFinished in "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const/16 v4, 0x40
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {p2, v3}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v4, "}"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_53
iget-object v0, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
invoke-interface {v0, p1, p2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
:try_end_58
.catchall {:try_start_1e .. :try_end_58} :catchall_6a
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_66
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iput-object v1, v0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
:cond_66
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ab;->f:Z
:cond_69
return-void
:catchall_6a
move-exception v0
iget-object v2, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v2, v2, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v2, :cond_79
iget-object v2, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v2, v2, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iput-object v1, v2, Landroid/support/v4/app/t;->u:Ljava/lang/String;
:cond_79
throw v0
:cond_7a
move-object v1, v0
goto :goto_1e
.end method
.method final c()V
.registers 6
const/4 v2, 0x0
const/4 v4, 0x0
:goto_2
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_1a
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "  Destroying: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ab;->l:Z
iget-boolean v0, p0, Landroid/support/v4/app/ab;->f:Z
iput-boolean v4, p0, Landroid/support/v4/app/ab;->f:Z
iget-object v1, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
if-eqz v1, :cond_75
iget-object v1, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
if-eqz v1, :cond_75
iget-boolean v1, p0, Landroid/support/v4/app/ab;->e:Z
if-eqz v1, :cond_75
if-eqz v0, :cond_75
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_47
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "  Reseting: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_47
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_a8
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iget-object v0, v0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
iget-object v1, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v1, v1, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
const-string v3, "onLoaderReset"
iput-object v3, v1, Landroid/support/v4/app/t;->u:Ljava/lang/String;
move-object v1, v0
:try_start_60
:goto_60
iget-object v0, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
iget-object v3, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-interface {v0, v3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/k;)V
:try_end_67
.catchall {:try_start_60 .. :try_end_67} :catchall_97
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_75
iget-object v0, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iput-object v1, v0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
:cond_75
iput-object v2, p0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
iput-object v2, p0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;
iput-boolean v4, p0, Landroid/support/v4/app/ab;->e:Z
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
if-eqz v0, :cond_8f
iget-boolean v0, p0, Landroid/support/v4/app/ab;->m:Z
if-eqz v0, :cond_8a
iput-boolean v4, p0, Landroid/support/v4/app/ab;->m:Z
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0, p0}, Landroid/support/v4/content/k;->a(Landroid/support/v4/content/m;)V
:cond_8a
iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v0}, Landroid/support/v4/content/k;->p()V
:cond_8f
iget-object v0, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
if-eqz v0, :cond_a7
iget-object p0, p0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
goto/16 :goto_2
:catchall_97
move-exception v0
iget-object v2, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v2, v2, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v2, :cond_a6
iget-object v2, p0, Landroid/support/v4/app/ab;->o:Landroid/support/v4/app/aa;
iget-object v2, v2, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iput-object v1, v2, Landroid/support/v4/app/t;->u:Ljava/lang/String;
:cond_a6
throw v0
:cond_a7
return-void
:cond_a8
move-object v1, v2
goto :goto_60
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
iget v1, p0, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, " : "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-static {v1, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method