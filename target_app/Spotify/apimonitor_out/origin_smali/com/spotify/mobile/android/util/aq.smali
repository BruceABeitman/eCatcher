.class public final Lcom/spotify/mobile/android/util/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/TextView;II)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->c(I)Z

    move-result v2

    invoke-static {p2, p3}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(II)Z

    move-result v3

    invoke-static {p2, p3}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b(II)Z

    move-result v0

    if-nez v2, :cond_14

    if-nez v3, :cond_14

    if-eqz v0, :cond_53

    :cond_14
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v4, v0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;

    if-eqz v4, :cond_3f

    check-cast v0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;

    :goto_20
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_45

    sget-object v3, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->b:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;

    invoke-virtual {v0, v3}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->a(Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;)V

    const v0, 0x7f0f022a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3d
    move v0, v2

    :goto_3e
    return v0

    :cond_3f
    new-instance v0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;

    invoke-direct {v0, p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_20

    :cond_45
    if-eqz v3, :cond_4d

    sget-object v1, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->a:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->a(Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;)V

    goto :goto_3d

    :cond_4d
    sget-object v1, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->c:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->a(Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;)V

    goto :goto_3d

    :cond_53
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_3e
.end method
