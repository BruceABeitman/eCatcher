.class  Lcom/twidroid/fragments/base/o$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/base/o;
.method constructor <init>(Lcom/twidroid/fragments/base/o;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v0, "broadcast.init.spinner"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->S()Ljava/lang/String;
move-result-object v0
const-string v1, "Init spinner requested"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "tag"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_30
iget-object v1, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v1}, Lcom/twidroid/fragments/base/o;->V()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->G()V
:goto_30
:cond_30
return-void
:cond_31
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->getUserVisibleHint()Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->isVisible()Z
move-result v0
if-nez v0, :cond_4d
:cond_41
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->S()Ljava/lang/String;
move-result-object v0
const-string v1, "got broadcast, BUT was invisible."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_30
:cond_4d
const-string v0, "BaseUberSocialFragment"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handling action: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "timelines.jumptotop"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_87
const-string v0, "BaseUberSocialFragment"
const-string v1, "jumping to top"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->getListView()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
goto :goto_30
:cond_87
const-string v0, "timelines.refresh"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/twidroid/fragments/base/o$2;->a:Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->d()V
const-string v0, "BaseUberSocialFragment"
const-string v1, "Update content requested"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_30
.end method