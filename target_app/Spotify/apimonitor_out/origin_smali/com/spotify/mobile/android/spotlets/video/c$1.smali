.class final Lcom/spotify/mobile/android/spotlets/video/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/video/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/c$1;->a:Lcom/spotify/mobile/android/spotlets/video/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$1;->a:Lcom/spotify/mobile/android/spotlets/video/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    const-string v0, "Hide animation started"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
