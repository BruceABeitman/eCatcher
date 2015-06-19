.class  Lcom/twidroid/c/w$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/w;
.method constructor <init>(Lcom/twidroid/c/w;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/w$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
iget-object v1, v1, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
iget-object v2, v2, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;
iget-object v3, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
invoke-static {v3}, Lcom/twidroid/c/w;->b(Lcom/twidroid/c/w;)Lcom/twidroid/ui/a/am;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
const-string v0, "tweet"
const-string v1, "report_spam"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
const/16 v1, 0x3003
iput v1, v0, Lcom/twidroid/c/w;->e:I
iget-object v0, p0, Lcom/twidroid/c/w$6;->a:Lcom/twidroid/c/w;
invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V
const-string v1, " - Lcom/twidroid/c/w$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method