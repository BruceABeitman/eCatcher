.class public Lcom/bbm/ui/activities/AudioPlayerActivity;
.super Landroid/app/Activity;
.source "AudioPlayerActivity.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Landroid/media/MediaPlayer;

.field private c:Z

.field private d:Z

.field private e:Lcom/bbm/ui/AudioProgressBar;

.field private f:Lcom/bbm/ui/FooterActionBar;

.field private g:Ljava/io/FileInputStream;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->a:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->c:Z

    iput-boolean v2, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/AudioPlayerActivity;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget-boolean v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->c:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->d:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->e:Lcom/bbm/ui/AudioProgressBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/AudioProgressBar;->setCurrentTime(J)V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/s;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/s;-><init>(Lcom/bbm/ui/activities/AudioPlayerActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method

.method static synthetic b(Lcom/bbm/ui/activities/AudioPlayerActivity;)Lcom/bbm/ui/AudioProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->e:Lcom/bbm/ui/AudioProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/AudioPlayerActivity;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    const v1, 0x7f0201f3

    const v2, 0x7f0e0118

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    const v1, 0x7f0201f2

    const v2, 0x7f0e0117

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->a()V

    goto :goto_1d
.end method

.method static synthetic d(Lcom/bbm/ui/activities/AudioPlayerActivity;)V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iput-boolean v1, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->c:Z

    iput-boolean v1, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->d:Z

    return-void
.end method

.method static synthetic e(Lcom/bbm/ui/activities/AudioPlayerActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/AudioPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->setContentView(I)V

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/AudioProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->e:Lcom/bbm/ui/AudioProgressBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->e:Lcom/bbm/ui/AudioProgressBar;

    new-instance v1, Lcom/bbm/ui/activities/o;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/o;-><init>(Lcom/bbm/ui/activities/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/AudioProgressBar;->setOnAudioProgressBarTimeListener(Lcom/bbm/ui/k;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0201f2

    const v3, 0x7f0e0117

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/activities/p;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/p;-><init>(Lcom/bbm/ui/activities/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->h:Landroid/widget/TextView;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bbm/ui/activities/q;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/q;-><init>(Lcom/bbm/ui/activities/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-string v1, ""

    :try_start_6b
    invoke-virtual {p0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_93

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_93
    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->g:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->g:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->c:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_bb
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_bb} :catch_d0
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_bb} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_bb} :catch_110

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->e:Lcom/bbm/ui/AudioProgressBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/AudioProgressBar;->setTotalTime(J)V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->a()V

    :cond_cf
    :goto_cf
    return-void

    :catch_d0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IllegalStateException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_cf

    :catch_e6
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Path to file was: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_cf

    :catch_110
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnexpectedException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_cf
.end method

.method protected onDestroy()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->g:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_11

    :goto_5
    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->d:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iput-boolean v1, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->c:Z

    iput-boolean v1, p0, Lcom/bbm/ui/activities/AudioPlayerActivity;->d:Z

    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
