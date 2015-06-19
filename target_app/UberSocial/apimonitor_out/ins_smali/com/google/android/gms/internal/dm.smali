.class public final Lcom/google/android/gms/internal/dm;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/Object;
.field private static c:Lcom/google/android/gms/internal/dn;
.field private static d:Ljava/math/BigInteger;
.field private static e:Ljava/util/HashSet;
.field private static f:Ljava/util/HashMap;
.method static constructor <clinit>()V
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
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_51} :catch_7a
move-result-object v0
:goto_52
add-int/lit8 v1, v1, 0x1
goto :goto_2a
:cond_55
sput-object v0, Lcom/google/android/gms/internal/dm;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
new-instance v0, Lcom/google/android/gms/internal/dn;
sget-object v1, Lcom/google/android/gms/internal/dm;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dn;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dn;
sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;
sput-object v0, Lcom/google/android/gms/internal/dm;->d:Ljava/math/BigInteger;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/dm;->e:Ljava/util/HashSet;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/dm;->f:Ljava/util/HashMap;
return-void
:catch_7a
move-exception v4
goto :goto_52
.end method
.method public static a(Lcom/google/android/gms/internal/tm;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
.registers 9
sget-object v2, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
monitor-enter v2
:try_start_3
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "app"
sget-object v1, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dn;
invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/dn;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
sget-object v0, Lcom/google/android/gms/internal/dm;->f:Ljava/util/HashMap;
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
sget-object v1, Lcom/google/android/gms/internal/dm;->f:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/do;
invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->a()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_22
:catchall_3e
move-exception v0
monitor-exit v2
:try_end_40
.catchall {:try_start_3 .. :try_end_40} :catchall_3e
throw v0
:try_start_41
:cond_41
const-string v0, "slots"
invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/google/android/gms/internal/dm;->e:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_51
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_65
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dk;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dk;->d()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_51
:cond_65
const-string v0, "ads"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
sget-object v0, Lcom/google/android/gms/internal/dm;->e:Ljava/util/HashSet;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/tm;->a(Ljava/util/HashSet;)V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/dm;->e:Ljava/util/HashSet;
monitor-exit v2
:try_end_77
.catchall {:try_start_41 .. :try_end_77} :catchall_3e
return-object v3
.end method
.method public static a()Ljava/lang/String;
.registers 4
sget-object v1, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/dm;->d:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/google/android/gms/internal/dm;->d:Ljava/math/BigInteger;
sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;
invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
sput-object v2, Lcom/google/android/gms/internal/dm;->d:Ljava/math/BigInteger;
monitor-exit v1
return-object v0
:catchall_15
move-exception v0
monitor-exit v1
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_15
throw v0
.end method
.method public static a(Lcom/google/android/gms/internal/dk;)V
.registers 3
sget-object v1, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/dm;->e:Ljava/util/HashSet;
invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static a(Lcom/google/android/gms/internal/tm;)V
.registers 4
sget-object v1, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/dm;->e:Ljava/util/HashSet;
invoke-virtual {p0}, Lcom/google/android/gms/internal/tm;->a()Ljava/util/HashSet;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
monitor-exit v1
return-void
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method
.method public static a(Ljava/lang/String;Lcom/google/android/gms/internal/do;)V
.registers 4
sget-object v1, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/dm;->f:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static b()Lcom/google/android/gms/internal/dn;
.registers 2
sget-object v1, Lcom/google/android/gms/internal/dm;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/dm;->c:Lcom/google/android/gms/internal/dn;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method