.class final Lcom/twidroid/c/r$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/twidroid/UberSocialApplication;
.field final synthetic c:Landroid/app/Activity;
.method constructor <init>(Landroid/view/View;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/c/r$2;->a:Landroid/view/View;
iput-object p2, p0, Lcom/twidroid/c/r$2;->b:Lcom/twidroid/UberSocialApplication;
iput-object p3, p0, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/r$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/r$2;->a:Landroid/view/View;
const v1, 0x7f0901d3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/c/r$2;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->bj()Z
move-result v1
if-eqz v1, :cond_2a
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
const-class v3, Lcom/twidroid/activity/MobileViewActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
iget-object v1, p0, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->finish()V
:cond_2a
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/twidroid/c/r$2$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/c/r$2$1;-><init>(Lcom/twidroid/c/r$2;Landroid/widget/EditText;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
const-string v1, " - Lcom/twidroid/c/r$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method