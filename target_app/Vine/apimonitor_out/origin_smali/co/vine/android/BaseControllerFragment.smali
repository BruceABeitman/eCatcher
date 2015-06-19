.class public Lco/vine/android/BaseControllerFragment;
.super Lco/vine/android/BaseFragment;
.source "BaseControllerFragment.java"


# instance fields
.field protected mAppController:Lco/vine/android/client/AppController;

.field protected mAppSessionListener:Lco/vine/android/client/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppController()Lco/vine/android/client/AppController;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseControllerFragment;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/BaseControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseControllerFragment;->mAppController:Lco/vine/android/client/AppController;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/BaseControllerFragment;->mAppController:Lco/vine/android/client/AppController;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lco/vine/android/BaseControllerFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lco/vine/android/BaseControllerFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/BaseControllerFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lco/vine/android/BaseControllerFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseControllerFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    :cond_e
    return-void
.end method
