.class  Lcom/google/android/gms/tagmanager/ev;
.super Lcom/google/android/gms/tagmanager/z;
.field private static final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->j:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ev;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/ev;->a:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ev;->b:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ev;->b:Ljava/lang/String;
if-nez v0, :cond_9
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ev;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;
move-result-object v0
goto :goto_8
.end method
.method public a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method