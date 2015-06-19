.class final Landroid/support/v4/app/g;
.super Landroid/support/v4/app/k;
.source "FakeActivityForMapFragment.java"
.field private final p:Landroid/support/v4/app/Fragment;
.method public final getComponentName()Landroid/content/ComponentName;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/g;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/app/g;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public final getWindow()Landroid/view/Window;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/g;->p:Landroid/support/v4/app/Fragment;
:goto_2
if-eqz v0, :cond_16
instance-of v1, v0, Landroid/support/v4/app/f;
if-eqz v1, :cond_11
check-cast v0, Landroid/support/v4/app/f;
iget-object v0, v0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, v0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;
iget-object v0, v0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;
goto :goto_2
:cond_16
const/4 v0, 0x0
goto :goto_10
.end method