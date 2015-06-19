.class Lcom/glympse/android/hal/j;
.super Ljava/lang/Object;
.source "AuthProtocol.java"


# static fields
.field private static E:Lcom/glympse/android/hal/utils/Rsa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/j;->E:Lcom/glympse/android/hal/utils/Rsa;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/glympse/android/core/GPrimitive;[Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    array-length v2, p2

    if-ge v0, v2, :cond_12

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v2, "type"

    const-string v3, "ipc"

    invoke-interface {v0, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-interface {v0, v2, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const-string v2, "requester_signatures"

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const-string v1, "responder_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "responder_api_key"

    invoke-interface {v0, v1, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "responder_account"

    invoke-interface {v0, v1, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v2, "responder_key_id"

    invoke-static {}, Lcom/glympse/android/hal/bj;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/j;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "requester_api_key"

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "secret"

    invoke-interface {v0, v1, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v2, "requester_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "requester_server"

    invoke-interface {v1, v2, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "requester_key_id"

    invoke-static {}, Lcom/glympse/android/hal/bj;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/j;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/hal/j;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-object v1
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/glympse/android/hal/j;->E:Lcom/glympse/android/hal/utils/Rsa;

    if-nez v0, :cond_f

    new-instance v0, Lcom/glympse/android/hal/utils/Rsa;

    invoke-static {}, Lcom/glympse/android/hal/bj;->R()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/hal/utils/Rsa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/glympse/android/hal/j;->E:Lcom/glympse/android/hal/utils/Rsa;

    :cond_f
    sget-object v0, Lcom/glympse/android/hal/j;->E:Lcom/glympse/android/hal/utils/Rsa;

    invoke-virtual {v0, p0}, Lcom/glympse/android/hal/utils/Rsa;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0x10

    invoke-static {v1, v0}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BI)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
