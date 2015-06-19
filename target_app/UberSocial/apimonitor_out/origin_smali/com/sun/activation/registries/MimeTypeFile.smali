.class public Lcom/sun/activation/registries/MimeTypeFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fname:Ljava/lang/String;

.field private type_hash:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :try_start_1b
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_2e

    :goto_26
    return-void

    :catchall_27
    move-exception v0

    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    :goto_2b
    throw v0

    :catch_2c
    move-exception v1

    goto :goto_2b

    :catch_2e
    move-exception v0

    goto :goto_26
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .registers 7

    const/4 v2, 0x0

    move-object v1, v2

    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    if-eqz v1, :cond_d

    invoke-direct {p0, v1}, Lcom/sun/activation/registries/MimeTypeFile;->parseEntry(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    if-nez v1, :cond_2d

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3f

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3f
    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parseEntry(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2
.end method

.method private parseEntry(Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_b

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_ae

    new-instance v4, Lcom/sun/activation/registries/LineTokenizer;

    invoke-direct {v4, v3}, Lcom/sun/activation/registries/LineTokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_23
    :goto_23
    invoke-virtual {v4}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v4}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v4}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v4}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :goto_49
    if-nez v2, :cond_64

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad .mime.types entry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_b

    :cond_64
    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    move-object v0, v2

    goto :goto_23

    :cond_6e
    const-string v6, "exts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/sun/activation/registries/MimeTypeEntry;

    invoke-direct {v6, v0, v2}, Lcom/sun/activation/registries/MimeTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v7, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Added: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sun/activation/registries/MimeTypeEntry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_7d

    :cond_ae
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :cond_bd
    :goto_bd
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/activation/registries/MimeTypeEntry;

    invoke-direct {v3, v1, v2}, Lcom/sun/activation/registries/MimeTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_bd

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Added: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sun/activation/registries/MimeTypeEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_bd

    :cond_ee
    move-object v2, v1

    goto/16 :goto_49
.end method


# virtual methods
.method public appendToRegistry(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->getMimeTypeEntry(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sun/activation/registries/MimeTypeEntry;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMimeTypeEntry(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeEntry;
    .registers 3

    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/activation/registries/MimeTypeEntry;

    return-object v0
.end method
