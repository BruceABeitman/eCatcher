.class public Lcom/google/android/gms/drive/internal/AddEventListenerRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Lcom/google/android/gms/drive/DriveId;
.field final c:I
.field final d:Landroid/app/PendingIntent;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/a;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/a;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ILandroid/app/PendingIntent;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->b:Lcom/google/android/gms/drive/DriveId;
iput p3, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->c:I
iput-object p4, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->d:Landroid/app/PendingIntent;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/a;->a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Landroid/os/Parcel;I)V
return-void
.end method