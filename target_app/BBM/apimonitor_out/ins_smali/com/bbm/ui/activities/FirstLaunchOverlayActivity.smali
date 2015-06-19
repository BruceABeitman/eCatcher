.class public Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;
.super Landroid/app/Activity;
.source "FirstLaunchOverlayActivity.java"
.field private a:Landroid/widget/ViewFlipper;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/FirstLaunchOverlayActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030024
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->setContentView(I)V
const v0, 0x7f0a0180
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ViewFlipper;
iput-object v0, p0, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->a:Landroid/widget/ViewFlipper;
iget-object v0, p0, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->a:Landroid/widget/ViewFlipper;
const v1, 0x7f040009
invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->a:Landroid/widget/ViewFlipper;
const v1, 0x7f04000b
invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V
const-string v1, " - Lcom/bbm/ui/activities/FirstLaunchOverlayActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_20
:goto_7
invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:pswitch_c
iget-object v0, p0, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->a:Landroid/widget/ViewFlipper;
invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_19
invoke-virtual {p0}, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->finish()V
goto :goto_7
:cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/FirstLaunchOverlayActivity;->a:Landroid/widget/ViewFlipper;
invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V
goto :goto_7
nop
:pswitch_data_20
.packed-switch 0x1
:pswitch_c
.end packed-switch
.end method