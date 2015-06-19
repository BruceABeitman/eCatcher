.class public Lcom/pinguo/camera360/camera/activity/AppScreenSaver;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "AppScreenSaver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private button:Landroid/widget/Button;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->textView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->button:Landroid/widget/Button;

    return-void
.end method

.method public static startMe(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->requestWindowFeature(I)Z

    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->setContentView(I)V

    const v0, 0x7f0a0237

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080108

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method
