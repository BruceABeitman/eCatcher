.class public final Lokio/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lokio/ByteString; = null

.field private static final b:[C = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient c:I

.field final data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lokio/ByteString;->b:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->a:Lokio/ByteString;

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

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static varargs a([B)Lokio/ByteString;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-gez v1, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "byteCount < 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_3b

    sub-int v3, v1, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_39

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_39
    add-int/2addr v0, v3

    goto :goto_28

    :cond_3b
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, v2}, Lokio/ByteString;-><init>([B)V

    :try_start_40
    const-class v1, Lokio/ByteString;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, v0, Lokio/ByteString;->data:[B

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_40 .. :try_end_51} :catch_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_51} :catch_59

    return-void

    :catch_52
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_59
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v4, v3

    move v1, v0

    :goto_c
    if-ge v0, v4, :cond_29

    aget-byte v5, v3, v0

    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lokio/ByteString;->b:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lokio/ByteString;->b:[C

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

.method public final b()I
    .registers 2

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final c()[B
    .registers 2

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_14

    check-cast p1, Lokio/ByteString;

    iget-object v0, p1, Lokio/ByteString;->data:[B

    iget-object v1, p0, Lokio/ByteString;->data:[B

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

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lokio/ByteString;->c:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->c:I

    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_b

    const-string v0, "ByteString[size=0]"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2a

    const-string v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2a
    :try_start_2a
    const-string v0, "ByteString[size=%s md5=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iget-object v4, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->a()Ljava/lang/String;

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
