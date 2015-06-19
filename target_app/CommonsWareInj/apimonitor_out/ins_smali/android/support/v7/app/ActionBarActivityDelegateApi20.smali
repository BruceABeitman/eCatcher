.class  Landroid/support/v7/app/ActionBarActivityDelegateApi20;
.super Landroid/support/v7/app/ActionBarActivityDelegateJBMR2;
.source "ActionBarActivityDelegateApi20.java"
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateJBMR2;-><init>(Landroid/support/v7/app/ActionBarActivity;)V
return-void
.end method
.method  createWindowCallbackWrapper(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateApi20;Landroid/view/Window$Callback;)V
return-object v0
.end method