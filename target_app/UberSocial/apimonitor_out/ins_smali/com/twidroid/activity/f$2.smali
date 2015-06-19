.class  Lcom/twidroid/activity/f$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/activity/f;
.method constructor <init>(Lcom/twidroid/activity/f;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/f$2;->b:Lcom/twidroid/activity/f;
iput-object p2, p0, Lcom/twidroid/activity/f$2;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/f$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/activity/c;
iget-object v1, p0, Lcom/twidroid/activity/f$2;->b:Lcom/twidroid/activity/f;
iget-object v1, v1, Lcom/twidroid/activity/f;->e:Lcom/twidroid/activity/FollowerRequests;
iget-object v2, p0, Lcom/twidroid/activity/f$2;->a:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/c;-><init>(Lcom/twidroid/activity/FollowerRequests;Ljava/lang/String;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/activity/f$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method