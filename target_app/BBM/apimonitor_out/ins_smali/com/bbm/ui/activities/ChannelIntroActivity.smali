.class public Lcom/bbm/ui/activities/ChannelIntroActivity;
.super Landroid/app/Activity;
.source "ChannelIntroActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/ChannelIntroActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03000f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelIntroActivity;->setContentView(I)V
const-string v1, " - Lcom/bbm/ui/activities/ChannelIntroActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_30
:goto_7
invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:pswitch_c
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelIntroActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelIntroActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "show_channels_intro_screen"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelIntroActivity;->finish()V
goto :goto_7
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_c
.end packed-switch
.end method