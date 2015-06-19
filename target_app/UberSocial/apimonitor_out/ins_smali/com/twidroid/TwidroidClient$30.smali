.class  Lcom/twidroid/TwidroidClient$30;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
const/4 v1, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->e(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/widgets/AccountSpinner;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0, v1, v1, v3}, Lcom/twidroid/d/c;->a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Z)Lcom/twidroid/net/c/k;
const-string v0, "accounts changed"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "count"
aput-object v2, v1, v3
iget-object v2, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v2}, Lcom/twidroid/TwidroidClient;->b(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->h()V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->f()Lcom/twidroid/model/twitter/c;
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->b(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_78
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
const-class v3, Lcom/twidroid/activity/UberSocialSplash;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v2, 0x64
invoke-virtual {v0, v1, v2}, Lcom/twidroid/TwidroidClient;->startActivityForResult(Landroid/content/Intent;I)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$30;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/twidroid/UberSocialApplication;->a(Z)V
:cond_78
return-void
.end method