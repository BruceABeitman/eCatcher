.class public Lcom/bbm/ui/activities/BBMFragmentTestActivity;
.super Landroid/app/Activity;
.source "BBMFragmentTestActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x12345678

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BBMFragmentTestActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
