.class public final Lcom/google/android/gms/internal/q;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/String;
.field private final b:Ljava/util/Date;
.field private final c:Ljava/lang/String;
.field private final d:I
.field private final e:Ljava/util/Set;
.field private final f:Landroid/location/Location;
.field private final g:Z
.field private final h:Ljava/util/Map;
.field private final i:Ljava/lang/String;
.field private final j:Lcom/google/android/gms/ads/search/a;
.field private final k:I
.field private final l:Ljava/util/Set;
.method static constructor <clinit>()V
.registers 1
const-string v0, "emulator"
invoke-static {v0}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/q;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/r;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/ads/search/a;)V
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/ads/search/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/internal/r;)Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->b:Ljava/util/Date;
invoke-static {p1}, Lcom/google/android/gms/internal/r;->b(Lcom/google/android/gms/internal/r;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->c:Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/internal/r;->c(Lcom/google/android/gms/internal/r;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/q;->d:I
invoke-static {p1}, Lcom/google/android/gms/internal/r;->d(Lcom/google/android/gms/internal/r;)Ljava/util/HashSet;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->e:Ljava/util/Set;
invoke-static {p1}, Lcom/google/android/gms/internal/r;->e(Lcom/google/android/gms/internal/r;)Landroid/location/Location;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->f:Landroid/location/Location;
invoke-static {p1}, Lcom/google/android/gms/internal/r;->f(Lcom/google/android/gms/internal/r;)Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/q;->g:Z
invoke-static {p1}, Lcom/google/android/gms/internal/r;->g(Lcom/google/android/gms/internal/r;)Ljava/util/HashMap;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->h:Ljava/util/Map;
invoke-static {p1}, Lcom/google/android/gms/internal/r;->h(Lcom/google/android/gms/internal/r;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->i:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/gms/internal/q;->j:Lcom/google/android/gms/ads/search/a;
invoke-static {p1}, Lcom/google/android/gms/internal/r;->i(Lcom/google/android/gms/internal/r;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/q;->k:I
invoke-static {p1}, Lcom/google/android/gms/internal/r;->j(Lcom/google/android/gms/internal/r;)Ljava/util/HashSet;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/q;->l:Ljava/util/Set;
return-void
.end method
.method public a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/q;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/ads/b/a;
return-object v0
.end method
.method public a()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->b:Ljava/util/Date;
return-object v0
.end method
.method public a(Landroid/content/Context;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/q;->l:Ljava/util/Set;
invoke-static {p1}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Ljava/lang/String;
return-object v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/q;->d:I
return v0
.end method
.method public d()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->e:Ljava/util/Set;
return-object v0
.end method
.method public e()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->f:Landroid/location/Location;
return-object v0
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/q;->g:Z
return v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->i:Ljava/lang/String;
return-object v0
.end method
.method public h()Lcom/google/android/gms/ads/search/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->j:Lcom/google/android/gms/ads/search/a;
return-object v0
.end method
.method public i()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/q;->h:Ljava/util/Map;
return-object v0
.end method
.method public j()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/q;->k:I
return v0
.end method