.class  Lcom/twidroid/c/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/x;
.field private b:Ljava/lang/String;
.method protected constructor <init>(Lcom/twidroid/c/x;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/c/ab;->a:Lcom/twidroid/c/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twidroid/c/ab;->b:Ljava/lang/String;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/ab; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/ab;->a:Lcom/twidroid/c/x;
invoke-virtual {v0}, Lcom/twidroid/c/x;->dismiss()V
iget-object v0, p0, Lcom/twidroid/c/ab;->b:Ljava/lang/String;
const-string v1, "http"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/ab;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/c/ab;->b:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/twidroid/c/ab;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
const-string v1, "tweetdialog"
const-string v2, "url"
iget-object v3, p0, Lcom/twidroid/c/ab;->b:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v2, "TweetDialogAnonymous"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Following uri with realname "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " but t.co: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/ab;->a:Lcom/twidroid/c/x;
iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/c/ab; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method