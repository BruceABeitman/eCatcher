.class  Lcom/google/android/gms/tagmanager/av;
.super Lcom/google/android/gms/tagmanager/br;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->S:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/av;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/google/android/gms/tagmanager/av;->a:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/br;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/tagmanager/dv;Lcom/google/android/gms/tagmanager/dv;Ljava/util/Map;)Z
.registers 5
invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/dv;->a(Lcom/google/android/gms/tagmanager/dv;)I
move-result v0
if-gtz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method