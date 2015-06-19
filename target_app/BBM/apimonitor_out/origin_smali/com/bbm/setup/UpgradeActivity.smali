.class public Lcom/bbm/setup/UpgradeActivity;
.super Lcom/bbm/setup/r;
.source "UpgradeActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/bbm/setup/UpgradeActivity;->setContentView(I)V

    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcom/bbm/setup/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/setup/al;

    invoke-direct {v1, p0}, Lcom/bbm/setup/al;-><init>(Lcom/bbm/setup/UpgradeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
