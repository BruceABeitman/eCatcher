.class  Lcom/google/android/gms/tagmanager/cb;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final ID:Ljava/lang/String;
.field private static final agr:Lcom/google/android/gms/internal/d$a;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->N:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/cb;->ID:Ljava/lang/String;
const-string v0, "Android"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/cb;->agr:Lcom/google/android/gms/internal/d$a;
return-void
.end method
.method public constructor <init>()V
.registers 3
sget-object v0, Lcom/google/android/gms/tagmanager/cb;->ID:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public lc()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 3
sget-object v0, Lcom/google/android/gms/tagmanager/cb;->agr:Lcom/google/android/gms/internal/d$a;
return-object v0
.end method