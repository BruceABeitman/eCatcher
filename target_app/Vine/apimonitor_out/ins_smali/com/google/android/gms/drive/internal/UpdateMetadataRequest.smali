.class public Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Ir:Lcom/google/android/gms/drive/DriveId;
.field final Is:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ay;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ay;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->Ir:Lcom/google/android/gms/drive/DriveId;
iput-object p3, p0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->Is:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ay;->a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Landroid/os/Parcel;I)V
return-void
.end method