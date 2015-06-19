.class public final Lcom/google/android/gms/internal/jm;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:I
.field  b:Ljava/lang/String;
.field  c:D
.field  d:Ljava/lang/String;
.field  e:J
.field  f:I
.field private final g:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/sc;
invoke-direct {v0}, Lcom/google/android/gms/internal/sc;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/jm;->g:I
iput v1, p0, Lcom/google/android/gms/internal/jm;->f:I
iput v1, p0, Lcom/google/android/gms/internal/jm;->a:I
const-wide/high16 v0, -0x4010
iput-wide v0, p0, Lcom/google/android/gms/internal/jm;->c:D
return-void
.end method
.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/jm;->g:I
iput p2, p0, Lcom/google/android/gms/internal/jm;->a:I
iput-object p3, p0, Lcom/google/android/gms/internal/jm;->b:Ljava/lang/String;
iput-wide p4, p0, Lcom/google/android/gms/internal/jm;->c:D
iput-object p6, p0, Lcom/google/android/gms/internal/jm;->d:Ljava/lang/String;
iput-wide p7, p0, Lcom/google/android/gms/internal/jm;->e:J
iput p9, p0, Lcom/google/android/gms/internal/jm;->f:I
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/jm;->g:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sc;->a(Lcom/google/android/gms/internal/jm;Landroid/os/Parcel;I)V
return-void
.end method