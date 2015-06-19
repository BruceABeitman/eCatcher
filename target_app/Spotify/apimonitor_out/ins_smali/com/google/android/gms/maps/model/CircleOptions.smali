.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/d;
.field private final a:I
.field private b:Lcom/google/android/gms/maps/model/LatLng;
.field private c:D
.field private d:F
.field private e:I
.field private f:I
.field private g:F
.field private h:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/d;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/d;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/d;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F
iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z
iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z
iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D
iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F
iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I
iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I
iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F
iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I
return v0
.end method
.method public final b()Lcom/google/android/gms/maps/model/LatLng;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
return-object v0
.end method
.method public final c()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D
return-wide v0
.end method
.method public final d()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I
return v0
.end method
.method public final g()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F
return v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_40
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
const/4 v3, 0x0
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_3f
return-void
:cond_40
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/d;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V
goto :goto_3f
.end method