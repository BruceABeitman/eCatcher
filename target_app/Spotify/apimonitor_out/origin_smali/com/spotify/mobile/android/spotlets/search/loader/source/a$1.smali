.class final Lcom/spotify/mobile/android/spotlets/search/loader/source/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/task/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
        ">;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/a$2;->a:[I

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TimeoutOrError is broken"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_17
    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->b:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;

    :goto_1f
    return-object v0

    :pswitch_20
    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timed out after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;Ljava/lang/Throwable;)V

    goto :goto_1f

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_17
        :pswitch_20
    .end packed-switch
.end method
