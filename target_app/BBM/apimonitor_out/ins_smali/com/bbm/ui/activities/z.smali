.class final Lcom/bbm/ui/activities/z;
.super Ljava/lang/Object;
.source "BbidErrorActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/BbidErrorActivity;
.method constructor <init>(Lcom/bbm/ui/activities/BbidErrorActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/z;->a:Lcom/bbm/ui/activities/BbidErrorActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/z; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Retrying on BBID error"
const-class v1, Lcom/bbm/ui/activities/BbidErrorActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/z;->a:Lcom/bbm/ui/activities/BbidErrorActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
sget-object v1, Lcom/bbm/ui/activities/BbidErrorActivity;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/bbm/ui/activities/z;->a:Lcom/bbm/ui/activities/BbidErrorActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->startActivity(Landroid/content/Intent;)V
:cond_1c
iget-object v0, p0, Lcom/bbm/ui/activities/z;->a:Lcom/bbm/ui/activities/BbidErrorActivity;
sget v1, Lcom/bbm/ui/activities/BbidErrorActivity;->b:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/BbidErrorActivity;->setResult(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/z;->a:Lcom/bbm/ui/activities/BbidErrorActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/z; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method