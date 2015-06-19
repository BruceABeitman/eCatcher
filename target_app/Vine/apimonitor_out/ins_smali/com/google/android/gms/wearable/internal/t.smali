.class public Lcom/google/android/gms/wearable/internal/t;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alK:Ljava/util/List;
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/u;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/u;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/t;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILjava/util/List;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/t;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/t;->statusCode:I
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/t;->alK:Ljava/util/List;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/u;->a(Lcom/google/android/gms/wearable/internal/t;Landroid/os/Parcel;I)V
return-void
.end method