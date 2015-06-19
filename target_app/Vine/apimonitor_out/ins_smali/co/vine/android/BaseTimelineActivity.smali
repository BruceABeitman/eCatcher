.class public abstract Lco/vine/android/BaseTimelineActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "BaseTimelineActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method protected abstract getCurrentTimeLineFragment()Lco/vine/android/BaseTimelineFragment;
.end method
.method protected isAutoCaptureIconEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onBackPressed()V
.registers 3
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {p0}, Lco/vine/android/BaseTimelineActivity;->getCurrentTimeLineFragment()Lco/vine/android/BaseTimelineFragment;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {v0}, Lco/vine/android/BaseTimelineFragment;->onBackPressed()Z
move-result v1
if-eqz v1, :cond_13
:goto_12
return-void
:cond_13
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onBackPressed()V
goto :goto_12
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 4
invoke-virtual {p0}, Lco/vine/android/BaseTimelineActivity;->isAutoCaptureIconEnabled()Z
move-result v0
if-eqz v0, :cond_15
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v0
if-nez v0, :cond_15
invoke-virtual {p0}, Lco/vine/android/BaseTimelineActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const/high16 v1, 0x7f10
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
:cond_15
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method protected onPause()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onPause()V
invoke-static {p0}, Lco/vine/android/util/LoopManager;->get(Landroid/content/Context;)Lco/vine/android/util/LoopManager;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/util/LoopManager;->save()V
return-void
.end method