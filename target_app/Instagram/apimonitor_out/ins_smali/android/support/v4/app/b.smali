.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/ag;
.source "BackStackRecord.java"
.implements Ljava/lang/Runnable;
.field final a:Landroid/support/v4/app/u;
.field  b:Landroid/support/v4/app/c;
.field  c:Landroid/support/v4/app/c;
.field  d:I
.field  e:I
.field  f:I
.field  g:I
.field  h:I
.field  i:I
.field  j:I
.field  k:Z
.field  l:Z
.field  m:Ljava/lang/String;
.field  n:Z
.field  o:I
.field  p:I
.field  q:Ljava/lang/CharSequence;
.field  r:I
.field  s:Ljava/lang/CharSequence;
.method public constructor <init>(Landroid/support/v4/app/u;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/ag;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/b;->l:Z
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/b;->o:I
iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
return-void
.end method
.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
.registers 8
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iput-object v0, p2, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;
if-eqz p3, :cond_3f
iget-object v0, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;
if-eqz v0, :cond_3d
iget-object v0, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;
invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3d
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can\'t change tag of fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": was "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " now "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3d
iput-object p3, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;
:cond_3f
if-eqz p1, :cond_78
iget v0, p2, Landroid/support/v4/app/Fragment;->G:I
if-eqz v0, :cond_74
iget v0, p2, Landroid/support/v4/app/Fragment;->G:I
if-eq v0, p1, :cond_74
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can\'t change container ID of fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": was "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p2, Landroid/support/v4/app/Fragment;->G:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " now "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_74
iput p1, p2, Landroid/support/v4/app/Fragment;->G:I
iput p1, p2, Landroid/support/v4/app/Fragment;->H:I
:cond_78
new-instance v0, Landroid/support/v4/app/c;
invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V
iput p4, v0, Landroid/support/v4/app/c;->c:I
iput-object p2, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V
return-void
.end method
.method private b(Z)I
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "commit already called"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-boolean v0, Landroid/support/v4/app/u;->a:Z
if-eqz v0, :cond_2b
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Commit: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
new-instance v0, Landroid/support/v4/c/b;
const-string v1, "FragmentManager"
invoke-direct {v0, v1}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v0, "  "
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V
:cond_2b
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/b;->n:Z
iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v0, p0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/b;)I
move-result v0
iput v0, p0, Landroid/support/v4/app/b;->o:I
:goto_3a
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/u;->a(Ljava/lang/Runnable;Z)V
iget v0, p0, Landroid/support/v4/app/b;->o:I
return v0
:cond_42
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/b;->o:I
goto :goto_3a
.end method
.method public final a()Landroid/support/v4/app/ag;
.registers 3
const v1, 0x10a0001
const/high16 v0, 0x10a
iput v0, p0, Landroid/support/v4/app/b;->e:I
iput v1, p0, Landroid/support/v4/app/b;->f:I
iput v0, p0, Landroid/support/v4/app/b;->g:I
iput v1, p0, Landroid/support/v4/app/b;->h:I
return-object p0
.end method
.method public final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
.registers 4
new-instance v0, Landroid/support/v4/app/c;
invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V
const/4 v1, 0x3
iput v1, v0, Landroid/support/v4/app/c;->c:I
iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V
return-object p0
.end method
.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/ag;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/b;->l:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/b;->k:Z
iput-object p1, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;
return-object p0
.end method
.method final a(I)V
.registers 7
iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z
if-nez v0, :cond_5
:cond_4
return-void
:cond_5
sget-boolean v0, Landroid/support/v4/app/u;->a:Z
if-eqz v0, :cond_1d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Bump nesting in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " by "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_1d
iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;
move-object v2, v0
:goto_20
if-eqz v2, :cond_4
iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_4b
iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v0, Landroid/support/v4/app/Fragment;->B:I
add-int/2addr v1, p1
iput v1, v0, Landroid/support/v4/app/Fragment;->B:I
sget-boolean v0, Landroid/support/v4/app/u;->a:Z
if-eqz v0, :cond_4b
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Bump nesting of "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " to "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v1, Landroid/support/v4/app/Fragment;->B:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_4b
iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_85
iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_58
if-ltz v1, :cond_85
iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget v3, v0, Landroid/support/v4/app/Fragment;->B:I
add-int/2addr v3, p1
iput v3, v0, Landroid/support/v4/app/Fragment;->B:I
sget-boolean v3, Landroid/support/v4/app/u;->a:Z
if-eqz v3, :cond_81
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bump nesting of "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " to "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v0, v0, Landroid/support/v4/app/Fragment;->B:I
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_81
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_58
:cond_85
iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;
move-object v2, v0
goto :goto_20
.end method
.method final a(Landroid/support/v4/app/c;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;
if-nez v0, :cond_1f
iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;
iput-object p1, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;
:goto_8
iget v0, p0, Landroid/support/v4/app/b;->e:I
iput v0, p1, Landroid/support/v4/app/c;->e:I
iget v0, p0, Landroid/support/v4/app/b;->f:I
iput v0, p1, Landroid/support/v4/app/c;->f:I
iget v0, p0, Landroid/support/v4/app/b;->g:I
iput v0, p1, Landroid/support/v4/app/c;->g:I
iget v0, p0, Landroid/support/v4/app/b;->h:I
iput v0, p1, Landroid/support/v4/app/c;->h:I
iget v0, p0, Landroid/support/v4/app/b;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/app/b;->d:I
return-void
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;
iput-object v0, p1, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;
iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;
iput-object p1, v0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;
iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;
goto :goto_8
.end method
.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
.registers 11
const/4 v1, 0x0
if-eqz p3, :cond_db
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mName="
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mIndex="
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->o:I
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mCommitted="
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
iget v0, p0, Landroid/support/v4/app/b;->i:I
if-eqz v0, :cond_47
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mTransition=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mTransitionStyle=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->j:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_47
iget v0, p0, Landroid/support/v4/app/b;->e:I
if-nez v0, :cond_4f
iget v0, p0, Landroid/support/v4/app/b;->f:I
if-eqz v0, :cond_6e
:cond_4f
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mEnterAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->e:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mExitAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->f:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_6e
iget v0, p0, Landroid/support/v4/app/b;->g:I
if-nez v0, :cond_76
iget v0, p0, Landroid/support/v4/app/b;->h:I
if-eqz v0, :cond_95
:cond_76
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mPopEnterAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->g:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mPopExitAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->h:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_95
iget v0, p0, Landroid/support/v4/app/b;->p:I
if-nez v0, :cond_9d
iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;
if-eqz v0, :cond_b8
:cond_9d
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mBreadCrumbTitleRes=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->p:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mBreadCrumbTitleText="
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_b8
iget v0, p0, Landroid/support/v4/app/b;->r:I
if-nez v0, :cond_c0
iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;
if-eqz v0, :cond_db
:cond_c0
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mBreadCrumbShortTitleRes=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/b;->r:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mBreadCrumbShortTitleText="
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_db
iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;
if-eqz v0, :cond_1f4
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Operations:"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "    "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;
move v2, v1
move-object v3, v0
:goto_fe
if-eqz v3, :cond_1f4
iget v0, v3, Landroid/support/v4/app/c;->c:I
packed-switch v0, :pswitch_data_1f6
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "cmd="
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, v3, Landroid/support/v4/app/c;->c:I
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_116
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "  Op #"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V
const-string v5, ": "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " "
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
if-eqz p3, :cond_183
iget v0, v3, Landroid/support/v4/app/c;->e:I
if-nez v0, :cond_13d
iget v0, v3, Landroid/support/v4/app/c;->f:I
if-eqz v0, :cond_15c
:cond_13d
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "enterAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, v3, Landroid/support/v4/app/c;->e:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " exitAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, v3, Landroid/support/v4/app/c;->f:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_15c
iget v0, v3, Landroid/support/v4/app/c;->g:I
if-nez v0, :cond_164
iget v0, v3, Landroid/support/v4/app/c;->h:I
if-eqz v0, :cond_183
:cond_164
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "popEnterAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, v3, Landroid/support/v4/app/c;->g:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " popExitAnim=#"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, v3, Landroid/support/v4/app/c;->h:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_183
iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_1ed
iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_1ed
move v0, v1
:goto_190
iget-object v5, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-ge v0, v5, :cond_1ed
invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_1d5
const-string v5, "Removed: "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_1a9
iget-object v5, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_190
:pswitch_1b5
const-string v0, "NULL"
goto/16 :goto_116
:pswitch_1b9
const-string v0, "ADD"
goto/16 :goto_116
:pswitch_1bd
const-string v0, "REPLACE"
goto/16 :goto_116
:pswitch_1c1
const-string v0, "REMOVE"
goto/16 :goto_116
:pswitch_1c5
const-string v0, "HIDE"
goto/16 :goto_116
:pswitch_1c9
const-string v0, "SHOW"
goto/16 :goto_116
:pswitch_1cd
const-string v0, "DETACH"
goto/16 :goto_116
:pswitch_1d1
const-string v0, "ATTACH"
goto/16 :goto_116
:cond_1d5
if-nez v0, :cond_1dc
const-string v5, "Removed:"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_1dc
invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "  #"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v5, ": "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_1a9
:cond_1ed
iget-object v3, v3, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_fe
:cond_1f4
return-void
nop
:pswitch_data_1f6
.packed-switch 0x0
:pswitch_1b5
:pswitch_1b9
:pswitch_1bd
:pswitch_1c1
:pswitch_1c5
:pswitch_1c9
:pswitch_1cd
:pswitch_1d1
.end packed-switch
.end method
.method public final a(Z)V
.registers 9
const/4 v6, -0x1
const/4 v2, 0x0
sget-boolean v0, Landroid/support/v4/app/u;->a:Z
if-eqz v0, :cond_21
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "popFromBackStack: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
new-instance v0, Landroid/support/v4/c/b;
const-string v1, "FragmentManager"
invoke-direct {v0, v1}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v0, "  "
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V
:cond_21
invoke-virtual {p0, v6}, Landroid/support/v4/app/b;->a(I)V
iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;
move-object v3, v0
:goto_27
if-eqz v3, :cond_f1
iget v0, v3, Landroid/support/v4/app/c;->c:I
packed-switch v0, :pswitch_data_114
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown cmd: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, v3, Landroid/support/v4/app/c;->c:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_45
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v3, Landroid/support/v4/app/c;->h:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v4, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v4}, Landroid/support/v4/app/u;->f(I)I
move-result v4
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V
:goto_58
:cond_58
iget-object v0, v3, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;
move-object v3, v0
goto :goto_27
:pswitch_5c
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_71
iget v1, v3, Landroid/support/v4/app/c;->h:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v4, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v4}, Landroid/support/v4/app/u;->f(I)I
move-result v4
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V
:cond_71
iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_58
move v1, v2
:goto_76
iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_58
iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/c;->g:I
iput v4, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_76
:pswitch_93
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v3, Landroid/support/v4/app/c;->g:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V
goto :goto_58
:pswitch_9f
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v3, Landroid/support/v4/app/c;->g:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v4, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v4}, Landroid/support/v4/app/u;->f(I)I
move-result v4
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/Fragment;II)V
goto :goto_58
:pswitch_b3
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v3, Landroid/support/v4/app/c;->h:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v4, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v4}, Landroid/support/v4/app/u;->f(I)I
move-result v4
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;II)V
goto :goto_58
:pswitch_c7
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v3, Landroid/support/v4/app/c;->g:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v4, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v4}, Landroid/support/v4/app/u;->f(I)I
move-result v4
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/u;->e(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_58
:pswitch_dc
iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v3, Landroid/support/v4/app/c;->g:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v4, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v4}, Landroid/support/v4/app/u;->f(I)I
move-result v4
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/u;->d(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_58
:cond_f1
if-eqz p1, :cond_105
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v1, v1, Landroid/support/v4/app/u;->n:I
iget v2, p0, Landroid/support/v4/app/b;->i:I
invoke-static {v2}, Landroid/support/v4/app/u;->f(I)I
move-result v2
iget v3, p0, Landroid/support/v4/app/b;->j:I
const/4 v4, 0x1
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/u;->a(IIIZ)V
:cond_105
iget v0, p0, Landroid/support/v4/app/b;->o:I
if-ltz v0, :cond_112
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v1, p0, Landroid/support/v4/app/b;->o:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->e(I)V
iput v6, p0, Landroid/support/v4/app/b;->o:I
:cond_112
return-void
nop
:pswitch_data_114
.packed-switch 0x1
:pswitch_45
:pswitch_5c
:pswitch_93
:pswitch_9f
:pswitch_b3
:pswitch_c7
:pswitch_dc
.end packed-switch
.end method
.method public final b()I
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/app/b;->b(Z)I
move-result v0
return v0
.end method
.method public final b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/b;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;
move-result-object v0
return-object v0
.end method
.method public final b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Must use non-zero containerViewId"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x2
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
.registers 4
new-instance v0, Landroid/support/v4/app/c;
invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V
const/4 v1, 0x6
iput v1, v0, Landroid/support/v4/app/c;->c:I
iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V
return-object p0
.end method
.method public final c()I
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/app/b;->b(Z)I
move-result v0
return v0
.end method
.method public final c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
.registers 4
new-instance v0, Landroid/support/v4/app/c;
invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V
const/4 v1, 0x7
iput v1, v0, Landroid/support/v4/app/c;->c:I
iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V
return-object p0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;
return-object v0
.end method
.method public final run()V
.registers 10
const/4 v8, 0x1
const/4 v2, 0x0
sget-boolean v0, Landroid/support/v4/app/u;->a:Z
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Run: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_10
iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z
if-eqz v0, :cond_20
iget v0, p0, Landroid/support/v4/app/b;->o:I
if-gez v0, :cond_20
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "addToBackStack() called after commit()"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
invoke-virtual {p0, v8}, Landroid/support/v4/app/b;->a(I)V
iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;
move-object v4, v0
:goto_26
if-eqz v4, :cond_13f
iget v0, v4, Landroid/support/v4/app/c;->c:I
packed-switch v0, :pswitch_data_156
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown cmd: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, v4, Landroid/support/v4/app/c;->c:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_44
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v4, Landroid/support/v4/app/c;->e:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V
:goto_4f
:cond_4f
iget-object v0, v4, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;
move-object v4, v0
goto :goto_26
:pswitch_53
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget-object v1, v1, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;
if-eqz v1, :cond_dc
move v1, v2
move-object v3, v0
:goto_5d
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget-object v0, v0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_dd
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget-object v0, v0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
sget-boolean v5, Landroid/support/v4/app/u;->a:Z
if-eqz v5, :cond_89
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "OP_REPLACE: adding="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " old="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_89
if-eqz v3, :cond_91
iget v5, v0, Landroid/support/v4/app/Fragment;->H:I
iget v6, v3, Landroid/support/v4/app/Fragment;->H:I
if-ne v5, v6, :cond_96
:cond_91
if-ne v0, v3, :cond_9a
const/4 v3, 0x0
iput-object v3, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
:cond_96
:goto_96
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_5d
:cond_9a
iget-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
if-nez v5, :cond_a5
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iput-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
:cond_a5
iget-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v5, v4, Landroid/support/v4/app/c;->f:I
iput v5, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-boolean v5, p0, Landroid/support/v4/app/b;->k:Z
if-eqz v5, :cond_d2
iget v5, v0, Landroid/support/v4/app/Fragment;->B:I
add-int/lit8 v5, v5, 0x1
iput v5, v0, Landroid/support/v4/app/Fragment;->B:I
sget-boolean v5, Landroid/support/v4/app/u;->a:Z
if-eqz v5, :cond_d2
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Bump nesting of "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " to "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v0, Landroid/support/v4/app/Fragment;->B:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_d2
iget-object v5, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v6, p0, Landroid/support/v4/app/b;->i:I
iget v7, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V
goto :goto_96
:cond_dc
move-object v3, v0
:cond_dd
if-eqz v3, :cond_4f
iget v0, v4, Landroid/support/v4/app/c;->e:I
iput v0, v3, Landroid/support/v4/app/Fragment;->Q:I
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V
goto/16 :goto_4f
:pswitch_ea
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v4, Landroid/support/v4/app/c;->f:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v3, p0, Landroid/support/v4/app/b;->i:I
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_4f
:pswitch_fb
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v4, Landroid/support/v4/app/c;->f:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v3, p0, Landroid/support/v4/app/b;->i:I
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_4f
:pswitch_10c
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v4, Landroid/support/v4/app/c;->e:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v3, p0, Landroid/support/v4/app/b;->i:I
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_4f
:pswitch_11d
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v4, Landroid/support/v4/app/c;->f:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v3, p0, Landroid/support/v4/app/b;->i:I
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/u;->d(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_4f
:pswitch_12e
iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;
iget v1, v4, Landroid/support/v4/app/c;->e:I
iput v1, v0, Landroid/support/v4/app/Fragment;->Q:I
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v3, p0, Landroid/support/v4/app/b;->i:I
iget v5, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/u;->e(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_4f
:cond_13f
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
iget v1, v1, Landroid/support/v4/app/u;->n:I
iget v2, p0, Landroid/support/v4/app/b;->i:I
iget v3, p0, Landroid/support/v4/app/b;->j:I
invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/u;->a(IIIZ)V
iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z
if-eqz v0, :cond_155
iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/u;
invoke-virtual {v0, p0}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/b;)V
:cond_155
return-void
:pswitch_data_156
.packed-switch 0x1
:pswitch_44
:pswitch_53
:pswitch_ea
:pswitch_fb
:pswitch_10c
:pswitch_11d
:pswitch_12e
.end packed-switch
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "BackStackEntry{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/b;->o:I
if-ltz v1, :cond_25
const-string v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/b;->o:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_25
iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;
if-eqz v1, :cond_33
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_33
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method