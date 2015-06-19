.class Lcom/spotify/mobile/android/core/internal/SoundDriver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/core/internal/SoundDriver;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    #getter for: Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->access$000(Lcom/spotify/mobile/android/core/internal/SoundDriver;)Landroid/media/AudioTrack;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    #getter for: Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v2}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->access$000(Lcom/spotify/mobile/android/core/internal/SoundDriver;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;->onEqualizerShouldBeEnabled(I)V

    goto :goto_11
.end method
