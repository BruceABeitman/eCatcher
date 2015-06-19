.class public final Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;


# direct methods
.method public static aW(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_20

    const-string v0, "RequestType"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown request type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UNKNOWN_TYPE"

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "GIFT"

    goto :goto_19

    :pswitch_1d
    const-string v0, "WISH"

    goto :goto_19

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method
