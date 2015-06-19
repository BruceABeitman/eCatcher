.class  Lcom/google/android/gms/tagmanager/an;
.super Lcom/google/android/gms/tagmanager/z;
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.field private final c:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->H:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/an;->a:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/ak;->M:Lcom/google/android/gms/internal/ak;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/an;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/an;->a:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/an;->c:Landroid/content/Context;
return-void
.end method
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/an;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
if-eqz v0, :cond_23
sget-object v0, Lcom/google/android/gms/tagmanager/an;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v0
:goto_16
iget-object v1, p0, Lcom/google/android/gms/tagmanager/an;->c:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ao;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_25
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;
move-result-object v0
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_16
:cond_25
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;
move-result-object v0
goto :goto_22
.end method
.method public a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method