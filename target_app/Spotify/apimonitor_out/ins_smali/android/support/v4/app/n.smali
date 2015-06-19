.class public Landroid/support/v4/app/n;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.field  a:I
.field  b:I
.field  c:Z
.field  d:Z
.field  e:I
.field  f:Landroid/app/Dialog;
.field  g:Z
.field  h:Z
.field  i:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
iput v0, p0, Landroid/support/v4/app/n;->a:I
iput v0, p0, Landroid/support/v4/app/n;->b:I
iput-boolean v1, p0, Landroid/support/v4/app/n;->c:Z
iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/n;->e:I
return-void
.end method
.method private d(Z)V
.registers 4
const/4 v1, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/n;->h:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Landroid/support/v4/app/n;->h:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/n;->i:Z
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
:cond_17
iput-boolean v1, p0, Landroid/support/v4/app/n;->g:Z
iget v0, p0, Landroid/support/v4/app/n;->e:I
if-ltz v0, :cond_28
iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
iget v1, p0, Landroid/support/v4/app/n;->e:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->b(I)V
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/n;->e:I
goto :goto_5
:cond_28
iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
if-eqz p1, :cond_37
invoke-virtual {v0}, Landroid/support/v4/app/w;->c()I
goto :goto_5
:cond_37
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
goto :goto_5
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/app/n;->d(Z)V
return-void
.end method
.method public final a(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V
iget-boolean v0, p0, Landroid/support/v4/app/n;->i:Z
if-nez v0, :cond_a
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/n;->h:Z
:cond_a
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
iget v0, p0, Landroid/support/v4/app/n;->G:I
if-nez v0, :cond_3a
move v0, v1
:goto_a
iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z
if-eqz p1, :cond_39
const-string v0, "android:style"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Landroid/support/v4/app/n;->a:I
const-string v0, "android:theme"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Landroid/support/v4/app/n;->b:I
const-string v0, "android:cancelable"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Landroid/support/v4/app/n;->c:Z
const-string v0, "android:showsDialog"
iget-boolean v1, p0, Landroid/support/v4/app/n;->d:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z
const-string v0, "android:backStackId"
const/4 v1, -0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Landroid/support/v4/app/n;->e:I
:cond_39
return-void
:cond_3a
move v0, v2
goto :goto_a
.end method
.method public final a(Landroid/support/v4/app/r;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/n;->h:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/n;->i:Z
invoke-virtual {p1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
return-void
.end method
.method public final b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/n;->d:Z
if-nez v0, :cond_9
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v0
:goto_8
return-object v0
:cond_9
invoke-virtual {p0}, Landroid/support/v4/app/n;->c()Landroid/app/Dialog;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
iget v0, p0, Landroid/support/v4/app/n;->a:I
packed-switch v0, :pswitch_data_44
:goto_14
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
if-eqz v0, :cond_39
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "layout_inflater"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
goto :goto_8
:pswitch_27
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x18
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
:pswitch_32
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z
goto :goto_14
:cond_39
iget-object v0, p0, Landroid/support/v4/app/n;->C:Landroid/support/v4/app/FragmentActivity;
const-string v1, "layout_inflater"
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
goto :goto_8
:pswitch_data_44
.packed-switch 0x1
:pswitch_32
:pswitch_32
:pswitch_27
.end packed-switch
.end method
.method public final b()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->b()V
iget-boolean v0, p0, Landroid/support/v4/app/n;->i:Z
if-nez v0, :cond_e
iget-boolean v0, p0, Landroid/support/v4/app/n;->h:Z
if-nez v0, :cond_e
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/n;->h:Z
:cond_e
return-void
.end method
.method public c()Landroid/app/Dialog;
.registers 4
new-instance v0, Landroid/app/Dialog;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
iget v2, p0, Landroid/support/v4/app/n;->b:I
invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
return-object v0
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V
iget-boolean v0, p0, Landroid/support/v4/app/n;->d:Z
if-nez v0, :cond_8
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_1a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "DialogFragment can not be attached to a container view"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iget-object v1, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
iget-boolean v1, p0, Landroid/support/v4/app/n;->c:Z
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
if-eqz p1, :cond_7
const-string v0, "android:savedDialogState"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_7
iget-object v1, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V
goto :goto_7
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_14
const-string v1, "android:savedDialogState"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
:cond_14
iget v0, p0, Landroid/support/v4/app/n;->a:I
if-eqz v0, :cond_1f
const-string v0, "android:style"
iget v1, p0, Landroid/support/v4/app/n;->a:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_1f
iget v0, p0, Landroid/support/v4/app/n;->b:I
if-eqz v0, :cond_2a
const-string v0, "android:theme"
iget v1, p0, Landroid/support/v4/app/n;->b:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_2a
iget-boolean v0, p0, Landroid/support/v4/app/n;->c:Z
if-nez v0, :cond_35
const-string v0, "android:cancelable"
iget-boolean v1, p0, Landroid/support/v4/app/n;->c:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_35
iget-boolean v0, p0, Landroid/support/v4/app/n;->d:Z
if-nez v0, :cond_40
const-string v0, "android:showsDialog"
iget-boolean v1, p0, Landroid/support/v4/app/n;->d:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_40
iget v0, p0, Landroid/support/v4/app/n;->e:I
const/4 v1, -0x1
if-eq v0, v1, :cond_4c
const-string v0, "android:backStackId"
iget v1, p0, Landroid/support/v4/app/n;->e:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_4c
return-void
.end method
.method public final f()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
if-eqz v0, :cond_12
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/n;->g:Z
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
:cond_12
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 2
return-void
.end method
.method public onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/n;->g:Z
if-nez v0, :cond_8
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/app/n;->d(Z)V
:cond_8
return-void
.end method
.method public final r_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->r_()V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
if-eqz v0, :cond_f
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/n;->g:Z
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_f
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v4/app/n;->f:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
:cond_c
return-void
.end method