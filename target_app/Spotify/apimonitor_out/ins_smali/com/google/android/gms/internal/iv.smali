.class public final Lcom/google/android/gms/internal/iv;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:[I
.field private final b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/kl;
invoke-direct {v0}, Lcom/google/android/gms/internal/kl;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/iv;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iv;-><init>(I[I)V
return-void
.end method
.method constructor <init>(I[I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/iv;->b:I
iput-object p2, p0, Lcom/google/android/gms/internal/iv;->a:[I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/iv;->b:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/kl;->a(Lcom/google/android/gms/internal/iv;Landroid/os/Parcel;)V
return-void
.end method