.class public Lcom/google/android/gms/tagmanager/cw;
.super Ljava/lang/Object;
.field private final a:Ljava/util/List;
.field private final b:Ljava/util/Map;
.field private c:Ljava/lang/String;
.field private d:I
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cw;->a:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cw;->b:Ljava/util/Map;
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cw;->c:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/tagmanager/cw;->d:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/cs$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cw;-><init>()V
return-void
.end method
.method public a()Lcom/google/android/gms/tagmanager/cv;
.registers 7
new-instance v0, Lcom/google/android/gms/tagmanager/cv;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cw;->a:Ljava/util/List;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cw;->b:Ljava/util/Map;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/cw;->c:Ljava/lang/String;
iget v4, p0, Lcom/google/android/gms/tagmanager/cw;->d:I
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/cv;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/tagmanager/cs$1;)V
return-object v0
.end method
.method public a(I)Lcom/google/android/gms/tagmanager/cw;
.registers 2
iput p1, p0, Lcom/google/android/gms/tagmanager/cw;->d:I
return-object p0
.end method
.method public a(Lcom/google/android/gms/tagmanager/ct;)Lcom/google/android/gms/tagmanager/cw;
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ct;->b()Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/google/android/gms/internal/ak;->aN:Lcom/google/android/gms/internal/ak;
invoke-virtual {v1}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cw;->b:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_28
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cw;->b:Ljava/util/Map;
invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_28
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Lcom/google/android/gms/tagmanager/cx;)Lcom/google/android/gms/tagmanager/cw;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cw;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cw;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cw;->c:Ljava/lang/String;
return-object p0
.end method