.class  Lcom/google/android/gms/tagmanager/bd;
.super Lcom/google/android/gms/tagmanager/bx;
.field private static final ID:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->am:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/bd;->ID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/google/android/gms/tagmanager/bd;->ID:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/bx;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/tagmanager/dg;Lcom/google/android/gms/tagmanager/dg;Ljava/util/Map;)Z
.registers 5
invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I
move-result v0
if-gtz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method