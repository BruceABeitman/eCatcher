.class public Lcom/google/android/gms/games/internal/ConnectionInfo;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;
.field private final Nk:Ljava/lang/String;
.field private final Nl:I
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;
invoke-direct {v0}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->Nk:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->Nl:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public gR()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->Nk:Ljava/lang/String;
return-object v0
.end method
.method public gS()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->Nl:I
return v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->a(Lcom/google/android/gms/games/internal/ConnectionInfo;Landroid/os/Parcel;I)V
return-void
.end method