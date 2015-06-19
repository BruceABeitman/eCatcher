.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Trying to submit to a shut down executor"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->b(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$5;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_11
.end method
