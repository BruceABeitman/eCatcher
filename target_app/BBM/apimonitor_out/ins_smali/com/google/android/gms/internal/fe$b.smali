.class public Lcom/google/android/gms/internal/fe$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/fd;
.field final CI:Lcom/google/android/gms/internal/fb$a;
.field final eX:Ljava/lang/String;
.field final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/fd;
invoke-direct {v0}, Lcom/google/android/gms/internal/fd;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fe$b;->CREATOR:Lcom/google/android/gms/internal/fd;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/fb$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/fe$b;->versionCode:I
iput-object p2, p0, Lcom/google/android/gms/internal/fe$b;->eX:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/fe$b;->CI:Lcom/google/android/gms/internal/fb$a;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fb$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/fe$b;->versionCode:I
iput-object p1, p0, Lcom/google/android/gms/internal/fe$b;->eX:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/gms/internal/fe$b;->CI:Lcom/google/android/gms/internal/fb$a;
return-void
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/fe$b;->CREATOR:Lcom/google/android/gms/internal/fd;
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/fe$b;->CREATOR:Lcom/google/android/gms/internal/fd;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fd;->a(Lcom/google/android/gms/internal/fe$b;Landroid/os/Parcel;I)V
return-void
.end method