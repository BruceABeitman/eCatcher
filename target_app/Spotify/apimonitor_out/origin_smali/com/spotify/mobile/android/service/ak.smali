.class final Lcom/spotify/mobile/android/service/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/ai;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/aj;

.field private b:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/service/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/aj;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/ak;-><init>(Lcom/spotify/mobile/android/service/aj;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->a(Lcom/spotify/mobile/android/service/aj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/aj;->b(Lcom/spotify/mobile/android/service/aj;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {p1}, Lcom/spotify/mobile/android/service/aj;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/aj;->a(Lcom/spotify/mobile/android/service/aj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->e(Lcom/spotify/mobile/android/service/aj;)V

    monitor-exit v1

    return-void

    :cond_29
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/aj;->a(Lcom/spotify/mobile/android/service/aj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->c(Lcom/spotify/mobile/android/service/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->d(Lcom/spotify/mobile/android/service/aj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_47

    goto :goto_22

    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->a(Lcom/spotify/mobile/android/service/aj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->e(Lcom/spotify/mobile/android/service/aj;)V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/service/ak;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    if-nez v2, :cond_23

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ak;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
