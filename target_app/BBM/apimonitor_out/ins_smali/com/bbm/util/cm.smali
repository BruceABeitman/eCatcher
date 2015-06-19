.class final Lcom/bbm/util/cm;
.super Ljava/lang/Object;
.source "LocationServicesUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/o;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Landroid/view/View$OnClickListener;
.method constructor <init>(Lcom/bbm/ui/b/o;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.registers 4
iput-object p1, p0, Lcom/bbm/util/cm;->a:Lcom/bbm/ui/b/o;
iput-object p2, p0, Lcom/bbm/util/cm;->b:Landroid/app/Activity;
iput-object p3, p0, Lcom/bbm/util/cm;->c:Landroid/view/View$OnClickListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/cm; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "showEnableLocationDialog right button clicked"
const-class v1, Lcom/bbm/util/ck;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/util/cm;->a:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/util/cm;->b:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/util/cm;->c:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/util/cm;->c:Landroid/view/View$OnClickListener;
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_21
const-string v1, " - Lcom/bbm/util/cm; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method