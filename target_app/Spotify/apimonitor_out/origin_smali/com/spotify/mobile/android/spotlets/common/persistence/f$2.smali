.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$2;
.super Lcom/spotify/mobile/android/ui/fragments/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/e;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$2;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$2;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$2;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
