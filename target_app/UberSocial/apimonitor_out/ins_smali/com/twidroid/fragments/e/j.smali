.class  Lcom/twidroid/fragments/e/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/g;
.method private constructor <init>(Lcom/twidroid/fragments/e/g;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/j;->a:Lcom/twidroid/fragments/e/g;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/j;-><init>(Lcom/twidroid/fragments/e/g;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
sget-object v0, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/twidroid/fragments/e/j;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->isVisible()Z
move-result v0
if-eqz v0, :cond_20
const-string v0, "HomeTimeline"
const-string v1, "Update tl broadcast received"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/j;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->d()V
:cond_20
return-void
.end method