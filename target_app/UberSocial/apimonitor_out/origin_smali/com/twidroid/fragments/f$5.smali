.class Lcom/twidroid/fragments/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/d/n;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;Lcom/twidroid/d/n;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/fragments/f$5;->c:Lcom/twidroid/fragments/f;

    iput-object p2, p0, Lcom/twidroid/fragments/f$5;->a:Lcom/twidroid/d/n;

    iput-object p3, p0, Lcom/twidroid/fragments/f$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .registers 5

    const-string v0, "SingleTweetFragment"

    const-string v1, "YouTube player init fail"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/f$5;->c:Lcom/twidroid/fragments/f;

    iget-object v1, p0, Lcom/twidroid/fragments/f$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Ljava/lang/String;)V

    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .registers 5

    if-nez p3, :cond_b

    iget-object v0, p0, Lcom/twidroid/fragments/f$5;->a:Lcom/twidroid/d/n;

    invoke-virtual {v0}, Lcom/twidroid/d/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
