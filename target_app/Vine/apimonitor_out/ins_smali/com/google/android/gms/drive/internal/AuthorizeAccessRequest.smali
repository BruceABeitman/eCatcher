.class public Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Hw:Lcom/google/android/gms/drive/DriveId;
.field final Ip:J
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/b;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/b;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IJLcom/google/android/gms/drive/DriveId;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->xJ:I
iput-wide p2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->Ip:J
iput-object p4, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->Hw:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/b;->a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Landroid/os/Parcel;I)V
return-void
.end method