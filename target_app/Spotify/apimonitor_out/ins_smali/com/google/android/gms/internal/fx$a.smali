.class public final Lcom/google/android/gms/internal/fx$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hr;
.field final a:I
.field final b:Ljava/lang/String;
.field final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hr;
invoke-direct {v0}, Lcom/google/android/gms/internal/hr;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fx$a;->CREATOR:Lcom/google/android/gms/internal/hr;
return-void
.end method
.method constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/fx$a;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/fx$a;->b:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/internal/fx$a;->c:I
return-void
.end method
.method constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/fx$a;->a:I
iput-object p1, p0, Lcom/google/android/gms/internal/fx$a;->b:Ljava/lang/String;
iput p2, p0, Lcom/google/android/gms/internal/fx$a;->c:I
return-void
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/fx$a;->CREATOR:Lcom/google/android/gms/internal/hr;
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/fx$a;->CREATOR:Lcom/google/android/gms/internal/hr;
invoke-static {p0, p1}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/fx$a;Landroid/os/Parcel;)V
return-void
.end method