.class public Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final CX:Ljava/lang/String;
.field final CY:Lcom/google/android/gms/drive/DriveId;
.field final Dk:[Ljava/lang/String;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ah;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ah;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->wj:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->CX:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->Dk:[Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->CY:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;-><init>(ILjava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ah;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;Landroid/os/Parcel;I)V
return-void
.end method