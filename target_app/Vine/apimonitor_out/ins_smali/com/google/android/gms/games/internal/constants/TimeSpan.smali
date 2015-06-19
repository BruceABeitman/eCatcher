.class public final Lcom/google/android/gms/games/internal/constants/TimeSpan;
.super Ljava/lang/Object;
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "Uninstantiable"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
.end method
.method public static cm(I)Ljava/lang/String;
.registers 4
packed-switch p0, :pswitch_data_26
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown time span "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1c
const-string v0, "DAILY"
:goto_1e
return-object v0
:pswitch_1f
const-string v0, "WEEKLY"
goto :goto_1e
:pswitch_22
const-string v0, "ALL_TIME"
goto :goto_1e
nop
:pswitch_data_26
.packed-switch 0x0
:pswitch_1c
:pswitch_1f
:pswitch_22
.end packed-switch
.end method