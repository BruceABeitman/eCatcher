.class  Lcom/twidroid/ui/themes/o$2$1$2$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/ui/themes/o$2$1$2;
.method constructor <init>(Lcom/twidroid/ui/themes/o$2$1$2;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/themes/o$2$1$2$2;->a:Lcom/twidroid/ui/themes/o$2$1$2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/themes/o$2$1$2$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "Twidroyd.Tabswitch"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "Action"
const-string v2, "exit"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1$2$2;->a:Lcom/twidroid/ui/themes/o$2$1$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2$1$2;->a:Lcom/twidroid/ui/themes/o$2$1;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/ui/themes/o$2$1$2$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method