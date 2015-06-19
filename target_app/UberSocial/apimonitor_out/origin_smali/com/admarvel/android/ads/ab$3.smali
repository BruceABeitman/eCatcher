.class final Lcom/admarvel/android/ads/ab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/ab;->m(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/ab$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/admarvel/android/ads/ab$3;->a:Landroid/content/Context;

    const-string v2, "adm_cache_files"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_40

    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_14
    if-ge v0, v2, :cond_2f

    aget-object v3, v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xcd140

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2e

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :catch_2e
    move-exception v0

    :cond_2f
    iget-object v0, p0, Lcom/admarvel/android/ads/ab$3;->a:Landroid/content/Context;

    const-string v1, "adm_viewport"

    const-string v2, "adm_video_cleanup_timestamp"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelUtils;->setPreferenceValueLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_40
    return-void
.end method
