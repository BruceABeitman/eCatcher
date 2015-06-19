.class final Lcom/spotify/mobile/android/service/player/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/player/a/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/spotify/mobile/android/service/player/model/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/player/a/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/player/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/c$2;->a:Lcom/spotify/mobile/android/service/player/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/c;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/service/player/a/j;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c$2;->a:Lcom/spotify/mobile/android/service/player/a/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/c;->a(Lcom/spotify/mobile/android/service/player/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/player/a/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/c;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lcom/google/common/base/Optional;

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c$2;->a:Lcom/spotify/mobile/android/service/player/a/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/c;->b(Lcom/spotify/mobile/android/service/player/a/c;)Lcom/spotify/mobile/android/service/player/a/d;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/service/player/a/d;->a(Lcom/google/common/base/Optional;)V

    :cond_d
    return-void
.end method
