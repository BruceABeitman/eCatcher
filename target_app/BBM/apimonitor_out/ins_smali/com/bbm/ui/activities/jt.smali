.class final Lcom/bbm/ui/activities/jt;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/jt;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/jt; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "headerActionBar Negative Button Clicked"
const-class v1, Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/jt;->a:Lcom/bbm/ui/activities/FilePickerActivity;
const-class v2, Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v1, "conversation_uri"
invoke-static {}, Lcom/bbm/ui/activities/FilePickerActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/jt;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/jt;->a:Lcom/bbm/ui/activities/FilePickerActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->setResult(I)V
const-string v1, " - Lcom/bbm/ui/activities/jt; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method