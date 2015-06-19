.class public final Lcom/instagram/creation/video/c/a;
.super Ljava/lang/Object;
.source "VideoDurationUtil.java"


# direct methods
.method public static a(Landroid/media/MediaMetadataRetriever;)J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public static a(Ljava/io/File;)J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_11

    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v0

    return-wide v0

    :catch_11
    move-exception v0

    throw v0
.end method

.method public static a(Ljava/lang/String;)J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
