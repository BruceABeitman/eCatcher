.class  Lcom/google/android/gms/tagmanager/f;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final ID:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->w:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/f;->ID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/f;->ID:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/f;->mContext:Landroid/content/Context;
return-void
.end method
.method public lc()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/f;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
return-object v0
.end method