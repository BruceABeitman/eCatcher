.class public Lcom/google/android/gms/wearable/internal/x;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alM:Landroid/os/ParcelFileDescriptor;
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/y;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/y;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/x;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILandroid/os/ParcelFileDescriptor;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/x;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/x;->statusCode:I
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/x;->alM:Landroid/os/ParcelFileDescriptor;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
or-int/lit8 v0, p2, 0x1
invoke-static {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/y;->a(Lcom/google/android/gms/wearable/internal/x;Landroid/os/Parcel;I)V
return-void
.end method