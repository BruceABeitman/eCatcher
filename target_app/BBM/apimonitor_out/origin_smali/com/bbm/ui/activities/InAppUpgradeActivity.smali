.class public Lcom/bbm/ui/activities/InAppUpgradeActivity;
.super Lcom/bbm/setup/r;
.source "InAppUpgradeActivity.java"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/InAppUpgradeActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InAppUpgradeActivity;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InAppUpgradeActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/bbm/ui/activities/uh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/uh;-><init>(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V

    new-instance v1, Lcom/bbm/ui/activities/ug;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/ug;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0475

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0473

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e0476

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0474

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcom/bbm/ui/activities/ui;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ui;-><init>(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->b:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->b:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/InAppUpgradeActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_c
    return-void
.end method
