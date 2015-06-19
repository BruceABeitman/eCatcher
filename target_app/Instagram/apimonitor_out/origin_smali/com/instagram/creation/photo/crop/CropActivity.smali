.class public Lcom/instagram/creation/photo/crop/CropActivity;
.super Lcom/instagram/base/activity/d;
.source "CropActivity.java"

# interfaces
.implements Lcom/instagram/creation/photo/crop/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    return-void
.end method

.method private h()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/instagram/creation/photo/crop/CropActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/photo/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->finish()V

    return-void
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/CropActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->h()V

    sget v0, Lcom/facebook/aw;->activity_single_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/CropActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/photo/crop/b;

    invoke-direct {v1}, Lcom/instagram/creation/photo/crop/b;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    :cond_37
    return-void
.end method
