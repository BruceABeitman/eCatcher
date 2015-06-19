.class public Lcom/google/android/gms/drive/internal/CreateContentsRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/s;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/s;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>(I)V
return-void
.end method
.method constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->a:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/s;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Landroid/os/Parcel;I)V
return-void
.end method