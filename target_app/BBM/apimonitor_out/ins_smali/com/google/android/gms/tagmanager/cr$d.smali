.class public Lcom/google/android/gms/tagmanager/cr$d;
.super Ljava/lang/Object;
.field private Un:Ljava/lang/String;
.field private final Wu:Ljava/util/List;
.field private final Wv:Ljava/util/Map;
.field private Ww:I
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wu:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wv:Ljava/util/Map;
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cr$d;->Un:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/tagmanager/cr$d;->Ww:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/cr$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cr$d;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cr$a;)Lcom/google/android/gms/tagmanager/cr$d;
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$a;->jF()Ljava/util/Map;
move-result-object v0
sget-object v1, Lcom/google/android/gms/internal/b;->cT:Lcom/google/android/gms/internal/b;
invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wv:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_28
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wv:Ljava/util/Map;
invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_28
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Lcom/google/android/gms/tagmanager/cr$e;)Lcom/google/android/gms/tagmanager/cr$d;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wu:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public bW(I)Lcom/google/android/gms/tagmanager/cr$d;
.registers 2
iput p1, p0, Lcom/google/android/gms/tagmanager/cr$d;->Ww:I
return-object p0
.end method
.method public bx(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cr$d;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cr$d;->Un:Ljava/lang/String;
return-object p0
.end method
.method public jL()Lcom/google/android/gms/tagmanager/cr$c;
.registers 7
new-instance v0, Lcom/google/android/gms/tagmanager/cr$c;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wu:Ljava/util/List;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cr$d;->Wv:Ljava/util/Map;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/cr$d;->Un:Ljava/lang/String;
iget v4, p0, Lcom/google/android/gms/tagmanager/cr$d;->Ww:I
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/cr$c;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/tagmanager/cr$1;)V
return-object v0
.end method