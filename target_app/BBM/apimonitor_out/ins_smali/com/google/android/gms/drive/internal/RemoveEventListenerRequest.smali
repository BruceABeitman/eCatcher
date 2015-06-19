.class public Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final CS:Lcom/google/android/gms/drive/DriveId;
.field final Dm:I
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/aj;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/aj;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->wj:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CS:Lcom/google/android/gms/drive/DriveId;
iput p3, p0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->Dm:I
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;I)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;-><init>(ILcom/google/android/gms/drive/DriveId;I)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/aj;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Landroid/os/Parcel;I)V
return-void
.end method