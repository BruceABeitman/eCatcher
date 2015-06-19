.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/j;
.field private final a:I
.field private final b:Ljava/util/List;
.field private c:F
.field private d:I
.field private e:F
.field private f:Z
.field private g:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/j;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/j;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/j;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z
iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;
return-void
.end method
.method constructor <init>(ILjava/util/List;FIFZZ)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;
iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F
iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I
iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F
iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z
iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I
return v0
.end method
.method public final b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;
return-object v0
.end method
.method public final c()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F
return v0
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z
return v0
.end method
.method public final g()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_39
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x6
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x7
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_38
return-void
:cond_39
invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/j;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;)V
goto :goto_38
.end method