.class public Lcom/google/android/gms/wearable/internal/v;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alL:Lcom/google/android/gms/wearable/internal/m;
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/w;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/w;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/v;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILcom/google/android/gms/wearable/internal/m;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/v;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/v;->statusCode:I
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/v;->alL:Lcom/google/android/gms/wearable/internal/m;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/w;->a(Lcom/google/android/gms/wearable/internal/v;Landroid/os/Parcel;I)V
return-void
.end method