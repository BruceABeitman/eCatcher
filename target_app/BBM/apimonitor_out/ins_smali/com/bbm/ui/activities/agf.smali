.class final Lcom/bbm/ui/activities/agf;
.super Ljava/lang/Object;
.source "SettingsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/o;
.field final synthetic b:Lcom/bbm/ui/activities/age;
.method constructor <init>(Lcom/bbm/ui/activities/age;Lcom/bbm/ui/b/o;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/agf;->b:Lcom/bbm/ui/activities/age;
iput-object p2, p0, Lcom/bbm/ui/activities/agf;->a:Lcom/bbm/ui/b/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/agf; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mKeepChatHistory Dialog LeftButton Clicked"
const-class v1, Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/agf;->b:Lcom/bbm/ui/activities/age;
iget-object v0, v0, Lcom/bbm/ui/activities/age;->a:Lcom/bbm/ui/activities/SettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->j(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Switch;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/agf;->a:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
const-string v1, " - Lcom/bbm/ui/activities/agf; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method