.class  Lcom/twidroid/fragments/e/av$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/av;
.method constructor <init>(Lcom/twidroid/fragments/e/av;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/av$2;->a:Lcom/twidroid/fragments/e/av;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "timelines.jumptotop"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/twidroid/fragments/e/av$2;->a:Lcom/twidroid/fragments/e/av;
invoke-static {v0}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/av$2;->a:Lcom/twidroid/fragments/e/av;
invoke-static {v1}, Lcom/twidroid/fragments/e/av;->b(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/a/ax;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av$2;->a:Lcom/twidroid/fragments/e/av;
invoke-static {v0}, Lcom/twidroid/fragments/e/av;->b(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/a/ax;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/ax;->notifyDataSetChanged()V
:cond_24
return-void
.end method