.class public final Lcom/instagram/creation/video/g/c/d;
.super Ljava/lang/Object;
.source "VideoTrackExtractor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Lcom/instagram/creation/video/g/b/g;

.field private final b:Lcom/facebook/d/b/c;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/g/b/g;Lcom/facebook/d/b/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/video/g/c/d;->a:Lcom/instagram/creation/video/g/b/g;

    iput-object p2, p0, Lcom/instagram/creation/video/g/c/d;->b:Lcom/facebook/d/b/c;

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/instagram/creation/video/g/c/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/g/c/e;",
            ">;)",
            "Lcom/instagram/creation/video/g/c/e;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/g/c/e;

    iget-object v2, p0, Lcom/instagram/creation/video/g/c/d;->a:Lcom/instagram/creation/video/g/b/g;

    iget-object v2, v0, Lcom/instagram/creation/video/g/c/e;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/creation/video/g/b/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private b(Ljava/util/List;)Lcom/instagram/creation/video/g/c/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/g/c/e;",
            ">;)",
            "Lcom/instagram/creation/video/g/c/e;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/g/c/e;

    iget-object v2, p0, Lcom/instagram/creation/video/g/c/d;->a:Lcom/instagram/creation/video/g/b/g;

    iget-object v2, v0, Lcom/instagram/creation/video/g/c/e;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/creation/video/g/b/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/g/c/e;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/g/c/e;

    iget-object v0, v0, Lcom/instagram/creation/video/g/c/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tracks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-static {v2}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/String;)Lcom/instagram/common/i/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/media/MediaExtractor;)Lcom/instagram/creation/video/g/c/e;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_29

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    new-instance v5, Lcom/instagram/creation/video/g/c/e;

    invoke-direct {v5, v4, v3, v0}, Lcom/instagram/creation/video/g/c/e;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcom/instagram/creation/video/g/c/b;

    invoke-direct {v0}, Lcom/instagram/creation/video/g/c/b;-><init>()V

    throw v0

    :cond_35
    invoke-direct {p0, v1}, Lcom/instagram/creation/video/g/c/d;->a(Ljava/util/List;)Lcom/instagram/creation/video/g/c/e;

    move-result-object v0

    if-nez v0, :cond_54

    new-instance v0, Lcom/instagram/creation/video/g/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported video codec. Contained "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/instagram/creation/video/g/c/d;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_66

    iget-object v2, p0, Lcom/instagram/creation/video/g/c/d;->b:Lcom/facebook/d/b/c;

    const-string v3, "VideoTrackExtractor_multiple_video_tracks"

    invoke-static {v1}, Lcom/instagram/creation/video/g/c/d;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-object v0
.end method

.method public final b(Landroid/media/MediaExtractor;)Lcom/instagram/creation/video/g/c/e;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_29

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    new-instance v5, Lcom/instagram/creation/video/g/c/e;

    invoke-direct {v5, v4, v3, v0}, Lcom/instagram/creation/video/g/c/e;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    :cond_30
    :goto_30
    return-object v0

    :cond_31
    invoke-direct {p0, v1}, Lcom/instagram/creation/video/g/c/d;->b(Ljava/util/List;)Lcom/instagram/creation/video/g/c/e;

    move-result-object v0

    if-nez v0, :cond_50

    new-instance v0, Lcom/instagram/creation/video/g/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported audio codec. Contained "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/instagram/creation/video/g/c/d;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_30

    iget-object v2, p0, Lcom/instagram/creation/video/g/c/d;->b:Lcom/facebook/d/b/c;

    const-string v3, "VideoTrackExtractor_multiple_audio_tracks"

    invoke-static {v1}, Lcom/instagram/creation/video/g/c/d;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
