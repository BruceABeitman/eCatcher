.class public final Lcom/google/android/gms/internal/ju;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:J
.field  b:J
.field private final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/kt;
invoke-direct {v0}, Lcom/google/android/gms/internal/kt;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ju;->c:I
return-void
.end method
.method constructor <init>(IJJ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ju;->c:I
iput-wide p2, p0, Lcom/google/android/gms/internal/ju;->a:J
iput-wide p4, p0, Lcom/google/android/gms/internal/ju;->b:J
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ju;->c:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/ju;Landroid/os/Parcel;)V
return-void
.end method