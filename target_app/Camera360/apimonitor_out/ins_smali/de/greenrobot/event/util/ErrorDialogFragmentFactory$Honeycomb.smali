.class public Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;
.super Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"
.method public constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
.registers 2
invoke-direct {p0, p1}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;-><init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
return-void
.end method
.method protected createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
.registers 4
new-instance v0, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;
invoke-direct {v0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;-><init>()V
invoke-virtual {v0, p2}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->setArguments(Landroid/os/Bundle;)V
return-object v0
.end method
.method protected bridge synthetic createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
move-result-object v0
return-object v0
.end method