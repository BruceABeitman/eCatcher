.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;
.super Lcom/spotify/mobile/android/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/StartFragment;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;I)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iput p2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;->a:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iget v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;->a:I

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
