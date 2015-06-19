.class public Lcom/google/android/gms/drive/internal/OnDriveIdResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  Do:Lcom/google/android/gms/drive/DriveId;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ab;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ab;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->wj:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->Do:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->Do:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ab;->a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;Landroid/os/Parcel;I)V
return-void
.end method