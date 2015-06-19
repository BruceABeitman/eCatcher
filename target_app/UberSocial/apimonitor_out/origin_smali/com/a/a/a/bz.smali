.class public final Lcom/a/a/a/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/a/a/a/ac;


# instance fields
.field private b:Ljava/net/HttpURLConnection;

.field private c:Ljava/net/URL;

.field private final d:Ljava/lang/String;

.field private e:Lcom/a/a/a/ag;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/a/a/a/ac;->a:Lcom/a/a/a/ac;

    sput-object v0, Lcom/a/a/a/bz;->a:Lcom/a/a/a/ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/bz;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/bz;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/bz;->h:Z

    const/16 v0, 0x2000

    iput v0, p0, Lcom/a/a/a/bz;->i:I

    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/bz;->c:Ljava/net/URL;
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_1b} :catch_1e

    iput-object p2, p0, Lcom/a/a/a/bz;->d:Ljava/lang/String;

    return-void

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic a(Lcom/a/a/a/bz;)I
    .registers 2

    iget v0, p0, Lcom/a/a/a/bz;->i:I

    return v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/a/a/a/bz;
    .registers 9

    new-instance v0, Lcom/a/a/a/ca;

    iget-boolean v3, p0, Lcom/a/a/a/bz;->g:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/ca;-><init>(Lcom/a/a/a/bz;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/a/a/a/ca;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bz;

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;
    .registers 3

    new-instance v0, Lcom/a/a/a/bz;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/bz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/a/a/a/bz;
    .registers 6

    invoke-static {p0, p1}, Lcom/a/a/a/bz;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bz;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/bz;

    const-string v2, "GET"

    invoke-direct {v1, v0, v2}, Lcom/a/a/a/bz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_19

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/a/a/a/bz;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    if-eqz p3, :cond_2e

    const-string v0, "Content-Type"

    invoke-direct {p0, v0, p3}, Lcom/a/a/a/bz;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    :cond_2e
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lcom/a/a/a/bz;->d(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/bz;->j()Lcom/a/a/a/bz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    invoke-virtual {v0, p4}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)Lcom/a/a/a/ag;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x3f

    const/16 v6, 0x3d

    const/16 v4, 0x2f

    const/16 v5, 0x26

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_87

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_87
    if-ge v2, v3, :cond_3b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_3b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14
.end method

.method public static b(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;
    .registers 3

    new-instance v0, Lcom/a/a/a/bz;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/bz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/a/a/a/bz;
    .registers 6

    invoke-static {p0, p1}, Lcom/a/a/a/bz;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bz;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/bz;

    const-string v2, "POST"

    invoke-direct {v1, v0, v2}, Lcom/a/a/a/bz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/a/a/a/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_7c

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_7b

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v3, "%2B"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7a
    .catch Ljava/net/URISyntaxException; {:try_start_2f .. :try_end_7a} :catch_83

    move-result-object v0

    :cond_7b
    return-object v0

    :catch_7c
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_83
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Parsing URI failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v0, Lcom/a/a/a/ae;

    invoke-direct {v0, v1}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    const-string p0, "UTF-8"

    goto :goto_8
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v7, 0x22

    const/4 v2, 0x0

    const/16 v6, 0x3b

    const/4 v5, -0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-object v0, v2

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1e

    if-ne v3, v1, :cond_20

    :cond_1e
    move-object v0, v2

    goto :goto_f

    :cond_20
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v5, :cond_7b

    move v0, v3

    move v3, v1

    :goto_28
    if-ge v0, v3, :cond_79

    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v5, :cond_6c

    if-ge v4, v3, :cond_6c

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6c

    const/4 v1, 0x2

    if-le v4, v1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_f

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_f

    const/4 v1, 0x1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v5, :cond_75

    move v0, v1

    :cond_75
    move v8, v0

    move v0, v3

    move v3, v8

    goto :goto_28

    :cond_79
    move-object v0, v2

    goto :goto_f

    :cond_7b
    move v8, v0

    move v0, v3

    move v3, v8

    goto :goto_28
.end method

.method private d(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/bz;->i()Lcom/a/a/a/bz;

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)Lcom/a/a/a/ag;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
    .registers 5

    invoke-direct {p0, p1}, Lcom/a/a/a/bz;->d(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, ": "

    invoke-direct {v0, v1}, Lcom/a/a/a/bz;->d(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/a/a/a/bz;->d(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Lcom/a/a/a/bz;->d(Ljava/lang/CharSequence;)Lcom/a/a/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "Content-Length"

    invoke-direct {p0}, Lcom/a/a/a/bz;->h()Lcom/a/a/a/bz;

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0}, Lcom/a/a/a/bz;->f()Ljava/io/InputStream;

    move-result-object v2

    iget v3, p0, Lcom/a/a/a/bz;->i:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v1, v0}, Lcom/a/a/a/bz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/a/a/a/bz;

    invoke-static {p1}, Lcom/a/a/a/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2a} :catch_32

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_15

    :catch_32
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private e()Ljava/net/HttpURLConnection;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/a/a/a/bz;->a:Lcom/a/a/a/ac;

    iget-object v1, p0, Lcom/a/a/a/bz;->c:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/a/a/a/ac;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/bz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private f()Ljava/io/InputStream;
    .registers 3

    invoke-virtual {p0}, Lcom/a/a/a/bz;->b()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    :try_start_8
    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_18
    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_10

    :try_start_22
    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_10

    :catch_2b
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private g()Lcom/a/a/a/bz;
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    if-nez v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-boolean v0, p0, Lcom/a/a/a/bz;->f:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)Lcom/a/a/a/ag;

    :cond_10
    iget-boolean v0, p0, Lcom/a/a/a/bz;->g:Z

    if-eqz v0, :cond_1d

    :try_start_14
    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    invoke-virtual {v0}, Lcom/a/a/a/ag;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_23

    :goto_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    goto :goto_4

    :cond_1d
    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    invoke-virtual {v0}, Lcom/a/a/a/ag;->close()V

    goto :goto_19

    :catch_23
    move-exception v0

    goto :goto_19
.end method

.method private h()Lcom/a/a/a/bz;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/bz;->g()Lcom/a/a/a/bz;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private i()Lcom/a/a/a/bz;
    .registers 5

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-static {v0, v1}, Lcom/a/a/a/bz;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/ag;

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/a/a/a/bz;->i:I

    invoke-direct {v1, v2, v0, v3}, Lcom/a/a/a/ag;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    goto :goto_4
.end method

.method private j()Lcom/a/a/a/bz;
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/bz;->f:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/bz;->f:Z

    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    invoke-direct {v0}, Lcom/a/a/a/bz;->i()Lcom/a/a/a/bz;

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)Lcom/a/a/a/ag;

    :goto_19
    return-object p0

    :cond_1a
    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)Lcom/a/a/a/ag;

    goto :goto_19
