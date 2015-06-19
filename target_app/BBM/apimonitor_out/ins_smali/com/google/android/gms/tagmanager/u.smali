.class  Lcom/google/android/gms/tagmanager/u;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final ID:Ljava/lang/String;
.field private static final NAME:Ljava/lang/String;
.field private static final UC:Ljava/lang/String;
.field private final TN:Lcom/google/android/gms/tagmanager/DataLayer;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->N:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/u;->ID:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->dn:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/u;->NAME:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->cm:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/u;->UC:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
.registers 6
sget-object v0, Lcom/google/android/gms/tagmanager/u;->ID:Ljava/lang/String;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
sget-object v3, Lcom/google/android/gms/tagmanager/u;->NAME:Ljava/lang/String;
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/u;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
return-void
.end method
.method public iy()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public u(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/tagmanager/u;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
sget-object v0, Lcom/google/android/gms/tagmanager/u;->NAME:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_24
sget-object v0, Lcom/google/android/gms/tagmanager/u;->UC:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
if-eqz v0, :cond_1f
:goto_1e
return-object v0
:cond_1f
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_1e
:cond_24
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_1e
.end method