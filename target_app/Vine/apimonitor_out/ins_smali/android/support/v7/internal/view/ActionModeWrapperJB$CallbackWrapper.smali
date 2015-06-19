.class public Landroid/support/v7/internal/view/ActionModeWrapperJB$CallbackWrapper;
.super Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;
.source "ActionModeWrapperJB.java"
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
return-void
.end method
.method protected createActionModeWrapper(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/ActionModeWrapper;
.registers 4
new-instance v0, Landroid/support/v7/internal/view/ActionModeWrapperJB;
invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapperJB;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V
return-object v0
.end method