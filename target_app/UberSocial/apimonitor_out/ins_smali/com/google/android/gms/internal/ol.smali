.class public final Lcom/google/android/gms/internal/ol;
.super Ljava/lang/Object;
.method public static a(I)Ljava/lang/String;
.registers 4
packed-switch p0, :pswitch_data_2a
const-string v0, "MatchTurnStatus"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown match turn status: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "TURN_STATUS_UNKNOWN"
:goto_1d
return-object v0
:pswitch_1e
const-string v0, "TURN_STATUS_INVITED"
goto :goto_1d
:pswitch_21
const-string v0, "TURN_STATUS_MY_TURN"
goto :goto_1d
:pswitch_24
const-string v0, "TURN_STATUS_THEIR_TURN"
goto :goto_1d
:pswitch_27
const-string v0, "TURN_STATUS_COMPLETE"
goto :goto_1d
:pswitch_data_2a
.packed-switch 0x0
:pswitch_1e
:pswitch_21
:pswitch_24
:pswitch_27
.end packed-switch
.end method