.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/i;
.field private final a:I
.field private final b:Ljava/util/List;
.field private final c:Ljava/util/List;
.field private d:F
.field private e:I
.field private f:I
.field private g:F
.field private h:Z
.field private i:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/i;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/i;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/i;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
return-void
.end method
.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
.registers 12
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I
return v0
.end method
.method final b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
return-object v0
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
return-object v0
.end method
.method public final d()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
return v0
.end method
.method public final g()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
return v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
return v0
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_46
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
const/4 v3, 0x0
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V
iget-object v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Ljava/util/List;)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x9
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_45
return-void
:cond_46
invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/i;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;)V
goto :goto_45
.end method