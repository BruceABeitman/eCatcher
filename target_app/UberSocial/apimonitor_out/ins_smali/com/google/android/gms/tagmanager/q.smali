.class  Lcom/google/android/gms/tagmanager/q;
.super Lcom/google/android/gms/tagmanager/z;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->l:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/q;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
sget-object v0, Lcom/google/android/gms/tagmanager/q;->a:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
.registers 5
sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_29
const-string v2, "unknown"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_29
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_29
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;
move-result-object v0
return-object v0
.end method
.method public a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method