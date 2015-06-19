.class final Lcom/bbm/ui/activities/cs;
.super Ljava/lang/Object;
.source "ChannelOfficeHoursSettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 7
:try_start_0
iget-object v1, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/cv;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;Lcom/bbm/ui/activities/cv;)Lcom/bbm/ui/activities/cv;
iget-object v0, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Lcom/bbm/ui/activities/cv;
move-result-object v0
iget v1, v0, Lcom/bbm/ui/activities/cv;->a:I
iget-object v0, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Lcom/bbm/ui/activities/cv;
move-result-object v0
iget-object v0, v0, Lcom/bbm/ui/activities/cv;->b:Lcom/bbm/ui/activities/cx;
iget-object v0, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/cw;
iget-object v2, v0, Lcom/bbm/ui/activities/cw;->b:Landroid/view/View;
new-instance v3, Lorg/json/JSONObject;
iget-object v0, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
if-eqz p2, :cond_53
const/4 v0, 0x0
:goto_41
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
const-string v0, "available"
invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/bbm/ui/activities/cs;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_52
:try_end_52
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_56
return-void
:cond_53
const/16 v0, 0x8
goto :goto_41
:catch_56
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_52
.end method