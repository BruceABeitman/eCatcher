.class final Lcom/instagram/android/fragment/t;
.super Lcom/instagram/api/k/a/h;
.source "ChangePasswordFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/o;
.method constructor <init>(Lcom/instagram/android/fragment/o;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
return-void
.end method
.method private a(Ljava/lang/Void;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
invoke-static {v0}, Lcom/instagram/android/fragment/o;->e(Lcom/instagram/android/fragment/o;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/u;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/u;-><init>(Lcom/instagram/android/fragment/t;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private b(Lcom/instagram/api/k/a/i;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->a(Lcom/instagram/android/fragment/o;Z)Z
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V
iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->a(Lcom/instagram/android/fragment/o;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->b(Lcom/instagram/android/fragment/o;Z)V
return-void
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->l()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_51
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->l()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_16
:cond_2c
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:goto_34
iget-object v1, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
invoke-virtual {v1}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->j()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v2, v0, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/o;->b(Lcom/instagram/android/fragment/o;Z)V
return-void
:cond_51
iget-object v0, p0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;
sget v1, Lcom/facebook/az;->unknown_error_occured:I
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/o;->c(I)Ljava/lang/String;
move-result-object v0
goto :goto_34
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/t;->a(Ljava/lang/Void;)V
return-void
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/api/k/a/i;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/t;->b(Lcom/instagram/api/k/a/i;)V
return-void
.end method