.class  Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;
.super Ljava/lang/Object;
.source "BasicIdGenerator.java"
.field private count:J
.field private final hostname:Ljava/lang/String;
.field private final rnd:Ljava/security/SecureRandom;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
move-result-object v0
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
:try_end_a
.catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_a} :catch_1f
move-result-object v0
:goto_b
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->hostname:Ljava/lang/String;
:try_start_d
const-string v0, "SHA1PRNG"
invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->rnd:Ljava/security/SecureRandom;
:try_end_15
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_15} :catch_23
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->rnd:Ljava/security/SecureRandom;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V
return-void
:catch_1f
move-exception v0
const-string v0, "localhost"
goto :goto_b
:catch_23
move-exception v0
new-instance v1, Ljava/lang/Error;
invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public generate()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->generate(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized generate(Ljava/lang/StringBuilder;)V
.registers 9
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->count:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->count:J
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->rnd:Ljava/security/SecureRandom;
invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I
move-result v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v1, 0x2e
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
new-instance v1, Ljava/util/Formatter;
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v1, p1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
const-string v2, "%1$016x-%2$08x"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-wide v5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->count:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
const/16 v0, 0x2e
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicIdGenerator;->hostname:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_43
.catchall {:try_start_1 .. :try_end_43} :catchall_45
monitor-exit p0
return-void
:catchall_45
move-exception v0
monitor-exit p0
throw v0
.end method