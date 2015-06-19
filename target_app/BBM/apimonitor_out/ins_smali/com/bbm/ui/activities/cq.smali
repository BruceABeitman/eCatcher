.class final Lcom/bbm/ui/activities/cq;
.super Ljava/lang/Object;
.source "ChannelOfficeHoursSettingsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/cq;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/cq; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/cq;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/cv;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;Lcom/bbm/ui/activities/cv;)Lcom/bbm/ui/activities/cv;
const-string v1, " - Lcom/bbm/ui/activities/cq; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method