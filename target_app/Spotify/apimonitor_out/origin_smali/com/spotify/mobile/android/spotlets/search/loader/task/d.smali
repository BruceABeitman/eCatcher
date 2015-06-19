.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/d;
.super Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 9

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;Ljava/lang/Object;JB)V

    return-void
.end method
