.class final Lcom/spotify/cosmos/router/NativeHelpers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sCharsetUtf8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/spotify/cosmos/router/NativeHelpers;->sCharsetUtf8:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class should not be directly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToMap([B)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    invoke-static {p0, v0}, Lcom/spotify/cosmos/router/NativeHelpers;->nextNull([BI)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, v0

    sget-object v5, Lcom/spotify/cosmos/router/NativeHelpers;->sCharsetUtf8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0}, Lcom/spotify/cosmos/router/NativeHelpers;->nextNull([BI)I

    move-result v2

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, v0

    sget-object v6, Lcom/spotify/cosmos/router/NativeHelpers;->sCharsetUtf8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v0, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2f
    move-object v0, v1

    goto :goto_8
.end method

.method public static mapToByteArray(Ljava/util/Map;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p0, :cond_2e

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/spotify/cosmos/router/NativeHelpers;->writeStringToStream(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/spotify/cosmos/router/NativeHelpers;->writeStringToStream(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_f

    :cond_2e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static nextNull([BI)I
    .registers 5

    :goto_0
    :try_start_0
    aget-byte v0, p0, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_7

    if-eqz v0, :cond_1d

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid character found at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return p1
.end method

.method private static writeStringToStream(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/spotify/cosmos/router/NativeHelpers;->sCharsetUtf8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
