.class  Lcom/twidroid/activity/UberSocialClearCache$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialClearCache;
.method constructor <init>(Lcom/twidroid/activity/UberSocialClearCache;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialClearCache$3;->a:Lcom/twidroid/activity/UberSocialClearCache;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialClearCache$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/activity/ad;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialClearCache$3;->a:Lcom/twidroid/activity/UberSocialClearCache;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/ad;-><init>(Lcom/twidroid/activity/UberSocialClearCache;Lcom/twidroid/activity/UberSocialClearCache$1;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/ad;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/activity/UberSocialClearCache$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method