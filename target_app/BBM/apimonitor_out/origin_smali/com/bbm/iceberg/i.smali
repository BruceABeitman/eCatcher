.class public final Lcom/bbm/iceberg/i;
.super Ljava/lang/Object;
.source "IcebergFetcher.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_be

    :try_start_10
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginArray()V

    :cond_24
    :goto_24
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v1

    move-object v2, v1

    :cond_2f
    :goto_2f
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "email"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_46
    const-string v7, "pins"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginArray()V

    :goto_56
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_69} :catch_6a

    goto :goto_56

    :catch_6a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading iceberg contacts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_83
    iput-object v3, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    return-void

    :cond_86
    :try_start_86
    invoke-virtual {v5}, Landroid/util/JsonReader;->endArray()V

    goto :goto_2f

    :cond_8a
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_95
    invoke-virtual {v5}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LCE: Loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enhancements from disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_bd} :catch_6a

    goto :goto_83

    :cond_be
    const-string v0, "No saved iceberg contacts found. Will fetch everything from scratch."

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_83
.end method

.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/bbm/iceberg/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/bbm/iceberg/i;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v1, Lcom/bbm/iceberg/i;

    invoke-direct {v1, v0}, Lcom/bbm/iceberg/i;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    iget-object v0, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    goto :goto_14

    :cond_18
    sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    goto :goto_14
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/iceberg/i;

    iget-object v2, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_8
    iget-object v0, p0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_5
.end method
