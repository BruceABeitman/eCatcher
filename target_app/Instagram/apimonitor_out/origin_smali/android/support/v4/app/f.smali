.class public Landroid/support/v4/app/f;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:I

.field f:Landroid/app/Dialog;

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput v0, p0, Landroid/support/v4/app/f;->a:I

    iput v0, p0, Landroid/support/v4/app/f;->b:I

    iput-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    iput-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    return-void
.end method

.method private c(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Landroid/support/v4/app/f;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    :cond_17
    iput-boolean v1, p0, Landroid/support/v4/app/f;->g:Z

    iget v0, p0, Landroid/support/v4/app/f;->e:I

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/support/v4/app/f;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/f;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    goto :goto_5

    :cond_2a
    invoke-virtual {p0}, Landroid/support/v4/app/f;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    if-eqz p1, :cond_3b

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->c()I

    goto :goto_5

    :cond_3b
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_5
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ag;Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/f;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    iput-boolean v1, p0, Landroid/support/v4/app/f;->g:Z

    invoke-virtual {p1}, Landroid/support/v4/app/ag;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    iget v0, p0, Landroid/support/v4/app/f;->e:I

    return v0
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/f;->c(Z)V

    return-void
.end method

.method public final a(I)V
    .registers 4

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v4/app/f;->a:I

    iget v0, p0, Landroid/support/v4/app/f;->a:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/support/v4/app/f;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    :cond_c
    const v0, 0x1030059

    iput v0, p0, Landroid/support/v4/app/f;->b:I

    :cond_11
    if-eqz p1, :cond_15

    iput p1, p0, Landroid/support/v4/app/f;->b:I

    :cond_15
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    :cond_a
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v4/app/f;->H:I

    if-nez v0, :cond_3a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-eqz p1, :cond_39

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->a:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->b:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->c:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->e:I

    :cond_39
    return-void

    :cond_3a
    move v0, v2

    goto :goto_a
.end method

.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    invoke-virtual {p1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    return-void
.end method

.method public final b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->c(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    iget v0, p0, Landroid/support/v4/app/f;->a:I

    packed-switch v0, :pswitch_data_42

    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/f;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_28
    new-instance v1, Landroid/support/v4/app/e;

    invoke-direct {v1, v0, p0}, Landroid/support/v4/app/e;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    move-object v0, v1

    goto :goto_8

    :pswitch_2f
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :pswitch_3a
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_14

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3a
        :pswitch_2f
    .end packed-switch
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/f;->c(Z)V

    return-void
.end method

.method public final c()Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/f;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/f;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Landroid/support/v4/app/f;->b:I

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/f;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_21
    invoke-virtual {p0}, Landroid/support/v4/app/f;->n()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_7

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_14
    iget v0, p0, Landroid/support/v4/app/f;->a:I

    if-eqz v0, :cond_1f

    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/f;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    iget v0, p0, Landroid/support/v4/app/f;->b:I

    if-eqz v0, :cond_2a

    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/f;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2a
    iget-boolean v0, p0, Landroid/support/v4/app/f;->c:Z

    if-nez v0, :cond_35

    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_35
    iget-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    if-nez v0, :cond_40

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_40
    iget v0, p0, Landroid/support/v4/app/f;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/f;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4c
    return-void
.end method

.method public final j_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->j_()V

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_f
    return-void
.end method

.method public final k_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->k_()V

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_c
    return-void
.end method

.method public final l_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->l_()V

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/f;->c(Z)V

    :cond_8
    return-void
.end method

.method public final p_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->p_()V

    iget-boolean v0, p0, Landroid/support/v4/app/f;->i:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->h:Z

    :cond_e
    return-void
.end method
