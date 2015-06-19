.class final Lcom/google/android/gms/common/images/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/images/ImageManager;

.field private final b:Lcom/google/android/gms/common/images/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x1

    const-string v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/h;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    iget-object v1, v0, Lcom/google/android/gms/common/images/h;->a:Lcom/google/android/gms/common/images/i;

    iget-object v0, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/images/h;->a(Landroid/content/Context;Z)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/gms/common/images/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_20

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/images/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_64

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v3, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a(Lcom/google/android/gms/common/images/h;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    iget v2, v2, Lcom/google/android/gms/common/images/h;->b:I

    if-eq v2, v4, :cond_7a

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/e;->b:Lcom/google/android/gms/common/images/h;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->a()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7f
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->b()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->b()Ljava/util/HashSet;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a()V

    :cond_97
    monitor-exit v2

    goto :goto_20

    :catchall_99
    move-exception v0

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_99

    throw v0
.end method
