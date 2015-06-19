.class public final Lcom/google/android/gms/internal/gq;
.super Ljava/lang/Object;


# direct methods
.method public static aW(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown leaderboard collection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    const-string v0, "PUBLIC"

    :goto_1a
    return-object v0

    :pswitch_1b
    const-string v0, "SOCIAL"

    goto :goto_1a

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
