.class public Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;
.super Landroid/app/DialogFragment;
.source "ErrorDialogFragments.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->getArguments()Landroid/os/Bundle;
move-result-object v1
invoke-static {p1, p2, v0, v1}, Lde/greenrobot/event/util/ErrorDialogFragments;->handleOnClick(Landroid/content/DialogInterface;ILandroid/app/Activity;Landroid/os/Bundle;)V
const-string v1, " - Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.registers 4
invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->getArguments()Landroid/os/Bundle;
move-result-object v1
invoke-static {v0, v1, p0}, Lde/greenrobot/event/util/ErrorDialogFragments;->createDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
move-result-object v0
return-object v0
.end method