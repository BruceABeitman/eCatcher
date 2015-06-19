.class public final Lcom/google/android/gms/common/api/g;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private final b:Ljava/util/Set;
.field private c:I
.field private d:Landroid/view/View;
.field private e:Ljava/lang/String;
.field private final f:Landroid/content/Context;
.field private final g:Ljava/util/Map;
.field private h:Landroid/os/Looper;
.field private final i:Ljava/util/Set;
.field private final j:Ljava/util/Set;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->b:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->g:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->i:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->j:Ljava/util/Set;
iput-object p1, p0, Lcom/google/android/gms/common/api/g;->f:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->h:Landroid/os/Looper;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->e:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)V
.registers 5
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/g;-><init>(Landroid/content/Context;)V
const-string v0, "Must provide a connected listener"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/common/api/g;->i:Ljava/util/Set;
invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string v0, "Must provide a connection failed listener"
invoke-static {p3, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/common/api/g;->j:Ljava/util/Set;
invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/g;
.registers 2
const-string v0, "<<default account>>"
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/g;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/g;
move-result-object v0
return-object v0
.end method
.method public a(I)Lcom/google/android/gms/common/api/g;
.registers 2
iput p1, p0, Lcom/google/android/gms/common/api/g;->c:I
return-object p0
.end method
.method public a(Landroid/os/Handler;)Lcom/google/android/gms/common/api/g;
.registers 3
const-string v0, "Handler must not be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/g;->h:Landroid/os/Looper;
return-object p0
.end method
.method public a(Landroid/view/View;)Lcom/google/android/gms/common/api/g;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/g;->d:Landroid/view/View;
return-object p0
.end method
.method public a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/g;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;
.registers 8
iget-object v0, p0, Lcom/google/android/gms/common/api/g;->g:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Ljava/util/List;
move-result-object v2
const/4 v0, 0x0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
move v1, v0
:goto_f
if-ge v1, v3, :cond_24
iget-object v4, p0, Lcom/google/android/gms/common/api/g;->b:Ljava/util/Set;
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/o;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->a()Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_24
return-object p0
.end method
.method public a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/g;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/g;->i:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/g;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/g;->j:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Lcom/google/android/gms/common/api/o;)Lcom/google/android/gms/common/api/g;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/g;->b:Ljava/util/Set;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/o;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/common/api/g;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/g;->a:Ljava/lang/String;
return-object p0
.end method
.method public b()Lcom/google/android/gms/internal/ee;
.registers 7
new-instance v0, Lcom/google/android/gms/internal/ee;
iget-object v1, p0, Lcom/google/android/gms/common/api/g;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/common/api/g;->b:Ljava/util/Set;
iget v3, p0, Lcom/google/android/gms/common/api/g;->c:I
iget-object v4, p0, Lcom/google/android/gms/common/api/g;->d:Landroid/view/View;
iget-object v5, p0, Lcom/google/android/gms/common/api/g;->e:Ljava/lang/String;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ee;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
return-object v0
.end method
.method public c()Lcom/google/android/gms/common/api/e;
.registers 8
new-instance v0, Lcom/google/android/gms/common/api/u;
iget-object v1, p0, Lcom/google/android/gms/common/api/g;->f:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/common/api/g;->h:Landroid/os/Looper;
invoke-virtual {p0}, Lcom/google/android/gms/common/api/g;->b()Lcom/google/android/gms/internal/ee;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/common/api/g;->g:Ljava/util/Map;
iget-object v5, p0, Lcom/google/android/gms/common/api/g;->i:Ljava/util/Set;
iget-object v6, p0, Lcom/google/android/gms/common/api/g;->j:Ljava/util/Set;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/api/u;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
return-object v0
.end method