.class public Lco/vine/android/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"
.field public static final ARG_ACTION:Ljava/lang/String; = "action"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public static prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;
.registers 4
.parameter
.end parameter
if-eqz p0, :cond_1c
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_16
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
:goto_c
const-string v1, "action"
invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_15
return-object v0
:cond_16
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
goto :goto_c
:cond_1c
const/4 v0, 0x0
goto :goto_15
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lco/vine/android/BaseFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V
const-string v0, "Fragment"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " - "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/flurry/android/FlurryAgent;->onPageView()V
const-string v1, " - Lco/vine/android/BaseFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setActionBarColor()V
.registers 3
invoke-virtual {p0}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseActionBarActivity;
if-eqz v1, :cond_d
check-cast v0, Lco/vine/android/BaseActionBarActivity;
invoke-virtual {v0}, Lco/vine/android/BaseActionBarActivity;->setActionBarColor()V
:cond_d
return-void
.end method
.method public setActionBarColor(I)V
.registers 4
invoke-virtual {p0}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseActionBarActivity;
if-eqz v1, :cond_d
check-cast v0, Lco/vine/android/BaseActionBarActivity;
invoke-virtual {v0, p1}, Lco/vine/android/BaseActionBarActivity;->setActionBarColor(I)V
:cond_d
return-void
.end method
.method public setActionBarTransition(Landroid/graphics/drawable/TransitionDrawable;)V
.registers 4
invoke-virtual {p0}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseActionBarActivity;
if-eqz v1, :cond_d
check-cast v0, Lco/vine/android/BaseActionBarActivity;
invoke-virtual {v0, p1}, Lco/vine/android/BaseActionBarActivity;->setActionBarTransition(Landroid/graphics/drawable/TransitionDrawable;)V
:cond_d
return-void
.end method