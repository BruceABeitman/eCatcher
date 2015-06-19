.class public final Lcom/instagram/creation/video/a;
.super Ljava/lang/Object;
.source "ClipStackManager.java"

# interfaces
.implements Lcom/instagram/creation/video/i/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/video/i/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/instagram/creation/video/i/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/creation/video/i/d;

    invoke-direct {v0}, Lcom/instagram/creation/video/i/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/a;->d:Z

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    new-instance v1, Lcom/instagram/creation/video/b;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/b;-><init>(Lcom/instagram/creation/video/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/d;->a(Lcom/instagram/creation/video/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/a;)Lcom/instagram/creation/video/i/d;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    return-object v0
.end method

.method private b(Lcom/instagram/creation/video/i/a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding an existing clip "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/i/d;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/i/a;->a(Lcom/instagram/creation/video/i/b;)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/a;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/instagram/creation/video/i/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    return-object v0
.end method

.method public final a(II)Lcom/instagram/creation/video/i/a;
    .registers 8

    new-instance v0, Lcom/instagram/creation/video/i/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/i/a;-><init>(J)V

    iput-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    sget v1, Lcom/instagram/creation/video/i/c;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p2}, Lcom/instagram/creation/video/i/a;->b(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    iget-object v1, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/i/a;->a(Lcom/instagram/creation/video/i/b;)V

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/c;

    invoke-interface {v0, p1}, Lcom/instagram/creation/video/c;->a(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "hasImportedClips"

    iget-boolean v1, p0, Lcom/instagram/creation/video/a;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/c;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/c;

    invoke-interface {v0, p1}, Lcom/instagram/creation/video/c;->c(Lcom/instagram/creation/video/i/a;)V

    goto :goto_6

    :cond_16
    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->m()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/c;

    invoke-interface {v0}, Lcom/instagram/creation/video/c;->c()V

    goto :goto_22

    :cond_32
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/i/a;->b(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/i/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/a;

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/i/a;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/creation/video/a;->d:Z

    return-void
.end method

.method public final b()Lcom/instagram/creation/video/i/d;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "hasImportedClips"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/a;->a(Z)V

    return-void
.end method

.method public final b(Lcom/instagram/creation/video/c;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->c()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->b()I

    move-result v0

    sget v2, Lcom/instagram/creation/video/i/c;->a:I

    if-eq v0, v2, :cond_6

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final e()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/i/a;->a(J)V

    return-void
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    sget v1, Lcom/instagram/creation/video/i/c;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/i/a;->a(J)V

    goto :goto_4
.end method

.method public final g()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->b()I

    move-result v0

    sget v1, Lcom/instagram/creation/video/i/c;->c:I

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final h()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/i/c;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    :cond_13
    return-void
.end method

.method public final i()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    :try_start_e
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v1}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string v2, "ClipStackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when retrieving metadata: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    const-string v0, "ClipStackManager"

    const-string v2, "No video file or too short; deleting"

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/instagram/creation/video/i/c;->d:I

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/i/a;->a(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->j()V

    goto :goto_30

    :cond_56
    const-string v0, "ClipStackManager"

    const-string v2, "No video file found"

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method public final j()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/common/u/a;->a(Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    :cond_19
    iget-object v1, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/i/d;->b(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method public final k()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/i/c;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    :cond_13
    return-void
.end method

.method public final l()I
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->c()I

    move-result v0

    rsub-int v0, v0, 0x3a98

    return v0
.end method

.method public final m()Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->l()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final n()Z
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->l()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final o()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->b()I

    move-result v0

    return v0
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/a;->d:Z

    return v0
.end method
