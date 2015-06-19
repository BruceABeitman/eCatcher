.class public final Lcom/google/android/gms/internal/dx;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/eq;
.field public final a:I
.field public b:Ljava/lang/String;
.field public c:I
.field public d:I
.field public e:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/eq;
invoke-direct {v0}, Lcom/google/android/gms/internal/eq;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/dx;->CREATOR:Lcom/google/android/gms/internal/eq;
return-void
.end method
.method public constructor <init>()V
.registers 7
const v3, 0x43eea0
const/4 v1, 0x1
const-string v2, "afma-sdk-a-v4452000.4452000.0"
move-object v0, p0
move v4, v3
move v5, v1
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dx;-><init>(ILjava/lang/String;IIZ)V
return-void
.end method
.method constructor <init>(ILjava/lang/String;IIZ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/dx;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/internal/dx;->c:I
iput p4, p0, Lcom/google/android/gms/internal/dx;->d:I
iput-boolean p5, p0, Lcom/google/android/gms/internal/dx;->e:Z
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/dx;Landroid/os/Parcel;)V
return-void
.end method