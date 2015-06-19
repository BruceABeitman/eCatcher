.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/StartFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    :cond_8
    :goto_8
    return v3

    :pswitch_9
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_8

    :pswitch_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->f(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;F)F

    goto :goto_8

    :cond_2e
    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)F

    move-result v1

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v2, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->i(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Z

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->j(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    goto :goto_8

    :cond_5e
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->k(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    goto :goto_8

    :pswitch_64
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->l(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    goto :goto_8

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_64
        :pswitch_1c
        :pswitch_64
    .end packed-switch
.end method
