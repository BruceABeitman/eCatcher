.class public Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;

.field public final b:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<TE;>;"
        }
    .end annotation
.end field

.field public final c:J


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;Ljava/lang/Object;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;",
            "TE;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;

    invoke-static {p2}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->b:Lcom/google/common/base/Optional;

    iput-wide p3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->c:J

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->b:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->a()Z

    move-result v3

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;

    sget-object v4, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;

    if-ne v2, v4, :cond_22

    move v2, v0

    :goto_1c
    if-ne v3, v2, :cond_24

    :goto_1e
    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    return-void

    :cond_22
    move v2, v1

    goto :goto_1c

    :cond_24
    move v0, v1

    goto :goto_1e
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;Ljava/lang/Object;JB)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;Ljava/lang/Object;J)V

    return-void
.end method
