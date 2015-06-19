.class public Lcom/google/android/gms/wearable/internal/aq;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alZ:I
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/ar;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ar;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/aq;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/aq;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/aq;->statusCode:I
iput p3, p0, Lcom/google/android/gms/wearable/internal/aq;->alZ:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/ar;->a(Lcom/google/android/gms/wearable/internal/aq;Landroid/os/Parcel;I)V
return-void
.end method