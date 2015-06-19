.class public final Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/util/ArrayList;
.field private final d:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/sb;
invoke-direct {v0}, Lcom/google/android/gms/internal/sb;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/jj;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/jj;->d:I
invoke-static {}, Lcom/google/android/gms/internal/jc;->a()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/jj;->c:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/jj;->d:I
iput-object p2, p0, Lcom/google/android/gms/internal/jj;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/jj;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/jj;->c:Ljava/util/ArrayList;
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/jj;->d:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sb;->a(Lcom/google/android/gms/internal/jj;Landroid/os/Parcel;I)V
return-void
.end method