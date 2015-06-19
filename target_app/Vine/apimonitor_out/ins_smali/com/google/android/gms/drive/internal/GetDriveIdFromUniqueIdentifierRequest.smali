.class public Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Jm:Ljava/lang/String;
.field final Jn:Z
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/y;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/y;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->Jm:Ljava/lang/String;
iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->Jn:Z
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/y;->a(Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;Landroid/os/Parcel;I)V
return-void
.end method