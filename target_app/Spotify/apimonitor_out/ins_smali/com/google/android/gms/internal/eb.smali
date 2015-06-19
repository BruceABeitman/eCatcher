.class public final Lcom/google/android/gms/internal/eb;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/String;
.field private static final c:Lcom/google/android/gms/internal/eb;
.field public final b:Ljava/lang/String;
.field private final d:Ljava/lang/Object;
.field private final e:Lcom/google/android/gms/internal/ec;
.field private f:Ljava/math/BigInteger;
.field private final g:Ljava/util/HashSet;
.field private final h:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/eb;
invoke-direct {v0}, Lcom/google/android/gms/internal/eb;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/eb;
iget-object v0, v0, Lcom/google/android/gms/internal/eb;->b:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/internal/eb;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->f:Ljava/math/BigInteger;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->g:Ljava/util/HashSet;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->h:Ljava/util/HashMap;
invoke-static {}, Lcom/google/android/gms/internal/eb;->d()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->b:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/ec;
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ec;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->e:Lcom/google/android/gms/internal/ec;
return-void
.end method
.method public static a(Lcom/google/android/gms/internal/ed;Ljava/lang/String;)Landroid/os/Bundle;
.registers 3
sget-object v0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/eb;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/eb;->b(Lcom/google/android/gms/internal/ed;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public static a()Lcom/google/android/gms/internal/eb;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/eb;
return-object v0
.end method
.method public static a(Ljava/util/HashSet;)V
.registers 3
sget-object v0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/eb;
iget-object v1, v0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_5
iget-object v0, v0, Lcom/google/android/gms/internal/eb;->g:Ljava/util/HashSet;
invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
monitor-exit v1
:try_end_b
.catchall {:try_start_5 .. :try_end_b} :catchall_c
return-void
:catchall_c
move-exception v0
monitor-exit v1
throw v0
.end method
.method private b(Lcom/google/android/gms/internal/ed;Ljava/lang/String;)Landroid/os/Bundle;
.registers 9
iget-object v2, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
monitor-enter v2
:try_start_3
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "app"
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->e:Lcom/google/android/gms/internal/ec;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ec;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->h:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_22
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->h:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/ee;
invoke-virtual {v1}, Lcom/google/android/gms/internal/ee;->a()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_3d
.catchall {:try_start_3 .. :try_end_3d} :catchall_3e
goto :goto_22
:catchall_3e
move-exception v0
monitor-exit v2
throw v0
:try_start_41
:cond_41
const-string v0, "slots"
invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->g:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_51
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_65
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dz;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->d()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_51
:cond_65
const-string v0, "ads"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->g:Ljava/util/HashSet;
invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ed;->a(Ljava/util/HashSet;)V
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->g:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
monitor-exit v2
:try_end_75
.catchall {:try_start_41 .. :try_end_75} :catchall_3e
return-object v3
.end method
.method public static b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/eb;
invoke-direct {v0}, Lcom/google/android/gms/internal/eb;->e()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static c()Lcom/google/android/gms/internal/ec;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/eb;->c:Lcom/google/android/gms/internal/eb;
invoke-direct {v0}, Lcom/google/android/gms/internal/eb;->f()Lcom/google/android/gms/internal/ec;
move-result-object v0
return-object v0
.end method
.method private static d()Ljava/lang/String;
.registers 10
const/4 v5, 0x1
const/4 v0, 0x0
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v2
invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B
move-result-object v2
invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v1
invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B
move-result-object v3
new-instance v1, Ljava/math/BigInteger;
invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V
invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v1
move v9, v0
move-object v0, v1
move v1, v9
:goto_2a
const/4 v4, 0x2
if-ge v1, v4, :cond_55
:try_start_2d
const-string v4, "MD5"
invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V
const/16 v5, 0x8
new-array v5, v5, [B
invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
move-result-object v4
const/4 v6, 0x0
const/4 v7, 0x0
const/16 v8, 0x8
invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
new-instance v4, Ljava/math/BigInteger;
const/4 v6, 0x1
invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V
invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
:try_end_51
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_51} :catch_56
move-result-object v0
:goto_52
add-int/lit8 v1, v1, 0x1
goto :goto_2a
:cond_55
return-object v0
:catch_56
move-exception v4
goto :goto_52
.end method
.method private e()Ljava/lang/String;
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->f:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/eb;->f:Ljava/math/BigInteger;
sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;
invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/internal/eb;->f:Ljava/math/BigInteger;
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_15
return-object v0
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method
.method private f()Lcom/google/android/gms/internal/ec;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->e:Lcom/google/android/gms/internal/ec;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/dz;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->g:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ee;)V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/eb;->h:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method