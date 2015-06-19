.class public final Lcom/google/android/gms/internal/gu;
.super Ljava/lang/Object;
.method public static aW(I)Ljava/lang/String;
.registers 4
packed-switch p0, :pswitch_data_22
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown time span "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_18
const-string v0, "DAILY"
:goto_1a
return-object v0
:pswitch_1b
const-string v0, "WEEKLY"
goto :goto_1a
:pswitch_1e
const-string v0, "ALL_TIME"
goto :goto_1a
nop
:pswitch_data_22
.packed-switch 0x0
:pswitch_18
:pswitch_1b
:pswitch_1e
.end packed-switch
.end method