.class public Lcom/google/android/gms/wearable/internal/z;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alN:Lcom/google/android/gms/wearable/internal/ai;
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/aa;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/aa;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/z;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILcom/google/android/gms/wearable/internal/ai;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/z;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/z;->statusCode:I
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/z;->alN:Lcom/google/android/gms/wearable/internal/ai;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/aa;->a(Lcom/google/android/gms/wearable/internal/z;Landroid/os/Parcel;I)V
return-void
.end method