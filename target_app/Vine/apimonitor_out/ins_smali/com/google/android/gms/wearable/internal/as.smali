.class public Lcom/google/android/gms/wearable/internal/as;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alY:J
.field public final ama:Ljava/util/List;
.field public final statusCode:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/at;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/at;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/as;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IIJLjava/util/List;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/as;->versionCode:I
iput p2, p0, Lcom/google/android/gms/wearable/internal/as;->statusCode:I
iput-wide p3, p0, Lcom/google/android/gms/wearable/internal/as;->alY:J
iput-object p5, p0, Lcom/google/android/gms/wearable/internal/as;->ama:Ljava/util/List;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/at;->a(Lcom/google/android/gms/wearable/internal/as;Landroid/os/Parcel;I)V
return-void
.end method