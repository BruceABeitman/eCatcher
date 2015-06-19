.class Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;Lcom/spotify/mobile/android/core/internal/SoundDriver$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;-><init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V

    return-void
.end method


# virtual methods
.method public onBufferUnderrun()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    #calls: Lcom/spotify/mobile/android/core/internal/SoundDriver;->onBufferUnderrun()V
    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->access$200(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    #calls: Lcom/spotify/mobile/android/core/internal/SoundDriver;->onDestroy()V
    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->access$300(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V

    return-void
.end method

.method public onFlush()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;->this$0:Lcom/spotify/mobile/android/core/internal/SoundDriver;

    #calls: Lcom/spotify/mobile/android/core/internal/SoundDriver;->onFlush()V
    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->access$400(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V

    return-void
.end method
