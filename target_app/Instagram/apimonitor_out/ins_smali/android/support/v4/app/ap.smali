.class final Landroid/support/v4/app/ap;
.super Landroid/support/v4/app/an;
.source "LoaderManager.java"
.field static a:Z
.field final b:Landroid/support/v4/c/d;
.field final c:Landroid/support/v4/c/d;
.field final d:Ljava/lang/String;
.field  e:Landroid/support/v4/app/r;
.field  f:Z
.field  g:Z
.field  h:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Landroid/support/v4/app/ap;->a:Z
return-void
.end method
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/r;Z)V
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/an;-><init>()V
new-instance v0, Landroid/support/v4/c/d;
invoke-direct {v0}, Landroid/support/v4/c/d;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
new-instance v0, Landroid/support/v4/c/d;
invoke-direct {v0}, Landroid/support/v4/c/d;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
iput-object p1, p0, Landroid/support/v4/app/ap;->d:Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
iput-boolean p3, p0, Landroid/support/v4/app/ap;->f:Z
return-void
.end method
.method private b(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/app/aq;
.registers 6
new-instance v0, Landroid/support/v4/app/aq;
invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/aq;-><init>(Landroid/support/v4/app/ap;ILandroid/os/Bundle;Landroid/support/v4/app/ao;)V
invoke-interface {p3, p2}, Landroid/support/v4/app/ao;->a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
return-object v0
.end method
.method private c(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/app/aq;
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Landroid/support/v4/app/ap;->h:Z
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/ap;->b(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/app/aq;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/aq;)V
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_e
iput-boolean v1, p0, Landroid/support/v4/app/ap;->h:Z
return-object v0
:catchall_e
move-exception v0
iput-boolean v1, p0, Landroid/support/v4/app/ap;->h:Z
throw v0
.end method
.method public final a(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/a/c;
.registers 7
iget-boolean v0, p0, Landroid/support/v4/app/ap;->h:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_2c
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "initLoader in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": args="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_2c
if-nez v0, :cond_52
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/ap;->c(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/app/aq;
move-result-object v0
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_40
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Created new loader "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:goto_40
:cond_40
iget-boolean v1, v0, Landroid/support/v4/app/aq;->e:Z
if-eqz v1, :cond_4f
iget-boolean v1, p0, Landroid/support/v4/app/ap;->f:Z
if-eqz v1, :cond_4f
iget-object v1, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
iget-object v2, v0, Landroid/support/v4/app/aq;->g:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aq;->b(Landroid/support/v4/a/c;Ljava/lang/Object;)V
:cond_4f
iget-object v0, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
return-object v0
:cond_52
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_60
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Re-using existing loader "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_60
iput-object p3, v0, Landroid/support/v4/app/aq;->c:Landroid/support/v4/app/ao;
goto :goto_40
.end method
.method public final a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;
.registers 8
const/4 v4, 0x0
iget-boolean v0, p0, Landroid/support/v4/app/ap;->h:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_2d
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "restartLoader in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": args="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_2d
if-eqz v0, :cond_5b
iget-object v1, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v1, p1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/aq;
if-eqz v1, :cond_99
iget-boolean v2, v0, Landroid/support/v4/app/aq;->e:Z
if-eqz v2, :cond_62
sget-boolean v2, Landroid/support/v4/app/ap;->a:Z
if-eqz v2, :cond_4b
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "  Removing last inactive loader: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_4b
const/4 v2, 0x0
iput-boolean v2, v1, Landroid/support/v4/app/aq;->f:Z
invoke-virtual {v1}, Landroid/support/v4/app/aq;->f()V
:cond_51
:goto_51
iget-object v1, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
invoke-virtual {v1}, Landroid/support/v4/a/c;->p()V
iget-object v1, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V
:goto_5b
:cond_5b
invoke-direct {p0, p1, v4, p2}, Landroid/support/v4/app/ap;->c(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/app/aq;
move-result-object v0
iget-object v0, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
:goto_61
return-object v0
:cond_62
iget-boolean v1, v0, Landroid/support/v4/app/aq;->h:Z
if-nez v1, :cond_71
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
iget-object v1, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v1, p1, v4}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
goto :goto_5b
:cond_71
iget-object v1, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
if-eqz v1, :cond_8c
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_85
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Removing pending loader: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_85
iget-object v1, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
invoke-virtual {v1}, Landroid/support/v4/app/aq;->f()V
iput-object v4, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
:cond_8c
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
invoke-direct {p0, p1, v4, p2}, Landroid/support/v4/app/ap;->b(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/app/aq;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
iget-object v0, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
iget-object v0, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
goto :goto_61
:cond_99
sget-boolean v1, Landroid/support/v4/app/ap;->a:Z
if-eqz v1, :cond_51
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "  Making last loader inactive: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_51
.end method
.method public final a(I)V
.registers 5
iget-boolean v0, p0, Landroid/support/v4/app/ap;->h:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_24
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "destroyLoader in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_24
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->f(I)I
move-result v1
if-ltz v1, :cond_3c
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
iget-object v2, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v2, v1}, Landroid/support/v4/c/d;->c(I)V
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
:cond_3c
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->f(I)I
move-result v1
if-ltz v1, :cond_54
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
iget-object v2, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v2, v1}, Landroid/support/v4/c/d;->c(I)V
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
:cond_54
iget-object v0, p0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
if-eqz v0, :cond_67
invoke-virtual {p0}, Landroid/support/v4/app/ap;->a()Z
move-result v0
if-nez v0, :cond_67
iget-object v0, p0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/u;->h()V
:cond_67
return-void
.end method
.method final a(Landroid/support/v4/app/aq;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
iget v1, p1, Landroid/support/v4/app/aq;->a:I
invoke-virtual {v0, v1, p1}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V
iget-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
if-eqz v0, :cond_e
invoke-virtual {p1}, Landroid/support/v4/app/aq;->a()V
:cond_e
return-void
.end method
.method final a(Landroid/support/v4/app/r;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 10
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
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
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
if-ge v1, v0, :cond_59
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v4, "  #"
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v4, v1}, Landroid/support/v4/c/d;->d(I)I
move-result v4
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V
const-string v4, ": "
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/aq;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/aq;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_25
:cond_59
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
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
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
if-ge v2, v0, :cond_af
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v3, "  #"
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v3, v2}, Landroid/support/v4/c/d;->d(I)I
move-result v3
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V
const-string v3, ": "
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/aq;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aq;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v2, v2, 0x1
goto :goto_7c
:cond_af
return-void
.end method
.method public final a()Z
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v4
move v2, v1
move v3, v1
:goto_9
if-ge v2, v4, :cond_23
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
iget-boolean v5, v0, Landroid/support/v4/app/aq;->h:Z
if-eqz v5, :cond_21
iget-boolean v0, v0, Landroid/support/v4/app/aq;->f:Z
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
.method public final b(I)Landroid/support/v4/a/c;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/ap;->h:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
if-eqz v0, :cond_22
iget-object v1, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
if-eqz v1, :cond_1f
iget-object v0, v0, Landroid/support/v4/app/aq;->n:Landroid/support/v4/app/aq;
iget-object v0, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
:goto_1e
return-object v0
:cond_1f
iget-object v0, v0, Landroid/support/v4/app/aq;->d:Landroid/support/v4/a/c;
goto :goto_1e
:cond_22
const/4 v0, 0x0
goto :goto_1e
.end method
.method final b()V
.registers 3
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Starting in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_e
iget-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
if-eqz v0, :cond_27
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Called doStart when already started: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_26
return-void
:cond_27
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_33
if-ltz v1, :cond_26
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->a()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_33
.end method
.method final c()V
.registers 3
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Stopping in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_e
iget-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
if-nez v0, :cond_27
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Called doStop when not started: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:goto_26
return-void
:cond_27
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_30
if-ltz v1, :cond_41
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->e()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_30
:cond_41
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
goto :goto_26
.end method
.method final d()V
.registers 3
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Retaining in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_e
iget-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
if-nez v0, :cond_27
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Called doRetain when not started: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_26
return-void
:cond_27
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ap;->g:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/ap;->f:Z
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_36
if-ltz v1, :cond_26
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->b()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_36
.end method
.method final e()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/ap;->g:Z
if-eqz v0, :cond_2f
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Finished Retaining in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_12
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/ap;->g:Z
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_1e
if-ltz v1, :cond_2f
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->c()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_1e
:cond_2f
return-void
.end method
.method final f()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
const/4 v2, 0x1
iput-boolean v2, v0, Landroid/support/v4/app/aq;->k:Z
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_1a
return-void
.end method
.method final g()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->d()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_1a
return-void
.end method
.method final h()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/ap;->g:Z
if-nez v0, :cond_31
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Destroying Active in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_12
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_1b
if-ltz v1, :cond_2c
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_1b
:cond_2c
iget-object v0, p0, Landroid/support/v4/app/ap;->b:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->b()V
:cond_31
sget-boolean v0, Landroid/support/v4/app/ap;->a:Z
if-eqz v0, :cond_3f
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Destroying Inactive in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_3f
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_48
if-ltz v1, :cond_59
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aq;
invoke-virtual {v0}, Landroid/support/v4/app/aq;->f()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_48
:cond_59
iget-object v0, p0, Landroid/support/v4/app/ap;->c:Landroid/support/v4/c/d;
invoke-virtual {v0}, Landroid/support/v4/c/d;->b()V
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
iget-object v1, p0, Landroid/support/v4/app/ap;->e:Landroid/support/v4/app/r;
invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method