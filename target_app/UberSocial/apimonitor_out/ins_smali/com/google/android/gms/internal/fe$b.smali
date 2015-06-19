.class public Lcom/google/android/gms/internal/fe$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/iy;
.field final a:I
.field final b:Ljava/lang/String;
.field final c:Lcom/google/android/gms/internal/fb$a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/iy;
invoke-direct {v0}, Lcom/google/android/gms/internal/iy;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fe$b;->CREATOR:Lcom/google/android/gms/internal/iy;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/fb$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/fe$b;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/fe$b;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/fe$b;->c:Lcom/google/android/gms/internal/fb$a;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fb$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/fe$b;->a:I
iput-object p1, p0, Lcom/google/android/gms/internal/fe$b;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/gms/internal/fe$b;->c:Lcom/google/android/gms/internal/fb$a;
return-void
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/fe$b;->CREATOR:Lcom/google/android/gms/internal/iy;
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/fe$b;->CREATOR:Lcom/google/android/gms/internal/iy;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/iy;->a(Lcom/google/android/gms/internal/fe$b;Landroid/os/Parcel;I)V
return-void
.end method