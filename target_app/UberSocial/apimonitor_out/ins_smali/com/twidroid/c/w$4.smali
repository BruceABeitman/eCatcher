.class  Lcom/twidroid/c/w$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/w;
.method constructor <init>(Lcom/twidroid/c/w;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/w$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;
iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;
iget-object v1, v1, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;
iget-object v2, v2, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;
invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V
iget-object v0, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;
invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V
const-string v1, " - Lcom/twidroid/c/w$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method