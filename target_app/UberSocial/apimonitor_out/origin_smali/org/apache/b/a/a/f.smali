.class public Lorg/apache/b/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Class;

.field private static b:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/b/a/a/f;->a:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.b.a.a.f"

    invoke-static {v0}, Lorg/apache/b/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/a/f;->a:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/b/a/a/f;->a:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/b/a/a/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lorg/apache/b/a/a/i;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/b/a/a/i;-><init>(Ljava/io/InputStream;)V

    :goto_15
    invoke-virtual {v2}, Lorg/apache/b/a/a/i;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_26

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_15

    :catch_20
    move-exception v0

    sget-object v2, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lorg/apache/b/a/g/b;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Lorg/apache/b/a/g/b;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1e

    const-string v2, "=20"

    invoke-virtual {v1, v2}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    invoke-virtual {v1, v2}, Lorg/apache/b/a/g/b;->a(C)V

    goto :goto_1b

    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/b/a/a/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lorg/apache/b/a/a/b;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/b/a/a/b;-><init>(Ljava/io/InputStream;)V

    :goto_15
    invoke-virtual {v2}, Lorg/apache/b/a/a/b;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_26

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_15

    :catch_20
    move-exception v0

    sget-object v2, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, -0x1

    new-instance v3, Lorg/apache/b/a/g/b;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Lorg/apache/b/a/g/b;-><init>(I)V

    const/4 v0, 0x0

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    const-string v1, "=?"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_23

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_78

    :cond_1e
    :goto_1e
    invoke-virtual {v3}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    sub-int v1, v4, v0

    if-lez v1, :cond_2e

    :try_start_27
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V

    :cond_2e
    const/16 v0, 0x3f

    add-int/lit8 v1, v4, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v2, :cond_6c

    const/16 v0, 0x3f

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_40
    if-eq v0, v2, :cond_6e

    const-string v1, "?="

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :goto_4a
    if-ne v1, v2, :cond_61

    if-eq v0, v2, :cond_70

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v1, v0, :cond_60

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x3d

    if-ne v1, v6, :cond_70

    :cond_60
    move v1, v0

    :cond_61
    if-ne v0, v1, :cond_98

    const-string v0, ""

    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v0}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :cond_6c
    move v0, v2

    goto :goto_40

    :cond_6e
    move v1, v2

    goto :goto_4a

    :cond_70
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_77} :catch_78

    goto :goto_1e

    :catch_78
    move-exception v0

    sget-object v1, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Decoding header field body \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_98
    add-int/lit8 v6, v4, 0x2

    :try_start_9a
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lorg/apache/b/a/g/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_e3

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_65

    sget-object v4, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "MIME charset \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' in header field doesn\'t have a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "corresponding Java charset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_65

    :cond_e3
    invoke-static {v7}, Lorg/apache/b/a/g/c;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_121

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_65

    sget-object v4, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\' (MIME charset \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_121
    const-string v4, "Q"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12f

    invoke-static {v0, v7}, Lorg/apache/b/a/a/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_65

    :cond_12f
    const-string v4, "B"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-static {v0, v7}, Lorg/apache/b/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_65

    :cond_13d
    sget-object v4, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_65

    sget-object v4, Lorg/apache/b/a/a/f;->b:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Warning: Unknown encoding in header field \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_163} :catch_78

    goto/16 :goto_65
.end method

.method static d(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
