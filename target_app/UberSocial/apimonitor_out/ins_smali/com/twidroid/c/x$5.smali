.class  Lcom/twidroid/c/x$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/x;
.method constructor <init>(Lcom/twidroid/c/x;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/x$5;->a:Lcom/twidroid/c/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/x$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/x$5;->a:Lcom/twidroid/c/x;
iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/c/x$5;->a:Lcom/twidroid/c/x;
iget-object v1, v1, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, p0, Lcom/twidroid/c/x$5;->a:Lcom/twidroid/c/x;
iget-object v2, v2, Lcom/twidroid/c/x;->j:Lcom/twidroid/net/c/a/f;
invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
iget-object v0, p0, Lcom/twidroid/c/x$5;->a:Lcom/twidroid/c/x;
invoke-virtual {v0}, Lcom/twidroid/c/x;->dismiss()V
const-string v1, " - Lcom/twidroid/c/x$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method