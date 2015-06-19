.class public Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.field final c:I
.field final d:Ljava/lang/String;
.field final e:Lcom/google/android/gms/drive/DriveId;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/t;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/t;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->b:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
iput p3, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->c:I
iput-object p4, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->d:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->e:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
.registers 11
const/4 v1, 0x1
move-object v0, p0
move-object v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/t;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;Landroid/os/Parcel;I)V
return-void
.end method