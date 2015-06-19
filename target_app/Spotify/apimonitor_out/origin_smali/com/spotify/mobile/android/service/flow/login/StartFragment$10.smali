.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;
.super Lcom/spotify/mobile/android/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;I)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iput p2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;->a:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->e(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iget v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;->a:I

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
