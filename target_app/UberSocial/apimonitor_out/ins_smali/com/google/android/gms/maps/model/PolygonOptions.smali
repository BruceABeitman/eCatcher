.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/o;
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
new-instance v0, Lcom/google/android/gms/maps/model/o;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/o;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/o;
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
.method  a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I
return v0
.end method
.method public a(F)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
return-object p0
.end method
.method public a(I)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
return-object p0
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 5
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/LatLng;
iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_4
:cond_16
return-object p0
.end method
.method public a(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
return-object p0
.end method
.method public varargs a([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public b(F)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
return-object p0
.end method
.method public b(I)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
return-object p0
.end method
.method public b(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/LatLng;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_19
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public b(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
return-object p0
.end method
.method  b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
return-object v0
.end method
.method public c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;
return-object v0
.end method
.method public d()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F
return v0
.end method
.method public f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I
return v0
.end method
.method public g()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I
return v0
.end method
.method public h()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F
return v0
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z
return v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/a/bo;->a()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/ae;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/o;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V
goto :goto_9
.end method