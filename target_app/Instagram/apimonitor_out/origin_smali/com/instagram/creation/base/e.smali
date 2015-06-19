.class public final Lcom/instagram/creation/base/e;
.super Ljava/lang/Object;
.source "GalleryUtil.java"


# direct methods
.method private static a(Ljava/io/File;Z)Landroid/content/Intent;
    .registers 5

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_26

    const-string v0, "image/*"

    :goto_c
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_25

    const-string v0, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    return-object v1

    :cond_26
    const-string v0, "video/*"

    goto :goto_c
.end method

.method public static a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_8

    if-eqz v0, :cond_12

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    :cond_12
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILjava/io/File;)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/instagram/creation/base/e;->a(Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/az;->capture_source:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;)V
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v3}, Lcom/instagram/creation/base/e;->a(Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/az;->capture_source:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/instagram/creation/base/e;->a(Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/az;->capture_source:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    return-void
.end method
