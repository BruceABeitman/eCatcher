.class public Lcom/google/android/gms/internal/gd$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hw;
.field final a:I
.field final b:Ljava/lang/String;
.field final c:Lcom/google/android/gms/internal/ga$a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hw;
invoke-direct {v0}, Lcom/google/android/gms/internal/hw;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/gd$b;->CREATOR:Lcom/google/android/gms/internal/hw;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ga$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/gd$b;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/gd$b;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/gd$b;->c:Lcom/google/android/gms/internal/ga$a;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ga$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/gd$b;->a:I
iput-object p1, p0, Lcom/google/android/gms/internal/gd$b;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/gms/internal/gd$b;->c:Lcom/google/android/gms/internal/ga$a;
return-void
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/gd$b;->CREATOR:Lcom/google/android/gms/internal/hw;
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/gd$b;->CREATOR:Lcom/google/android/gms/internal/hw;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/gd$b;Landroid/os/Parcel;I)V
return-void
.end method