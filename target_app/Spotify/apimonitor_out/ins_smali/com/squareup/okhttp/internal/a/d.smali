.class public final Lcom/squareup/okhttp/internal/a/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lcom/squareup/okhttp/internal/a/d;
.field private static final c:[C
.field final b:[B
.field private transient d:I
.field private transient e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_14
sput-object v0, Lcom/squareup/okhttp/internal/a/d;->c:[C
const/4 v0, 0x0
new-array v0, v0, [B
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/a/d;->a:Lcom/squareup/okhttp/internal/a/d;
return-void
nop
:array_14
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x61t 0x0t
0x62t 0x0t
0x63t 0x0t
0x64t 0x0t
0x65t 0x0t
0x66t 0x0t
.end array-data
.end method
.method constructor <init>([B)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
.registers 3
:try_start_0
new-instance v0, Lcom/squareup/okhttp/internal/a/d;
const-string v1, "UTF-8"
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/a/d;-><init>([B)V
iput-object p0, v0, Lcom/squareup/okhttp/internal/a/d;->e:Ljava/lang/String;
:try_end_d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public static varargs a([B)Lcom/squareup/okhttp/internal/a/d;
.registers 3
new-instance v1, Lcom/squareup/okhttp/internal/a/d;
invoke-virtual {p0}, [B->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/a/d;-><init>([B)V
return-object v1
.end method
.method public static b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
.registers 3
invoke-static {p0}, Lcom/squareup/okhttp/internal/a/a;->a(Ljava/lang/String;)[B
move-result-object v1
if-eqz v1, :cond_c
new-instance v0, Lcom/squareup/okhttp/internal/a/d;
invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/a/d;-><init>([B)V
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final a()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->e:Ljava/lang/String;
if-eqz v0, :cond_5
:goto_4
return-object v0
:try_start_5
:cond_5
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
const-string v2, "UTF-8"
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->e:Ljava/lang/String;
:try_end_10
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_10} :catch_11
goto :goto_4
:catch_11
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/a;->a([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 10
const/4 v0, 0x0
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v1, v1
mul-int/lit8 v1, v1, 0x2
new-array v2, v1, [C
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v4, v3
move v1, v0
:goto_c
if-ge v0, v4, :cond_29
aget-byte v5, v3, v0
add-int/lit8 v6, v1, 0x1
sget-object v7, Lcom/squareup/okhttp/internal/a/d;->c:[C
shr-int/lit8 v8, v5, 0x4
and-int/lit8 v8, v8, 0xf
aget-char v7, v7, v8
aput-char v7, v2, v1
add-int/lit8 v1, v6, 0x1
sget-object v7, Lcom/squareup/okhttp/internal/a/d;->c:[C
and-int/lit8 v5, v5, 0xf
aget-char v5, v7, v5
aput-char v5, v2, v6
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_29
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
return-object v0
.end method
.method public final c(Ljava/lang/String;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v0, v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-eq v0, v3, :cond_c
:cond_b
:goto_b
return v1
:cond_c
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->e:Ljava/lang/String;
if-ne p1, v0, :cond_12
move v1, v2
goto :goto_b
:cond_12
move v0, v1
:goto_13
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v3, v3
if-ge v0, v3, :cond_25
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
aget-byte v3, v3, v0
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
if-ne v3, v4, :cond_b
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_25
move v1, v2
goto :goto_b
.end method
.method public final d()Lcom/squareup/okhttp/internal/a/d;
.registers 7
const/16 v5, 0x5a
const/16 v4, 0x41
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v0, v0
if-ge v1, v0, :cond_39
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
aget-byte v3, v0, v1
if-lt v3, v4, :cond_3a
if-gt v3, v5, :cond_3a
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
invoke-virtual {v0}, [B->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
add-int/lit8 v2, v1, 0x1
add-int/lit8 v3, v3, 0x20
int-to-byte v3, v3
aput-byte v3, v0, v1
move v1, v2
:goto_23
array-length v2, v0
if-ge v1, v2, :cond_34
aget-byte v2, v0, v1
if-lt v2, v4, :cond_31
if-gt v2, v5, :cond_31
add-int/lit8 v2, v2, 0x20
int-to-byte v2, v2
aput-byte v2, v0, v1
:cond_31
add-int/lit8 v1, v1, 0x1
goto :goto_23
:cond_34
new-instance p0, Lcom/squareup/okhttp/internal/a/d;
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a/d;-><init>([B)V
:cond_39
return-object p0
:cond_3a
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
.end method
.method public final e()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v0, v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-eq p1, p0, :cond_12
instance-of v0, p1, Lcom/squareup/okhttp/internal/a/d;
if-eqz v0, :cond_14
check-cast p1, Lcom/squareup/okhttp/internal/a/d;
iget-object v0, p1, Lcom/squareup/okhttp/internal/a/d;->b:[B
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final f()[B
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
invoke-virtual {v0}, [B->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
return-object v0
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/a/d;->d:I
if-eqz v0, :cond_5
:goto_4
return v0
:cond_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
move-result v0
iput v0, p0, Lcom/squareup/okhttp/internal/a/d;->d:I
goto :goto_4
.end method
.method public final toString()Ljava/lang/String;
.registers 6
const/4 v2, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v0, v0
if-nez v0, :cond_b
const-string v0, "ByteString[size=0]"
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v0, v0
const/16 v1, 0x10
if-gt v0, v1, :cond_2a
const-string v0, "ByteString[size=%s data=%s]"
new-array v1, v2, [Ljava/lang/Object;
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v2, v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/d;->c()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_a
:try_start_2a
:cond_2a
const-string v0, "ByteString[size=%s md5=%s]"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
array-length v3, v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "MD5"
invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v3
iget-object v4, p0, Lcom/squareup/okhttp/internal/a/d;->b:[B
invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v3
invoke-static {v3}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;
move-result-object v3
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/d;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_53
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_53} :catch_55
move-result-object v0
goto :goto_a
:catch_55
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method