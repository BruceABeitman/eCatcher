.class final Lcom/instagram/android/l/a/b;
.super Landroid/database/DataSetObserver;
.source "UserListAdapter.java"
.field final synthetic a:Lcom/instagram/android/l/a/a;
.method constructor <init>(Lcom/instagram/android/l/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/user/c/a;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
invoke-static {v0}, Lcom/instagram/android/l/a/a;->c(Lcom/instagram/android/l/a/a;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
invoke-static {v1}, Lcom/instagram/android/l/a/a;->a(Lcom/instagram/android/l/a/a;)Landroid/content/BroadcastReceiver;
move-result-object v1
new-instance v2, Landroid/content/IntentFilter;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final onChanged()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
invoke-static {v0}, Lcom/instagram/android/l/a/a;->b(Lcom/instagram/android/l/a/a;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
invoke-static {v1}, Lcom/instagram/android/l/a/a;->a(Lcom/instagram/android/l/a/a;)Landroid/content/BroadcastReceiver;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->d()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-direct {p0, v0}, Lcom/instagram/android/l/a/b;->a(Lcom/instagram/user/c/a;)V
goto :goto_1d
:cond_2d
iget-object v0, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
iget-object v0, v0, Lcom/instagram/android/l/a/a;->j:Lcom/instagram/user/c/a;
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
iget-object v1, p0, Lcom/instagram/android/l/a/b;->a:Lcom/instagram/android/l/a/a;
iget-object v1, v1, Lcom/instagram/android/l/a/a;->j:Lcom/instagram/user/c/a;
invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/a;->a(Lcom/instagram/user/c/a;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_41
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-direct {p0, v0}, Lcom/instagram/android/l/a/b;->a(Lcom/instagram/user/c/a;)V
goto :goto_41
:cond_51
return-void
.end method
.method public final onInvalidated()V
.registers 1
return-void
.end method