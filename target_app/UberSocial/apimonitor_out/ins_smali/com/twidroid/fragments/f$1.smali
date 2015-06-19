.class  Lcom/twidroid/fragments/f$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/f$1;->a:Lcom/twidroid/fragments/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/f$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f$1;->a:Lcom/twidroid/fragments/f;
invoke-static {v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
if-eqz v0, :cond_3c
const-string v0, "https://twitter.com/%1$s/status/%2$s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/twidroid/fragments/f$1;->a:Lcom/twidroid/fragments/f;
invoke-static {v3}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v3
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/twidroid/fragments/f$1;->a:Lcom/twidroid/fragments/f;
invoke-static {v3}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v3
iget-wide v3, v3, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_2b
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/fragments/f$1;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/f;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/fragments/f$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3c
const-string v0, "https://twitter.com"
goto :goto_2b
.end method