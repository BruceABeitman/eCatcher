.class public Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Hw:Lcom/google/android/gms/drive/DriveId;
.field final IG:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/m;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/m;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/CustomPropertyKey;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->Hw:Lcom/google/android/gms/drive/DriveId;
iput-object p3, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->IG:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/m;->a(Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;Landroid/os/Parcel;I)V
return-void
.end method