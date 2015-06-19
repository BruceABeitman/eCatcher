.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/m;
.field private final a:I
.field private b:Lcom/google/android/gms/maps/model/LatLng;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Lcom/google/android/gms/maps/model/a;
.field private f:F
.field private g:F
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:F
.field private l:F
.field private m:F
.field private n:F
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/m;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/m;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/m;
return-void
.end method
.method public constructor <init>()V
.registers 6
const/4 v4, 0x1
const/high16 v3, 0x3f80
const/high16 v2, 0x3f00
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F
iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:F
iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:Z
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F
iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F
iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F
iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->a:I
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V
.registers 18
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v1, 0x3f00
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F
const/high16 v1, 0x3f80
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:F
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:Z
const/4 v1, 0x0
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F
const/high16 v1, 0x3f00
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F
const/4 v1, 0x0
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F
const/high16 v1, 0x3f80
iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F
iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->a:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Ljava/lang/String;
if-nez p5, :cond_43
const/4 v1, 0x0
:goto_2a
iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;
iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F
iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:F
iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z
iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z
iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:Z
iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F
iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F
move/from16 v0, p13
iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F
move/from16 v0, p14
iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F
return-void
:cond_43
new-instance v1, Lcom/google/android/gms/maps/model/a;
invoke-static {p5}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
goto :goto_2a
.end method
.method  a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->a:I
return v0
.end method
.method public a(F)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F
return-object p0
.end method
.method public a(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 3
iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F
iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:F
return-object p0
.end method
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
return-object p0
.end method
.method public a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;
return-object p0
.end method
.method public a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z
return-object p0
.end method
.method  b()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/a;->a()Lcom/google/android/gms/c/d;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
goto :goto_5
.end method
.method public b(F)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F
return-object p0
.end method
.method public b(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 3
iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F
iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Ljava/lang/String;
return-object p0
.end method
.method public b(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z
return-object p0
.end method
.method public c()Lcom/google/android/gms/maps/model/LatLng;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->b:Lcom/google/android/gms/maps/model/LatLng;
return-object v0
.end method
.method public c(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:Z
return-object p0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Ljava/lang/String;
return-object v0
.end method
.method public f()Lcom/google/android/gms/maps/model/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;
return-object v0
.end method
.method public g()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F
return v0
.end method
.method public h()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:F
return v0
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z
return v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z
return v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:Z
return v0
.end method
.method public l()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F
return v0
.end method
.method public m()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F
return v0
.end method
.method public n()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F
return v0
.end method
.method public o()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/a/bo;->a()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/ad;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/m;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V
goto :goto_9
.end method