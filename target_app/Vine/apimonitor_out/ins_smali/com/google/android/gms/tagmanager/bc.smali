.class  Lcom/google/android/gms/tagmanager/bc;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final ID:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->L:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/bc;->ID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
sget-object v0, Lcom/google/android/gms/tagmanager/bc;->ID:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public lc()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
if-nez v0, :cond_b
invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Lcom/google/android/gms/internal/d$a;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_16
invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_a
:cond_16
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_a
.end method