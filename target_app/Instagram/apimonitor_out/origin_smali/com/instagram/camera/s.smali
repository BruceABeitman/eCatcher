.class public final Lcom/instagram/camera/s;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Landroid/media/MediaPlayer;

.field private c:I

.field private d:Z

.field private e:Landroid/content/res/AssetFileDescriptor;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/camera/s;->c:I

    iput-object p1, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    const/4 v0, 0x3

    iput v0, p0, Lcom/instagram/camera/s;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/camera/s;->a:Ljava/lang/Thread;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/camera/s;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/instagram/camera/s;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_10
    monitor-enter p0

    :try_start_11
    iget v0, p0, Lcom/instagram/camera/s;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/camera/s;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/camera/s;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/instagram/camera/s;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_2b

    :try_start_d
    iget-object v0, p0, Lcom/instagram/camera/s;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_30

    :goto_12
    iput-object v1, p0, Lcom/instagram/camera/s;->a:Ljava/lang/Thread;

    :cond_14
    iget-object v0, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1f

    :try_start_18
    iget-object v0, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_2e

    :goto_1d
    iput-object v1, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    :cond_1f
    iget-object v0, p0, Lcom/instagram/camera/s;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/instagram/camera/s;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/instagram/camera/s;->b:Landroid/media/MediaPlayer;

    :cond_2a
    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_1d

    :catch_30
    move-exception v0

    goto :goto_12
.end method

.method public final run()V
    .registers 7

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/camera/s;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_34

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iget v1, p0, Lcom/instagram/camera/s;->f:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iput-object v0, p0, Lcom/instagram/camera/s;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/camera/s;->e:Landroid/content/res/AssetFileDescriptor;

    :cond_34
    monitor-enter p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_46

    :goto_35
    :try_start_35
    iget-boolean v0, p0, Lcom/instagram/camera/s;->d:Z

    if-eqz v0, :cond_3b

    monitor-exit p0

    return-void

    :cond_3b
    iget v0, p0, Lcom/instagram/camera/s;->c:I

    if-gtz v0, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    goto :goto_35

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0

    throw v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    const-string v1, "SoundPlayer"

    const-string v2, "Error playing sound"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4f
    :try_start_4f
    iget v0, p0, Lcom/instagram/camera/s;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instagram/camera/s;->c:I

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_43

    :try_start_56
    iget-object v0, p0, Lcom/instagram/camera/s;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_46

    goto :goto_0
.end method
