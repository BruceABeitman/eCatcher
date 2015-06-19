.class final Lcom/bbm/ui/activities/vn;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/j;
.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/b/j;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/vn;->b:Lcom/bbm/ui/activities/MainActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/vn;->a:Lcom/bbm/ui/b/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/vn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const-string v0, "setActionBarForFragment Dialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/vn;->b:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/vn;->a:Lcom/bbm/ui/b/j;
iget-object v1, v1, Lcom/bbm/ui/b/j;->d:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
if-eqz v1, :cond_22
const-string v1, "show_channels_geolocation"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
:cond_22
const-string v1, "allow_geolocation_collect"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-static {}, Lcom/bbm/ui/activities/MainActivity;->k()Lcom/bbm/d/a;
invoke-static {v3}, Lcom/bbm/d/a;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/vn;->a:Lcom/bbm/ui/b/j;
invoke-virtual {v0}, Lcom/bbm/ui/b/j;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/vn;->b:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->n(Lcom/bbm/ui/activities/MainActivity;)V
const-string v1, " - Lcom/bbm/ui/activities/vn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method