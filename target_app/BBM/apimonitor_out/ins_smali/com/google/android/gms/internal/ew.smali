.class public Lcom/google/android/gms/internal/ew;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/ex;
.field private final Co:Lcom/google/android/gms/internal/ey;
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/ex;
invoke-direct {v0}, Lcom/google/android/gms/internal/ex;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/internal/ey;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ew;->wj:I
iput-object p2, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/internal/ey;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ew;->wj:I
iput-object p1, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;
return-void
.end method
.method public static a(Lcom/google/android/gms/internal/fb$b;)Lcom/google/android/gms/internal/ew;
.registers 3
instance-of v0, p0, Lcom/google/android/gms/internal/ey;
if-eqz v0, :cond_c
new-instance v0, Lcom/google/android/gms/internal/ew;
check-cast p0, Lcom/google/android/gms/internal/ey;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ew;-><init>(Lcom/google/android/gms/internal/ey;)V
return-object v0
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Unsupported safe parcelable field converter class."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;
const/4 v0, 0x0
return v0
.end method
.method  ei()Lcom/google/android/gms/internal/ey;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;
return-object v0
.end method
.method public ej()Lcom/google/android/gms/internal/fb$b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;
return-object v0
:cond_7
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "There was no converter wrapped in this ConverterWrapper."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ew;->wj:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/ew;Landroid/os/Parcel;I)V
return-void
.end method