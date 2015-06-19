.class public final Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/games/multiplayer/e;
.field private final a:I
.field private final b:Ljava/lang/String;
.field private final c:I
.field private final d:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/multiplayer/e;
invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/e;-><init>()V
sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/e;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;II)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->a:I
invoke-static {p2}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->b:Ljava/lang/String;
packed-switch p3, :pswitch_data_1c
const/4 v0, 0x0
:goto_11
invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Z)V
iput p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->c:I
iput p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->d:I
return-void
:pswitch_19
const/4 v0, 0x1
goto :goto_11
nop
:pswitch_data_1c
.packed-switch 0x0
:pswitch_19
:pswitch_19
:pswitch_19
:pswitch_19
:pswitch_19
:pswitch_19
.end packed-switch
.end method
.method public constructor <init>(Ljava/lang/String;II)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(ILjava/lang/String;II)V
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->a:I
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->c:I
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->d:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/e;->a(Lcom/google/android/gms/games/multiplayer/ParticipantResult;Landroid/os/Parcel;)V
return-void
.end method