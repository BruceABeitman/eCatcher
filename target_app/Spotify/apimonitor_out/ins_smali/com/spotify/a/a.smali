.class public final Lcom/spotify/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lcom/spotify/a/a;
.field public static final b:Lcom/spotify/a/a;
.field private static final c:Ljava/nio/charset/Charset;
.field private static final f:Ljava/util/Map;
.field private final d:Z
.field private final e:Ljava/lang/String;
.field private final g:[B
.method static constructor <clinit>()V
.registers 2
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/spotify/a/a;->f:Ljava/util/Map;
new-instance v0, Lcom/spotify/a/a;
invoke-direct {v0}, Lcom/spotify/a/a;-><init>()V
sput-object v0, Lcom/spotify/a/a;->a:Lcom/spotify/a/a;
new-instance v0, Lcom/spotify/a/a;
const-string v1, "NTX_"
invoke-direct {v0, v1}, Lcom/spotify/a/a;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/a/a;->b:Lcom/spotify/a/a;
return-void
.end method
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/a/a;->d:Z
const-string v0, "spotify:test:"
sget-object v1, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
iput-object v0, p0, Lcom/spotify/a/a;->g:[B
const-string v0, ""
iput-object v0, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1b
iput-boolean v2, p0, Lcom/spotify/a/a;->d:Z
const-string v0, "spotify:test:"
sget-object v1, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
iput-object v0, p0, Lcom/spotify/a/a;->g:[B
:goto_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
const-string v1, "NTX_"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/a/a;->d:Z
const-string v0, "spotify:test:"
sget-object v1, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
iput-object v0, p0, Lcom/spotify/a/a;->g:[B
goto :goto_1a
:cond_33
iput-boolean v2, p0, Lcom/spotify/a/a;->d:Z
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "spotify:test:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
iput-object v0, p0, Lcom/spotify/a/a;->g:[B
goto :goto_1a
.end method
.method private static a([B)J
.registers 8
const-wide/16 v5, 0xff
const/4 v0, 0x3
aget-byte v0, p0, v0
int-to-long v0, v0
and-long/2addr v0, v5
const/4 v2, 0x2
aget-byte v2, p0, v2
int-to-long v2, v2
and-long/2addr v2, v5
const/16 v4, 0x8
shl-long/2addr v2, v4
or-long/2addr v0, v2
const/4 v2, 0x1
aget-byte v2, p0, v2
int-to-long v2, v2
and-long/2addr v2, v5
const/16 v4, 0x10
shl-long/2addr v2, v4
or-long/2addr v0, v2
const/4 v2, 0x0
aget-byte v2, p0, v2
int-to-long v2, v2
and-long/2addr v2, v5
const/16 v4, 0x18
shl-long/2addr v2, v4
or-long/2addr v0, v2
return-wide v0
.end method
.method private a([BZ)[B
.registers 5
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
if-eqz p2, :cond_d
iget-object v1, p0, Lcom/spotify/a/a;->g:[B
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
:cond_d
invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
:try_end_13
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_15
move-result-object v0
return-object v0
:catch_15
move-exception v0
new-instance v1, Ljava/lang/Error;
invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a(Ljava/lang/String;)I
.registers 10
const/16 v6, 0x20
const/4 v1, 0x1
const/4 v3, 0x0
const/16 v7, 0x2710
const/4 v2, -0x1
iget-boolean v0, p0, Lcom/spotify/a/a;->d:Z
if-eqz v0, :cond_69
iget-boolean v0, p0, Lcom/spotify/a/a;->d:Z
if-eqz v0, :cond_2c
sget-object v0, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
invoke-direct {p0, v0, v1}, Lcom/spotify/a/a;->a([BZ)[B
move-result-object v0
invoke-static {v0}, Lcom/spotify/a/a;->a([B)J
move-result-wide v0
const-wide/16 v4, 0x2710
mul-long/2addr v0, v4
shr-long/2addr v0, v6
long-to-int v0, v0
move v1, v0
:goto_23
iget-boolean v0, p0, Lcom/spotify/a/a;->d:Z
if-eqz v0, :cond_2b
if-ltz v1, :cond_2b
if-lt v1, v7, :cond_2e
:goto_2b
:cond_2b
return v2
:cond_2c
move v1, v2
goto :goto_23
:cond_2e
sget-object v0, Lcom/spotify/a/a;->f:Ljava/util/Map;
iget-object v2, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
if-eqz v0, :cond_3f
:goto_3a
aget v0, v0, v1
div-int/lit8 v2, v0, 0xa
goto :goto_2b
:cond_3f
iget-object v0, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
sget-object v2, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
invoke-direct {p0, v0, v3}, Lcom/spotify/a/a;->a([BZ)[B
move-result-object v0
invoke-static {v0}, Lcom/spotify/a/a;->a([B)J
move-result-wide v4
new-instance v6, Lcom/spotify/a/b;
invoke-direct {v6, p0, v4, v5}, Lcom/spotify/a/b;-><init>(Lcom/spotify/a/a;J)V
new-array v0, v7, [I
move v2, v3
:goto_57
if-ge v2, v7, :cond_5e
aput v2, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_57
:cond_5e
invoke-virtual {v6, v0}, Lcom/spotify/a/b;->a([I)V
sget-object v2, Lcom/spotify/a/a;->f:Ljava/util/Map;
iget-object v3, p0, Lcom/spotify/a/a;->e:Ljava/lang/String;
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3a
:cond_69
sget-object v0, Lcom/spotify/a/a;->c:Ljava/nio/charset/Charset;
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
invoke-direct {p0, v0, v1}, Lcom/spotify/a/a;->a([BZ)[B
move-result-object v0
invoke-static {v0}, Lcom/spotify/a/a;->a([B)J
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
shr-long/2addr v0, v6
long-to-int v2, v0
goto :goto_2b
.end method