.class public abstract Lcom/instagram/api/k/a/a;
.super Lcom/instagram/common/a/a/a;
.source "AbstractIgRequest.java"
.implements Lcom/instagram/api/c/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/api/k/a/i;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/common/a/a/a;->a(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->f()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_11
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/b/b;
invoke-static {v0}, Lcom/instagram/api/i/c;->a(Lcom/instagram/api/b/b;)V
goto :goto_11
:cond_21
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->n()Z
move-result v0
if-nez v0, :cond_3e
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->j()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_3a
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->error:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/k/a/i;->a(Ljava/lang/String;)V
:cond_3a
invoke-direct {p0, p1}, Lcom/instagram/api/k/a/a;->c(Lcom/instagram/api/k/a/i;)V
:goto_3d
return-void
:cond_3e
invoke-direct {p0, p1}, Lcom/instagram/api/k/a/a;->b(Lcom/instagram/api/k/a/i;)V
goto :goto_3d
.end method
.method private b(Lcom/instagram/api/k/a/i;)V
.registers 4
iget-object v0, p0, Lcom/instagram/api/k/a/a;->a:Lcom/instagram/common/a/a/l;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/api/k/a/a;->a:Lcom/instagram/common/a/a/l;
check-cast v0, Lcom/instagram/api/k/a/h;
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->m()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V
:cond_f
return-void
.end method
.method private c(Lcom/instagram/api/k/a/i;)V
.registers 5
const-string v0, "login_required"
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->k()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f/b;->a(Landroid/content/Context;)V
:cond_13
:goto_13
iget-object v0, p0, Lcom/instagram/api/k/a/a;->a:Lcom/instagram/common/a/a/l;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/api/k/a/a;->a:Lcom/instagram/common/a/a/l;
check-cast v0, Lcom/instagram/api/k/a/h;
invoke-virtual {v0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
:cond_1e
return-void
:cond_1f
const-string v0, "checkpoint_required"
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->k()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->h()Z
move-result v2
invoke-static {v0, v1, v2}, Lcom/instagram/n/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V
goto :goto_13
.end method
.method private static h()Lcom/instagram/api/k/a/i;
.registers 1
new-instance v0, Lcom/instagram/api/k/a/j;
invoke-direct {v0}, Lcom/instagram/api/k/a/j;-><init>()V
return-object v0
.end method
.method private i()Lcom/instagram/api/k/a/i;
.registers 4
invoke-static {}, Lcom/instagram/api/d/a;->a()V
:try_start_3
invoke-super {p0}, Lcom/instagram/common/a/a/a;->f()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/k/a/i;
:try_end_9
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_9} :catch_a
:goto_9
return-object v0
:catch_a
move-exception v0
const-string v0, "failed_to_load_library_network_layer"
const-string v1, "failed_to_load_library_network_layer"
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/instagram/api/k/a/j;
invoke-direct {v0}, Lcom/instagram/api/k/a/j;-><init>()V
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->network_error_app_not_installed_correctly:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/k/a/j;->d(Ljava/lang/String;)V
goto :goto_9
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/api/k/a/i;
invoke-direct {p0, p1}, Lcom/instagram/api/k/a/a;->a(Lcom/instagram/api/k/a/i;)V
return-void
.end method
.method public final c_()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/instagram/api/k/a/a;->d_()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/api/k/a/a;->e_()Z
move-result v1
invoke-static {v0, v1}, Lcom/instagram/api/h/a;->a(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d()Lcom/instagram/common/a/a/p;
.registers 2
instance-of v0, p0, Lcom/instagram/api/k/a/d;
if-eqz v0, :cond_c
new-instance v0, Lcom/instagram/api/k/a/f;
check-cast p0, Lcom/instagram/api/k/a/d;
invoke-direct {v0, p0}, Lcom/instagram/api/k/a/f;-><init>(Lcom/instagram/api/k/a/d;)V
:goto_b
return-object v0
:cond_c
new-instance v0, Lcom/instagram/api/k/a/k;
invoke-direct {v0}, Lcom/instagram/api/k/a/k;-><init>()V
goto :goto_b
.end method
.method protected abstract d_()Ljava/lang/String;
.end method
.method public e_()Z
.registers 2
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->J()Z
move-result v0
return v0
.end method
.method protected final synthetic f()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/instagram/api/k/a/a;->i()Lcom/instagram/api/k/a/i;
move-result-object v0
return-object v0
.end method
.method protected final synthetic g()Ljava/lang/Object;
.registers 2
invoke-static {}, Lcom/instagram/api/k/a/a;->h()Lcom/instagram/api/k/a/i;
move-result-object v0
return-object v0
.end method