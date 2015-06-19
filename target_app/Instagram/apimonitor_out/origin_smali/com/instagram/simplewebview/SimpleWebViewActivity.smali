.class public Lcom/instagram/simplewebview/SimpleWebViewActivity;
.super Lcom/instagram/base/activity/a;
.source "SimpleWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/simplewebview/SimpleWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SimpleWebViewFragment.ARGUMENT_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SimpleWebViewFragment.ARGUMENT_TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final h()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2c

    new-instance v0, Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-direct {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    :cond_2c
    return-void
.end method
