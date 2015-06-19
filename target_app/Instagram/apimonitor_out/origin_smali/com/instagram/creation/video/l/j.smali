.class public final Lcom/instagram/creation/video/l/j;
.super Ljava/lang/Object;
.source "VideoSessionUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/io/File;


# direct methods
.method private static a(JLandroid/content/Context;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget v2, Lcom/facebook/az;->video_file_name_format:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/instagram/creation/video/l/j;->b:Ljava/lang/String;

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "covers"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/video/l/j;->b:Ljava/lang/String;

    :cond_16
    sget-object v0, Lcom/instagram/creation/video/l/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->w()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/instagram/creation/video/l/j;->b()Ljava/io/File;

    move-result-object v0

    :goto_e
    new-instance v1, Ljava/io/File;

    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, p0}, Lcom/instagram/creation/video/l/j;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p0, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, p2}, Lcom/instagram/creation/video/l/j;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_session_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/instagram/creation/video/l/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording session started in folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    return-object p0
.end method

.method public static a(Lcom/instagram/creation/b/a/b;Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/creation/b/a/b;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instagram/creation/video/l/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_d
.end method

.method public static a(Lcom/instagram/creation/b/a/b;)V
    .registers 3

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/d/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->N()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->b(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/instagram/creation/video/l/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/instagram/creation/video/l/k;

    invoke-direct {v2, v0}, Lcom/instagram/creation/video/l/k;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_21
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v1, :cond_d

    :cond_c
    return-void

    :cond_d
    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_c

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/u/a;->b(Ljava/lang/String;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/instagram/creation/video/l/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/instagram/creation/video/l/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/instagram/creation/video/l/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static b()Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/instagram/creation/video/l/j;->d:Ljava/io/File;

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Instagram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/creation/video/l/j;->d:Ljava/io/File;

    :cond_13
    sget-object v0, Lcom/instagram/creation/video/l/j;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Lcom/instagram/creation/video/l/j;->d:Ljava/io/File;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/instagram/creation/video/l/j;->c:Ljava/lang/String;

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "music"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/video/l/j;->c:Ljava/lang/String;

    :cond_16
    sget-object v0, Lcom/instagram/creation/video/l/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/instagram/creation/video/l/j;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_recorded.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/instagram/creation/video/l/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-stitched.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "rendered_videos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/instagram/creation/video/l/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    return-object v0

    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static {v4}, Lcom/instagram/creation/video/l/j;->b(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_39

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method public static d(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->c()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/j;->a(Ljava/util/Collection;Ljava/io/File;)V

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/instagram/creation/video/l/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/j;->a(Ljava/util/Collection;Ljava/io/File;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/instagram/common/u/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/creation/video/l/l;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/l/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/instagram/creation/video/l/j;->a:Ljava/lang/String;

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "videos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/video/l/j;->a:Ljava/lang/String;

    :cond_16
    sget-object v0, Lcom/instagram/creation/video/l/j;->a:Ljava/lang/String;

    return-object v0
.end method
