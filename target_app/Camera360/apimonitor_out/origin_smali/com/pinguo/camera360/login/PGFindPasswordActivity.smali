.class public Lcom/pinguo/camera360/login/PGFindPasswordActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PGFindPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;,
        Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;
    }
.end annotation


# static fields
.field public static final EMAIL_KEY:Ljava/lang/String; = "email_key"

.field public static final EXTRA_MESSAGE_FOR_EMAIL:Ljava/lang/String; = "email_message"


# instance fields
.field private mFragment:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

.field private mSavePageStateListener:Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030054

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->setContentView(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    const-string/jumbo v3, "email_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-static {v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->mFragment:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->mFragment:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->setSavePageStateListener(Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x7f0a01af

    iget-object v4, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->mFragment:Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_32
    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_13

    const-string/jumbo v3, "email_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->mSavePageStateListener:Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->mSavePageStateListener:Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;->saveState(Landroid/os/Bundle;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSavePageStateListener(Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity;->mSavePageStateListener:Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;

    return-void
.end method
