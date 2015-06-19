.class final Lcom/spotify/mobile/android/applink/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/player/a/g;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/applink/e;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/applink/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/j;->a:Lcom/spotify/mobile/android/applink/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/applink/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/j;-><init>(Lcom/spotify/mobile/android/applink/e;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/j;->a:Lcom/spotify/mobile/android/applink/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/applink/e;->g(Lcom/spotify/mobile/android/applink/e;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/j;->a:Lcom/spotify/mobile/android/applink/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/applink/e;->h(Lcom/spotify/mobile/android/applink/e;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/j;->a:Lcom/spotify/mobile/android/applink/e;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/applink/e;->a(I)V

    :cond_12
    return-void
.end method

.method public final a(Lcom/google/common/base/Optional;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/j;->a:Lcom/spotify/mobile/android/applink/e;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/spotify/mobile/android/service/player/model/b;->a(I)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/applink/e;->c(Lcom/spotify/mobile/android/applink/e;Lcom/google/common/base/Optional;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/d;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/j;->a:Lcom/spotify/mobile/android/applink/e;

    invoke-static {p1}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/applink/e;->b(Lcom/spotify/mobile/android/applink/e;Lcom/google/common/base/Optional;)V

    return-void
.end method
