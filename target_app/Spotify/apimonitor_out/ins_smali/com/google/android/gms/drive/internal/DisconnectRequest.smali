.class public Lcom/google/android/gms/drive/internal/DisconnectRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/v;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/v;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/DisconnectRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/drive/internal/DisconnectRequest;-><init>(I)V
return-void
.end method
.method constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/DisconnectRequest;->a:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/drive/internal/v;->a(Lcom/google/android/gms/drive/internal/DisconnectRequest;Landroid/os/Parcel;)V
return-void
.end method