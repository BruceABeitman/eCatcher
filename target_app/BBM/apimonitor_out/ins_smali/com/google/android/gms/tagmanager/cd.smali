.class abstract Lcom/google/android/gms/tagmanager/cd;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final US:Ljava/lang/String;
.field private static final VQ:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/b;->bt:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/cd;->US:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->bu:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/cd;->VQ:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->US:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->VQ:Ljava/lang/String;
aput-object v2, v0, v1
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method protected abstract a(Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/internal/d$a;Ljava/util/Map;)Z
.end method
.method public iy()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public u(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 6
const/4 v2, 0x0
invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;
move-result-object v3
if-ne v0, v3, :cond_9
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
:goto_23
return-object v0
:cond_24
sget-object v0, Lcom/google/android/gms/tagmanager/cd;->US:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
sget-object v1, Lcom/google/android/gms/tagmanager/cd;->VQ:Ljava/lang/String;
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/d$a;
if-eqz v0, :cond_38
if-nez v1, :cond_42
:cond_38
move v0, v2
:goto_39
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_23
:cond_42
invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/tagmanager/cd;->a(Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/internal/d$a;Ljava/util/Map;)Z
move-result v0
goto :goto_39
.end method