.class public final Lcom/spotify/mobile/android/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;

.field private d:Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/service/b;->b:I

    new-instance v0, Lcom/spotify/mobile/android/service/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/b$1;-><init>(Lcom/spotify/mobile/android/service/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b;->c:Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;

    new-instance v0, Lcom/spotify/mobile/android/service/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/b$2;-><init>(Lcom/spotify/mobile/android/service/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b;->d:Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/b;I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/service/b;->b:I

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/b;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/service/b;->b:I

    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/b;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/spotify/mobile/android/service/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.extra.CONTENT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b;->d:Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->addListener(Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b;->c:Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->addListener(Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b;->d:Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->removeListener(Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b;->c:Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->removeListener(Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;)V

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/b;->b:I

    return v0
.end method

.method public final d()V
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/b;->b:I

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->startDuckingAudio(I)V

    return-void
.end method

.method public final e()V
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/b;->b:I

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->stopDuckingAudio(I)V

    return-void
.end method
