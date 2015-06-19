.class public Lcom/google/android/gms/drive/internal/ListParentsRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Lcom/google/android/gms/drive/DriveId;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/x;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/x;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->b:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/x;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Landroid/os/Parcel;I)V
return-void
.end method