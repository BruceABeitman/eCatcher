.class public Lcom/spotify/mobile/android/service/flow/login/a;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/a;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const v0, 0x7f03006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/a$1;

    invoke-direct {v1, p0, v0}, Lcom/spotify/mobile/android/service/flow/login/a$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/a;Landroid/view/View;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/a;->a:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method protected final a(Lcom/spotify/mobile/android/util/SpotifyError;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Lcom/spotify/mobile/android/util/SpotifyError;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/b;->a()V

    return-void
.end method

.method public final z()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
