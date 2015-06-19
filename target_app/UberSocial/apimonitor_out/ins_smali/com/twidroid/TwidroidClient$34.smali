.class  Lcom/twidroid/TwidroidClient$34;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/TwidroidClient$34; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
iget-object v2, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v2}, Lcom/twidroid/TwidroidClient;->d(Lcom/twidroid/TwidroidClient;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->finish()V
const-string v1, " - Lcom/twidroid/TwidroidClient$34; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method