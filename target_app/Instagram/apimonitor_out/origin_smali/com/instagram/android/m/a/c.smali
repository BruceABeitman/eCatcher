.class public abstract Lcom/instagram/android/m/a/c;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field protected a:Landroid/media/MediaPlayer;

.field protected b:Lcom/instagram/android/m/a/f;

.field protected c:Lcom/instagram/android/m/a/e;

.field protected d:Lcom/instagram/android/m/a/d;

.field protected e:I

.field protected f:Lcom/instagram/android/m/a/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    sget-object v0, Lcom/instagram/android/m/a/g;->a:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public abstract a(Landroid/widget/FrameLayout;)V
.end method

.method public final a(Lcom/instagram/android/m/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/m/a/c;->d:Lcom/instagram/android/m/a/d;

    return-void
.end method

.method public final a(Lcom/instagram/android/m/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/m/a/c;->c:Lcom/instagram/android/m/a/e;

    return-void
.end method

.method public final a(Lcom/instagram/android/m/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/m/a/c;->b:Lcom/instagram/android/m/a/f;

    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->a:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object v0, Lcom/instagram/android/m/a/g;->c:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->d:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->e:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->f:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->h:Lcom/instagram/android/m/a/g;

    if-ne v0, v1, :cond_3c

    :cond_18
    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    iget-object v1, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/instagram/android/m/a/g;->e:Lcom/instagram/android/m/a/g;

    iput-object v1, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->d:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_2b

    sget-object v1, Lcom/instagram/android/m/a/g;->h:Lcom/instagram/android/m/a/g;

    if-ne v0, v1, :cond_2f

    :cond_2b
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/m/a/c;->e:I

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    sget-object v1, Lcom/instagram/android/m/a/g;->f:Lcom/instagram/android/m/a/g;

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/m/a/c;->e:I

    goto :goto_2e

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoPlayer cannot play in state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->a:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {p0}, Lcom/instagram/android/m/a/c;->b()V

    sget-object v0, Lcom/instagram/android/m/a/g;->a:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    :cond_12
    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    invoke-virtual {p0}, Lcom/instagram/android/m/a/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/instagram/android/m/a/g;->j:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    return-void
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->e:Lcom/instagram/android/m/a/g;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->f:Lcom/instagram/android/m/a/g;

    if-ne v0, v1, :cond_15

    :cond_c
    sget-object v0, Lcom/instagram/android/m/a/g;->f:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_15
    return-void
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->f:Lcom/instagram/android/m/a/g;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final j()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->h:Lcom/instagram/android/m/a/g;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final k()Z
    .registers 5

    sget-object v0, Lcom/instagram/android/m/a/g;->d:Lcom/instagram/android/m/a/g;

    sget-object v1, Lcom/instagram/android/m/a/g;->e:Lcom/instagram/android/m/a/g;

    sget-object v2, Lcom/instagram/android/m/a/g;->f:Lcom/instagram/android/m/a/g;

    sget-object v3, Lcom/instagram/android/m/a/g;->h:Lcom/instagram/android/m/a/g;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final m()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lcom/instagram/android/m/a/c;->e:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    sget-object v0, Lcom/instagram/android/m/a/g;->h:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->d:Lcom/instagram/android/m/a/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->d:Lcom/instagram/android/m/a/d;

    invoke-interface {v0}, Lcom/instagram/android/m/a/d;->a()V

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/m/a/c;->e:I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->c:Lcom/instagram/android/m/a/e;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->c:Lcom/instagram/android/m/a/e;

    invoke-interface {v0, p2, p3}, Lcom/instagram/android/m/a/e;->a(II)Z

    move-result v0

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6

    const/16 v0, 0x2bc

    if-ne p2, v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPlayer Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    sget-object v0, Lcom/instagram/android/m/a/g;->d:Lcom/instagram/android/m/a/g;

    iput-object v0, p0, Lcom/instagram/android/m/a/c;->f:Lcom/instagram/android/m/a/g;

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->b:Lcom/instagram/android/m/a/f;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/android/m/a/c;->b:Lcom/instagram/android/m/a/f;

    invoke-interface {v0, p0}, Lcom/instagram/android/m/a/f;->a(Lcom/instagram/android/m/a/c;)V

    :cond_d
    return-void
.end method
