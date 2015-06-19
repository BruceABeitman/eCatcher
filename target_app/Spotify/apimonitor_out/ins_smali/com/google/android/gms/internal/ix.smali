.class public final Lcom/google/android/gms/internal/ix;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:[Ljava/lang/String;
.field  b:[[B
.field private final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/km;
invoke-direct {v0}, Lcom/google/android/gms/internal/km;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ix;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v0, 0x1
new-array v1, v2, [Ljava/lang/String;
new-array v2, v2, [[B
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ix;-><init>(I[Ljava/lang/String;[[B)V
return-void
.end method
.method constructor <init>(I[Ljava/lang/String;[[B)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ix;->c:I
iput-object p2, p0, Lcom/google/android/gms/internal/ix;->a:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/ix;->b:[[B
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ix;->c:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/km;->a(Lcom/google/android/gms/internal/ix;Landroid/os/Parcel;)V
return-void
.end method