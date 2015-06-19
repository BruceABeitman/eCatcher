.class final Lcom/twidroid/c/l$15;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Lcom/twidroid/model/twitter/Tweet;
.field final synthetic c:Lcom/twidroid/net/c/a/f;
.field final synthetic d:Lcom/twidroid/ui/a/am;
.method constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/c/l$15;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/twidroid/c/l$15;->b:Lcom/twidroid/model/twitter/Tweet;
iput-object p3, p0, Lcom/twidroid/c/l$15;->c:Lcom/twidroid/net/c/a/f;
iput-object p4, p0, Lcom/twidroid/c/l$15;->d:Lcom/twidroid/ui/a/am;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/l$15; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/l$15;->a:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/c/l$15;->a:Landroid/app/Activity;
iget-object v2, p0, Lcom/twidroid/c/l$15;->b:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/c/l$15;->c:Lcom/twidroid/net/c/a/f;
iget-object v4, p0, Lcom/twidroid/c/l$15;->d:Lcom/twidroid/ui/a/am;
invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
const-string v1, " - Lcom/twidroid/c/l$15; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method