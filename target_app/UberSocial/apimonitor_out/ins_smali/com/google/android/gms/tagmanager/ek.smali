.class  Lcom/google/android/gms/tagmanager/ek;
.super Lcom/google/android/gms/tagmanager/z;
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->g:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ek;->a:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/ak;->cB:Lcom/google/android/gms/internal/ak;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ek;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 5
sget-object v0, Lcom/google/android/gms/tagmanager/ek;->a:Ljava/lang/String;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
sget-object v3, Lcom/google/android/gms/tagmanager/ek;->b:Ljava/lang/String;
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public static d()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/android/gms/tagmanager/ek;->a:Ljava/lang/String;
return-object v0
.end method
.method public static e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/android/gms/tagmanager/ek;->b:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
.registers 3
sget-object v0, Lcom/google/android/gms/tagmanager/ek;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
return-object v0
.end method
.method public a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method