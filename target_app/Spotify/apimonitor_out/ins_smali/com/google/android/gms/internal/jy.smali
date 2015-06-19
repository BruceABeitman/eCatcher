.class public final Lcom/google/android/gms/internal/jy;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Lcom/google/android/gms/internal/ju;
.field  d:Lcom/google/android/gms/internal/jw;
.field  e:Lcom/google/android/gms/internal/jw;
.field private final f:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/kv;
invoke-direct {v0}, Lcom/google/android/gms/internal/kv;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/jy;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/jy;->f:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/jw;Lcom/google/android/gms/internal/jw;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/jy;->f:I
iput-object p2, p0, Lcom/google/android/gms/internal/jy;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/jy;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/jy;->c:Lcom/google/android/gms/internal/ju;
iput-object p5, p0, Lcom/google/android/gms/internal/jy;->d:Lcom/google/android/gms/internal/jw;
iput-object p6, p0, Lcom/google/android/gms/internal/jy;->e:Lcom/google/android/gms/internal/jw;
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/jy;->f:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/jy;Landroid/os/Parcel;I)V
return-void
.end method