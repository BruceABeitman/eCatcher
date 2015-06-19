.class  Lcom/google/android/gms/tagmanager/ax;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final ID:Ljava/lang/String;
.field private static final TD:Ljava/lang/String;
.field private final kL:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->am:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ax;->ID:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->bS:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ax;->TD:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/ax;->ID:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ax;->kL:Landroid/content/Context;
return-void
.end method
.method public iy()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public u(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/ax;->TD:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
if-eqz v0, :cond_23
sget-object v0, Lcom/google/android/gms/tagmanager/ax;->TD:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
move-result-object v0
:goto_16
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ax;->kL:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ay;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_25
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_16
:cond_25
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_22
.end method