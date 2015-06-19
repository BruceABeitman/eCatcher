.class final Lcom/spotify/mobile/android/service/player/model/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/player/model/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/player/model/b;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .registers 1

    return-void
.end method
