.class Lcom/twidroid/ui/themes/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/ui/themes/a/b;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/themes/a/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    iput-object p2, p0, Lcom/twidroid/ui/themes/a/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    iget-object v1, p0, Lcom/twidroid/ui/themes/a/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    invoke-static {v0}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    invoke-static {v0}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    invoke-static {v0}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    invoke-static {v0}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    invoke-static {v0}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/twidroid/ui/themes/a/b$1;->b:Lcom/twidroid/ui/themes/a/b;

    invoke-static {v0}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_4c} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4c} :catch_5f

    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    const-string v1, "SoundThemePlayer"

    const-string v2, "Can\'t play sound"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    :catch_56
    move-exception v0

    const-string v1, "SoundThemePlayer"

    const-string v2, "Can\'t play sound"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    :catch_5f
    move-exception v0

    const-string v1, "SoundThemePlayer"

    const-string v2, "Can\'t play sound"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method
