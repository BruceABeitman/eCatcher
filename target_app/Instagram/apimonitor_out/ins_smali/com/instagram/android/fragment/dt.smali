.class final Lcom/instagram/android/fragment/dt;
.super Landroid/database/DataSetObserver;
.source "RecommendedUserFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/dr;
.method constructor <init>(Lcom/instagram/android/fragment/dr;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dr;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 6
iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v1}, Lcom/instagram/android/fragment/dr;->c(Lcom/instagram/android/fragment/dr;)Landroid/content/BroadcastReceiver;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v0}, Lcom/instagram/android/fragment/dr;->d()Lcom/instagram/android/a/m;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/a/m;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_21
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v2}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v2
invoke-static {v2}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/fragment/dt;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v3}, Lcom/instagram/android/fragment/dr;->c(Lcom/instagram/android/fragment/dr;)Landroid/content/BroadcastReceiver;
move-result-object v3
new-instance v4, Landroid/content/IntentFilter;
check-cast v0, Lcom/instagram/user/d/a;
invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3, v4}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
goto :goto_21
:cond_52
return-void
.end method
.method public final onInvalidated()V
.registers 1
return-void
.end method