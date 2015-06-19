.class public Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Lcom/google/android/gms/drive/DriveId;
.field final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/l;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/l;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->b:Lcom/google/android/gms/drive/DriveId;
iput p3, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->c:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/l;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Landroid/os/Parcel;I)V
return-void
.end method