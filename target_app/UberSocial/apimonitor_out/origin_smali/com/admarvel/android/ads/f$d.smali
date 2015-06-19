.class Lcom/admarvel/android/ads/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/f;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/f;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    iget-object v2, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/f;->c(Lcom/admarvel/android/ads/f;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/f;->b(Lcom/admarvel/android/ads/f;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f;Z)Z

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0}, Lcom/admarvel/android/ads/f;->c(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0}, Lcom/admarvel/android/ads/f;->c(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v1}, Lcom/admarvel/android/ads/f;->d(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_30
    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    iget-object v0, v0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    iget-object v0, v0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->d()V

    :cond_3d
    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0}, Lcom/admarvel/android/ads/f;->e(Lcom/admarvel/android/ads/f;)I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/f;->seekTo(I)V

    :cond_4a
    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v1}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f;)I

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v1}, Lcom/admarvel/android/ads/f;->b(Lcom/admarvel/android/ads/f;)I

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/f;->i()V

    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v1}, Lcom/admarvel/android/ads/f;->f(Lcom/admarvel/android/ads/f;)I

    move-result v1

    if-ne v1, v4, :cond_6d

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->start()V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    iget-object v1, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/f;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_6c

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_6c

    goto :goto_6c

    :cond_80
    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0}, Lcom/admarvel/android/ads/f;->f(Lcom/admarvel/android/ads/f;)I

    move-result v0

    if-ne v0, v4, :cond_6c

    iget-object v0, p0, Lcom/admarvel/android/ads/f$d;->a:Lcom/admarvel/android/ads/f;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->start()V

    goto :goto_6c
.end method
