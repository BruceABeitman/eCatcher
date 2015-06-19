.class  Lcom/google/android/gms/tagmanager/ae;
.super Lcom/google/android/gms/tagmanager/z;
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.field private static final c:Ljava/lang/String;
.field private static final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->G:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ae;->a:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/ak;->n:Lcom/google/android/gms/internal/ak;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ae;->b:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/ak;->e:Lcom/google/android/gms/internal/ak;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ae;->c:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/ak;->aM:Lcom/google/android/gms/internal/ak;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ae;->d:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 5
sget-object v0, Lcom/google/android/gms/tagmanager/ae;->a:Ljava/lang/String;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
sget-object v3, Lcom/google/android/gms/tagmanager/ae;->b:Ljava/lang/String;
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;[B)[B
.registers 4
invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
return-object v0
.end method
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
.registers 6
sget-object v0, Lcom/google/android/gms/tagmanager/ae;->b:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
if-eqz v0, :cond_10
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;
move-result-object v1
if-ne v0, v1, :cond_15
:cond_10
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;
move-result-object v0
:goto_14
return-object v0
:cond_15
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/google/android/gms/tagmanager/ae;->c:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
if-nez v0, :cond_4b
const-string v0, "MD5"
move-object v1, v0
:goto_26
sget-object v0, Lcom/google/android/gms/tagmanager/ae;->d:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
if-nez v0, :cond_51
const-string v0, "text"
:goto_32
const-string v3, "text"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_56
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v0
:try_start_3e
:goto_3e
invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/ae;->a(Ljava/lang/String;[B)[B
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/eg;->a([B)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;
:try_end_49
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_49} :catch_7e
move-result-object v0
goto :goto_14
:cond_4b
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto :goto_26
:cond_51
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v0
goto :goto_32
:cond_56
const-string v3, "base16"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_63
invoke-static {v2}, Lcom/google/android/gms/tagmanager/eg;->a(Ljava/lang/String;)[B
move-result-object v0
goto :goto_3e
:cond_63
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Hash: unknown input format: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;
move-result-object v0
goto :goto_14
:catch_7e
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Hash: unknown algorithm: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;
move-result-object v0
goto/16 :goto_14
.end method
.method public a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method