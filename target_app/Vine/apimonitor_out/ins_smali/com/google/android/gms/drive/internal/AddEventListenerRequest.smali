.class public Lcom/google/android/gms/drive/internal/AddEventListenerRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Hw:Lcom/google/android/gms/drive/DriveId;
.field final In:I
.field final Io:Landroid/app/PendingIntent;
.field final xJ:I
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
iput p1, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->Hw:Lcom/google/android/gms/drive/DriveId;
iput p3, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->In:I
iput-object p4, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->Io:Landroid/app/PendingIntent;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;ILandroid/app/PendingIntent;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(ILcom/google/android/gms/drive/DriveId;ILandroid/app/PendingIntent;)V
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