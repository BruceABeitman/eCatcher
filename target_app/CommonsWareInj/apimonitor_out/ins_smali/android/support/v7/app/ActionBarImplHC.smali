.class  Landroid/support/v7/app/ActionBarImplHC;
.super Landroid/support/v7/app/ActionBarImplBase;
.source "ActionBarImplHC.java"
.implements Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;
.field private mCurActionMode:Landroid/view/ActionMode;
.field final mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarImplBase;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V
sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_root:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
iput-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V
:cond_16
return-void
.end method
.method static synthetic access$002(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode;)Landroid/view/ActionMode;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;
return-object p1
.end method
.method public hide()V
.registers 2
invoke-super {p0}, Landroid/support/v7/app/ActionBarImplBase;->hide()V
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
:cond_c
return-void
.end method
.method  isShowHideAnimationEnabled()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;
if-nez v0, :cond_c
invoke-super {p0}, Landroid/support/v7/app/ActionBarImplBase;->isShowHideAnimationEnabled()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public onActionModeForChild(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode$Callback;)V
return-object v0
.end method
.method public show()V
.registers 2
invoke-super {p0}, Landroid/support/v7/app/ActionBarImplBase;->show()V
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
:cond_c
return-void
.end method