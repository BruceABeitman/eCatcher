.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;
.field private final a:Ljava/util/HashSet;
.field private final b:Ljava/util/HashMap;
.field private final c:Ljava/util/HashMap;
.field private final d:Ljava/util/HashSet;
.field private e:Ljava/util/Date;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:Landroid/location/Location;
.field private i:Z
.field private j:Ljava/lang/String;
.field private k:I
.method public constructor <init>()V
.registers 3
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ad;->a:Ljava/util/HashSet;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ad;->c:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Ljava/util/HashSet;
iput v1, p0, Lcom/google/android/gms/internal/ad;->g:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/ad;->i:Z
iput v1, p0, Lcom/google/android/gms/internal/ad;->k:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ad;)Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->e:Ljava/util/Date;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/internal/ad;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/ad;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ad;->g:I
return v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/ad;)Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->a:Ljava/util/HashSet;
return-object v0
.end method
.method static synthetic e(Lcom/google/android/gms/internal/ad;)Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->h:Landroid/location/Location;
return-object v0
.end method
.method static synthetic f(Lcom/google/android/gms/internal/ad;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ad;->i:Z
return v0
.end method
.method static synthetic g(Lcom/google/android/gms/internal/ad;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic h(Lcom/google/android/gms/internal/ad;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->c:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic i(Lcom/google/android/gms/internal/ad;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->j:Ljava/lang/String;
return-object v0
.end method
.method static synthetic j(Lcom/google/android/gms/internal/ad;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ad;->k:I
return v0
.end method
.method static synthetic k(Lcom/google/android/gms/internal/ad;)Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Ljava/util/HashSet;
return-object v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/internal/ad;->g:I
return-void
.end method
.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->a:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ad;->e:Ljava/util/Date;
return-void
.end method
.method public final a(Z)V
.registers 3
if-eqz p1, :cond_6
const/4 v0, 0x1
:goto_3
iput v0, p0, Lcom/google/android/gms/internal/ad;->k:I
return-void
:cond_6
const/4 v0, 0x0
goto :goto_3
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method