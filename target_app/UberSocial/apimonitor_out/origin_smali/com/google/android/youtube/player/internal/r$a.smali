.class final Lcom/google/android/youtube/player/internal/r$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/r;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_1c
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/r;->b(Lcom/google/android/youtube/player/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r;->f()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/r;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/player/internal/t$a;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/t$a;->a()V

    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_43

    goto :goto_f

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_46
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_52

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r$a;->a:Lcom/google/android/youtube/player/internal/r;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_52
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_5b

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    :cond_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/player/internal/r$b;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r$b;->a()V

    goto :goto_f
.end method
