.class public final Lcom/spotify/mobile/android/service/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/x;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/ComponentName;

.field private d:Z

.field private final e:Landroid/media/AudioManager;

.field private final f:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/service/w$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/w$1;-><init>(Lcom/spotify/mobile/android/service/w;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/w;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    iput-object p1, p0, Lcom/spotify/mobile/android/service/w;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/w;->e:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/w;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/w;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    return p1
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/x;)V
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    return v0
.end method

.method public final b()Z
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/spotify/mobile/android/service/w;->e:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/w;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_2d

    :goto_11
    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/x;->c()V

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x0

    goto :goto_11

    :cond_2f
    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    goto :goto_5
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    iput-boolean v2, p0, Lcom/spotify/mobile/android/service/w;->d:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->e:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/w;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0, v2, v2}, Lcom/spotify/mobile/android/service/x;->a(ZZ)V

    goto :goto_15
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->c:Landroid/content/ComponentName;

    if-nez v0, :cond_17

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/w;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/spotify/music/internal/receiver/MediaButtonReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/w;->c:Landroid/content/ComponentName;

    :cond_17
    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->e:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/w;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/x;->a()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->c:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->e:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/w;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/service/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/x;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/x;->b()V

    goto :goto_11

    :cond_21
    return-void
.end method