.end method


# virtual methods
.method public final a(I)Lcom/a/a/a/bz;
    .registers 4

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/bz;
    .registers 5

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {p0, p1, v1, v0}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    return-object v0

    :cond_c
    move-object v0, v1

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
    .registers 4

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/a/a/a/bz;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_13

    :try_start_b
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/a/a/a/bz;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_29

    move-result-object v0

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_22

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    move-object v1, v2

    :goto_15
    :try_start_15
    new-instance v2, Lcom/a/a/a/ae;

    invoke-direct {v2, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    :goto_1c
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    :cond_21
    :goto_21
    throw v0

    :catch_22
    move-exception v1

    goto :goto_12

    :catch_24
    move-exception v1

    goto :goto_21

    :catchall_26
    move-exception v0

    move-object v1, v2

    goto :goto_1c

    :catch_29
    move-exception v0

    goto :goto_15
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/a/a/a/bz;
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/bz;->j()Lcom/a/a/a/bz;

    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    iget-object v0, p0, Lcom/a/a/a/bz;->e:Lcom/a/a/a/ag;

    invoke-direct {p0, p4, v0}, Lcom/a/a/a/bz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/a/a/a/bz;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(Ljava/util/Map$Entry;)Lcom/a/a/a/bz;
    .registers 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lcom/a/a/a/bz;
    .registers 4

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/a/a/a/bz;->h()Lcom/a/a/a/bz;

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/bz;->b:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/a/a/a/bz;->e()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/bz;->b:Ljava/net/HttpURLConnection;

    :cond_a
    iget-object v0, p0, Lcom/a/a/a/bz;->b:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final b()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/bz;->g()Lcom/a/a/a/bz;

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/a/a/a/ae;

    invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0}, Lcom/a/a/a/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/a/a/a/bz;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/bz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/bz;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
