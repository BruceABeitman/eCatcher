.class Lcom/admarvel/android/ads/AdMarvelWebView$v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$v;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelWebView$v;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 4

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->c:Lcom/admarvel/android/ads/AdMarvelWebView$v;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->E(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z

    :cond_12
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->F(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->F(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->F(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_44
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->G(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->G(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_76

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->G(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_76
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->H(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$al;

    move-result-object v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$al;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelWebView$al;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelWebView$al;)Lcom/admarvel/android/ads/AdMarvelWebView$al;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->H(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$al;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9d
    return-void
.end method
