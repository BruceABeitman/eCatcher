.class public Lcom/twidroid/activity/OpenSourceLicenses;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/OpenSourceLicenses;->setContentView(I)V

    const v0, 0x7f0c0212

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/OpenSourceLicenses;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/OpenSourceLicenses;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
