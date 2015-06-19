.class public final Lcom/google/android/gms/internal/oi;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_24

    const-string v0, "RequestType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UNKNOWN_TYPE"

    :goto_1d
    return-object v0

    :pswitch_1e
    const-string v0, "GIFT"

    goto :goto_1d

    :pswitch_21
    const-string v0, "WISH"

    goto :goto_1d

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method
