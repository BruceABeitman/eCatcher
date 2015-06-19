.class  Lcom/twidroid/ui/a/ap$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/model/twitter/d;
.field final synthetic b:Lcom/twidroid/ui/a/ap;
.method constructor <init>(Lcom/twidroid/ui/a/ap;Lcom/twidroid/model/twitter/d;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
iput-object p2, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/a/ap$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
iget-object v1, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/ui/a/ap;->a(Lcom/twidroid/ui/a/ap;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4d
iget-object v1, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
invoke-static {v1}, Lcom/twidroid/ui/a/ap;->d(Lcom/twidroid/ui/a/ap;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string v2, "ubersocial.broadcast.uberbar.removelist"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "EXTRA_LIST_URI"
iget-object v3, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
iget-object v3, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-static {v2, v3}, Lcom/twidroid/ui/a/ap;->a(Lcom/twidroid/ui/a/ap;Lcom/twidroid/model/twitter/d;)V
iget-object v2, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
invoke-static {v2}, Lcom/twidroid/ui/a/ap;->e(Lcom/twidroid/ui/a/ap;)Landroid/app/Activity;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
:goto_42
iget-object v1, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
check-cast p1, Landroid/widget/Button;
if-nez v0, :cond_7b
const/4 v0, 0x1
:goto_49
invoke-static {v1, p1, v0}, Lcom/twidroid/ui/a/ap;->a(Lcom/twidroid/ui/a/ap;Landroid/widget/Button;Z)V
const-string v1, " - Lcom/twidroid/ui/a/ap$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4d
iget-object v1, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
invoke-static {v1}, Lcom/twidroid/ui/a/ap;->d(Lcom/twidroid/ui/a/ap;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string v2, "ubersocial.broadcast.uberbar.addlist"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "EXTRA_LIST_URI"
iget-object v3, p0, Lcom/twidroid/ui/a/ap$2;->a:Lcom/twidroid/model/twitter/d;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/twidroid/ui/a/ap$2;->b:Lcom/twidroid/ui/a/ap;
invoke-static {v2}, Lcom/twidroid/ui/a/ap;->e(Lcom/twidroid/ui/a/ap;)Landroid/app/Activity;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
goto :goto_42
:cond_7b
const/4 v0, 0x0
goto :goto_49
.end method