.class public final Lcom/google/android/gms/internal/hw$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hy;
.field final GW:Ljava/lang/String;
.field final GX:I
.field final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hy;
invoke-direct {v0}, Lcom/google/android/gms/internal/hy;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/hw$a;->CREATOR:Lcom/google/android/gms/internal/hy;
return-void
.end method
.method constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/hw$a;->versionCode:I
iput-object p2, p0, Lcom/google/android/gms/internal/hw$a;->GW:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/internal/hw$a;->GX:I
return-void
.end method
.method constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/hw$a;->versionCode:I
iput-object p1, p0, Lcom/google/android/gms/internal/hw$a;->GW:Ljava/lang/String;
iput p2, p0, Lcom/google/android/gms/internal/hw$a;->GX:I
return-void
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/hw$a;->CREATOR:Lcom/google/android/gms/internal/hy;
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/hw$a;->CREATOR:Lcom/google/android/gms/internal/hy;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/hw$a;Landroid/os/Parcel;I)V
return-void
.end method