.class public final Lcom/google/android/gms/internal/gv;
.super Ljava/lang/Object;


# direct methods
.method public static aW(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    const-string v0, "MatchTurnStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown match turn status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TURN_STATUS_UNKNOWN"

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "TURN_STATUS_INVITED"

    goto :goto_19

    :pswitch_1d
    const-string v0, "TURN_STATUS_MY_TURN"

    goto :goto_19

    :pswitch_20
    const-string v0, "TURN_STATUS_THEIR_TURN"

    goto :goto_19

    :pswitch_23
    const-string v0, "TURN_STATUS_COMPLETE"

    goto :goto_19

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method
