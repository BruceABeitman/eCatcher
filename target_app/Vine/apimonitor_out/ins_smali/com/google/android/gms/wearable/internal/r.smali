.class public Lcom/google/android/gms/wearable/internal/r;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alJ:Lcom/google/android/gms/wearable/c;
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/s;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/s;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILcom/google/android/gms/wearable/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/r;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/r;->statusCode:I
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/r;->alJ:Lcom/google/android/gms/wearable/c;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/s;->a(Lcom/google/android/gms/wearable/internal/r;Landroid/os/Parcel;I)V
return-void
.end method