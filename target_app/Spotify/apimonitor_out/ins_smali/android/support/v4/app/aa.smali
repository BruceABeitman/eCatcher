.class final Landroid/support/v4/app/aa;
.super Landroid/support/v4/app/y;
.source "SourceFile"
.field static a:Z
.field final b:Landroid/support/v4/c/n;
.field final c:Landroid/support/v4/c/n;
.field final d:Ljava/lang/String;
.field  e:Landroid/support/v4/app/FragmentActivity;
.field  f:Z
.field  g:Z
.field  h:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Landroid/support/v4/app/aa;->a:Z
return-void
.end method
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/y;-><init>()V
new-instance v0, Landroid/support/v4/c/n;
invoke-direct {v0}, Landroid/support/v4/c/n;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
new-instance v0, Landroid/support/v4/c/n;
invoke-direct {v0}, Landroid/support/v4/c/n;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
iput-object p1, p0, Landroid/support/v4/app/aa;->d:Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iput-boolean p3, p0, Landroid/support/v4/app/aa;->f:Z
return-void
.end method
.method private c(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/app/ab;
.registers 6
new-instance v0, Landroid/support/v4/app/ab;
invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/ab;-><init>(Landroid/support/v4/app/aa;ILandroid/os/Bundle;Landroid/support/v4/app/z;)V
invoke-interface {p3, p1, p2}, Landroid/support/v4/app/z;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
return-object v0
.end method
.method private d(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/app/ab;
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/aa;->c(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/app/ab;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/ab;)V
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_e
iput-boolean v1, p0, Landroid/support/v4/app/aa;->h:Z
return-object v0
:catchall_e
move-exception v0
iput-boolean v1, p0, Landroid/support/v4/app/aa;->h:Z
throw v0
.end method
.method public final a()Landroid/support/v4/content/k;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
const v1, 0x7f0a0185
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
if-eqz v0, :cond_25
iget-object v1, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
if-eqz v1, :cond_22
iget-object v0, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
:goto_21
return-object v0
:cond_22
iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
goto :goto_21
:cond_25
const/4 v0, 0x0
goto :goto_21
.end method
.method public final a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
.registers 8
iget-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, p1}, Landroid/support/v4/c/n;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_36
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "initLoader in "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": args="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_36
if-nez v0, :cond_66
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/aa;->d(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/app/ab;
move-result-object v0
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_54
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  Created new loader "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:goto_54
:cond_54
iget-boolean v1, v0, Landroid/support/v4/app/ab;->e:Z
if-eqz v1, :cond_63
iget-boolean v1, p0, Landroid/support/v4/app/aa;->f:Z
if-eqz v1, :cond_63
iget-object v1, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
iget-object v2, v0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ab;->b(Landroid/support/v4/content/k;Ljava/lang/Object;)V
:cond_63
iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
return-object v0
:cond_66
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_7e
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  Re-using existing loader "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_7e
iput-object p3, v0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
goto :goto_54
.end method
.method public final a(I)V
.registers 5
iget-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_2e
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "destroyLoader in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2e
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, p1}, Landroid/support/v4/c/n;->f(I)I
move-result v1
if-ltz v1, :cond_46
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
iget-object v2, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v2, v1}, Landroid/support/v4/c/n;->c(I)V
invoke-virtual {v0}, Landroid/support/v4/app/ab;->c()V
:cond_46
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0, p1}, Landroid/support/v4/c/n;->f(I)I
move-result v1
if-ltz v1, :cond_5e
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
iget-object v2, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v2, v1}, Landroid/support/v4/c/n;->c(I)V
invoke-virtual {v0}, Landroid/support/v4/app/ab;->c()V
:cond_5e
iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_6f
invoke-virtual {p0}, Landroid/support/v4/app/aa;->b()Z
move-result v0
if-nez v0, :cond_6f
iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->g()V
:cond_6f
return-void
.end method
.method final a(Landroid/support/v4/app/ab;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
iget v1, p1, Landroid/support/v4/app/ab;->a:I
invoke-virtual {v0, v1, p1}, Landroid/support/v4/c/n;->a(ILjava/lang/Object;)V
iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z
if-eqz v0, :cond_e
invoke-virtual {p1}, Landroid/support/v4/app/ab;->a()V
:cond_e
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 10
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
if-lez v0, :cond_59
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Active Loaders:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "    "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move v1, v2
:goto_25
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
if-ge v1, v0, :cond_59
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v4, "  #"
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v4, v1}, Landroid/support/v4/c/n;->d(I)I
move-result v4
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V
const-string v4, ": "
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/ab;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/ab;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_25
:cond_59
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
if-lez v0, :cond_af
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Inactive Loaders:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "    "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_7c
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
if-ge v2, v0, :cond_af
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0, v2}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v3, "  #"
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v3, v2}, Landroid/support/v4/c/n;->d(I)I
move-result v3
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V
const-string v3, ": "
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/ab;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/ab;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v2, v2, 0x1
goto :goto_7c
:cond_af
return-void
.end method
.method public final b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
.registers 9
const/4 v4, 0x0
iget-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, p1}, Landroid/support/v4/c/n;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_37
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "restartLoader in "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": args="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_37
if-eqz v0, :cond_6f
iget-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v1, p1}, Landroid/support/v4/c/n;->a(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/ab;
if-eqz v1, :cond_c9
iget-boolean v2, v0, Landroid/support/v4/app/ab;->e:Z
if-eqz v2, :cond_76
sget-boolean v2, Landroid/support/v4/app/aa;->a:Z
if-eqz v2, :cond_5f
const-string v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "  Removing last inactive loader: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_5f
const/4 v2, 0x0
iput-boolean v2, v1, Landroid/support/v4/app/ab;->f:Z
invoke-virtual {v1}, Landroid/support/v4/app/ab;->c()V
:cond_65
:goto_65
iget-object v1, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
invoke-virtual {v1}, Landroid/support/v4/content/k;->o()V
iget-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/n;->a(ILjava/lang/Object;)V
:goto_6f
:cond_6f
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/aa;->d(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/app/ab;
move-result-object v0
iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
:goto_75
return-object v0
:cond_76
iget-boolean v1, v0, Landroid/support/v4/app/ab;->h:Z
if-nez v1, :cond_8e
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_85
const-string v1, "LoaderManager"
const-string v2, "  Current loader is stopped; replacing"
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_85
iget-object v1, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v1, p1, v4}, Landroid/support/v4/c/n;->a(ILjava/lang/Object;)V
invoke-virtual {v0}, Landroid/support/v4/app/ab;->c()V
goto :goto_6f
:cond_8e
iget-object v1, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
if-eqz v1, :cond_b3
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_ac
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  Removing pending loader: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_ac
iget-object v1, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
invoke-virtual {v1}, Landroid/support/v4/app/ab;->c()V
iput-object v4, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
:cond_b3
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_be
const-string v1, "LoaderManager"
const-string v2, "  Enqueuing as new pending loader"
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_be
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/aa;->c(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/app/ab;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
iget-object v0, v0, Landroid/support/v4/app/ab;->n:Landroid/support/v4/app/ab;
iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
goto :goto_75
:cond_c9
sget-boolean v1, Landroid/support/v4/app/aa;->a:Z
if-eqz v1, :cond_65
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  Making last loader inactive: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_65
.end method
.method public final b()Z
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v4
move v2, v1
move v3, v1
:goto_9
if-ge v2, v4, :cond_23
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v2}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
iget-boolean v5, v0, Landroid/support/v4/app/ab;->h:Z
if-eqz v5, :cond_21
iget-boolean v0, v0, Landroid/support/v4/app/ab;->f:Z
if-nez v0, :cond_21
const/4 v0, 0x1
:goto_1c
or-int/2addr v3, v0
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_9
:cond_21
move v0, v1
goto :goto_1c
:cond_23
return v3
.end method
.method final c()V
.registers 5
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_18
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Starting in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_18
iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z
if-eqz v0, :cond_3b
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Called doStart when already started: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_3a
return-void
:cond_3b
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_47
if-ltz v1, :cond_3a
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
invoke-virtual {v0}, Landroid/support/v4/app/ab;->a()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_47
.end method
.method final d()V
.registers 5
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_18
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Stopping in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_18
iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z
if-nez v0, :cond_3b
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Called doStop when not started: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_3a
return-void
:cond_3b
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_44
if-ltz v1, :cond_55
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
invoke-virtual {v0}, Landroid/support/v4/app/ab;->b()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_44
:cond_55
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z
goto :goto_3a
.end method
.method final e()V
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_1a
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Retaining in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1a
iget-boolean v0, p0, Landroid/support/v4/app/aa;->f:Z
if-nez v0, :cond_3d
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Called doRetain when not started: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_3c
return-void
:cond_3d
iput-boolean v6, p0, Landroid/support/v4/app/aa;->g:Z
iput-boolean v5, p0, Landroid/support/v4/app/aa;->f:Z
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_4a
if-ltz v1, :cond_3c
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
sget-boolean v2, Landroid/support/v4/app/aa;->a:Z
if-eqz v2, :cond_6c
const-string v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "  Retaining: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_6c
iput-boolean v6, v0, Landroid/support/v4/app/ab;->i:Z
iget-boolean v2, v0, Landroid/support/v4/app/ab;->h:Z
iput-boolean v2, v0, Landroid/support/v4/app/ab;->j:Z
iput-boolean v5, v0, Landroid/support/v4/app/ab;->h:Z
const/4 v2, 0x0
iput-object v2, v0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/z;
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_4a
.end method
.method final f()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
const/4 v2, 0x1
iput-boolean v2, v0, Landroid/support/v4/app/ab;->k:Z
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_1a
return-void
.end method
.method final g()V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_2d
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
iget-boolean v2, v0, Landroid/support/v4/app/ab;->h:Z
if-eqz v2, :cond_29
iget-boolean v2, v0, Landroid/support/v4/app/ab;->k:Z
if-eqz v2, :cond_29
const/4 v2, 0x0
iput-boolean v2, v0, Landroid/support/v4/app/ab;->k:Z
iget-boolean v2, v0, Landroid/support/v4/app/ab;->e:Z
if-eqz v2, :cond_29
iget-object v2, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;
iget-object v3, v0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;
invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/ab;->b(Landroid/support/v4/content/k;Ljava/lang/Object;)V
:cond_29
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_2d
return-void
.end method
.method final h()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/aa;->g:Z
if-nez v0, :cond_3b
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_1c
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Destroying Active in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_25
if-ltz v1, :cond_36
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
invoke-virtual {v0}, Landroid/support/v4/app/ab;->c()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_25
:cond_36
iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->b()V
:cond_3b
sget-boolean v0, Landroid/support/v4/app/aa;->a:Z
if-eqz v0, :cond_53
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Destroying Inactive in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_53
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_5c
if-ltz v1, :cond_6d
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/ab;
invoke-virtual {v0}, Landroid/support/v4/app/ab;->c()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_5c
:cond_6d
iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/support/v4/c/n;
invoke-virtual {v0}, Landroid/support/v4/c/n;->b()V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "LoaderManager{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;
invoke-static {v1, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method