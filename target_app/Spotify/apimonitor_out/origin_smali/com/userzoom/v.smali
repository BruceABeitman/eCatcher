.class public final Lcom/userzoom/v;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/HashMap;

.field private h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/userzoom/v;->a:I

    iput v0, p0, Lcom/userzoom/v;->b:I

    iput v0, p0, Lcom/userzoom/v;->c:I

    iput v0, p0, Lcom/userzoom/v;->d:I

    iput v0, p0, Lcom/userzoom/v;->e:I

    iput v0, p0, Lcom/userzoom/v;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/userzoom/v;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/userzoom/v;->h:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/userzoom/n;->c:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data:image/jpeg;base64,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_43

    move-result-object v0

    :goto_42
    return-object v0

    :catch_43
    move-exception v0

    const-string v0, "VIDEO_POST"

    const-string v1, "ERROR converting image to base64"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_42
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "idTask"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :try_start_8
    const-string v0, "idTask"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_13
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_e
.end method

.method private a(Ljava/util/ArrayList;I)Ljava/lang/String;
    .registers 16

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput v2, p0, Lcom/userzoom/v;->c:I

    iput v2, p0, Lcom/userzoom/v;->d:I

    :try_start_15
    const-string v0, "VIDEO_POST"

    const-string v1, "process json : a"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/userzoom/m;

    iget-object v4, v0, Lcom/userzoom/m;->a:Ljava/lang/String;

    if-eqz v4, :cond_67

    iget-object v1, p0, Lcom/userzoom/v;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_67

    invoke-static {v4}, Lcom/userzoom/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v5, p0, Lcom/userzoom/v;->g:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/userzoom/v;->c:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/userzoom/v;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/userzoom/v;->c:I

    :cond_67
    iget-object v1, p0, Lcom/userzoom/v;->h:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/userzoom/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_9e

    iget-object v1, p0, Lcom/userzoom/v;->h:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/userzoom/m;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p0, Lcom/userzoom/v;->d:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/userzoom/m;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/userzoom/v;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/userzoom/v;->d:I

    :cond_9e
    new-instance v10, Lcom/userzoom/w;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/userzoom/w;-><init>(B)V

    iget-object v1, v0, Lcom/userzoom/m;->d:[I

    array-length v1, v1

    if-lez v1, :cond_288

    iget-object v1, v0, Lcom/userzoom/m;->d:[I

    const/4 v4, 0x0

    aget v4, v1, v4

    iget-object v1, v0, Lcom/userzoom/m;->d:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    :goto_b3
    iput v4, v10, Lcom/userzoom/w;->a:I

    iput v1, v10, Lcom/userzoom/w;->b:I

    iput v4, v10, Lcom/userzoom/w;->c:I

    iput v1, v10, Lcom/userzoom/w;->d:I

    iget v1, v0, Lcom/userzoom/m;->e:I

    iput v1, v10, Lcom/userzoom/w;->f:I

    iget-object v1, v0, Lcom/userzoom/m;->f:Ljava/lang/String;

    iput-object v1, v10, Lcom/userzoom/w;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v10, Lcom/userzoom/w;->i:I

    iput v1, v10, Lcom/userzoom/w;->h:I

    iget v1, v0, Lcom/userzoom/m;->j:I

    iput v1, v10, Lcom/userzoom/w;->m:I

    iget v5, p0, Lcom/userzoom/v;->e:I

    iget v4, p0, Lcom/userzoom/v;->f:I

    iget-object v1, v0, Lcom/userzoom/m;->a:Ljava/lang/String;

    if-eqz v1, :cond_100

    iget-object v11, p0, Lcom/userzoom/v;->g:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_100

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/userzoom/v;->f:I

    iput v4, p0, Lcom/userzoom/v;->e:I

    move v5, v4

    move v4, v1

    :cond_100
    iget-object v1, p0, Lcom/userzoom/v;->h:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/userzoom/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v11, "_"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v11, v10, Lcom/userzoom/w;->h:I

    iput v1, v10, Lcom/userzoom/w;->i:I

    iput v5, v10, Lcom/userzoom/w;->j:I

    iput v4, v10, Lcom/userzoom/w;->k:I

    iget-boolean v1, v0, Lcom/userzoom/m;->b:Z

    if-eqz v1, :cond_155

    move v1, v3

    :goto_133
    iput v1, v10, Lcom/userzoom/w;->e:I

    iget-object v0, v0, Lcom/userzoom/m;->d:[I

    iput-object v0, v10, Lcom/userzoom/w;->l:[I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_13c} :catch_13e

    goto/16 :goto_20

    :catch_13e
    move-exception v0

    const-string v1, "VIDEO_POST"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error generating the json.. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_154
    return-object v0

    :cond_155
    move v1, v2

    goto :goto_133

    :cond_157
    :try_start_157
    const-string v0, "VIDEO_POST"

    const-string v1, "process json : b"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lcom/userzoom/b;

    invoke-direct {v0}, Lcom/userzoom/b;-><init>()V

    invoke-virtual {v0, v3}, Lcom/userzoom/b;->a(Ljava/io/OutputStream;)Lcom/userzoom/by;

    move-result-object v4

    invoke-virtual {v4}, Lcom/userzoom/by;->d()V

    const-string v0, "id"

    invoke-virtual {v4, v0, p2}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v0, "images"

    invoke-virtual {v4, v0}, Lcom/userzoom/by;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/userzoom/by;->b(Ljava/lang/String;)V

    goto :goto_17d

    :cond_18d
    invoke-virtual {v4}, Lcom/userzoom/by;->c()V

    const-string v0, "urls"

    invoke-virtual {v4, v0}, Lcom/userzoom/by;->c(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_199
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/userzoom/by;->b(Ljava/lang/String;)V

    goto :goto_199

    :cond_1a9
    invoke-virtual {v4}, Lcom/userzoom/by;->c()V

    sget v0, Lcom/userzoom/n;->d:F

    const-string v0, "rp"

    sget v1, Lcom/userzoom/n;->d:F

    invoke-virtual {v4, v0}, Lcom/userzoom/by;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/userzoom/by;->a(F)V

    const-string v0, "mouse"

    invoke-virtual {v4, v0}, Lcom/userzoom/by;->c(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_276

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/userzoom/w;

    invoke-virtual {v4}, Lcom/userzoom/by;->d()V

    const-string v1, "x"

    iget v6, v0, Lcom/userzoom/w;->a:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "cx"

    iget v6, v0, Lcom/userzoom/w;->c:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "y"

    iget v6, v0, Lcom/userzoom/w;->b:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "cy"

    iget v6, v0, Lcom/userzoom/w;->d:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "bl"

    iget v6, v0, Lcom/userzoom/w;->e:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "or"

    iget v6, v0, Lcom/userzoom/w;->m:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "ev"

    invoke-virtual {v4, v1}, Lcom/userzoom/by;->d(Ljava/lang/String;)V

    const-string v1, "t"

    iget v6, v0, Lcom/userzoom/w;->f:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/userzoom/w;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_215

    const-string v1, "i"

    iget-object v6, v0, Lcom/userzoom/w;->g:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_215
    invoke-virtual {v4}, Lcom/userzoom/by;->e()V

    const-string v1, "url"

    invoke-virtual {v4, v1}, Lcom/userzoom/by;->d(Ljava/lang/String;)V

    const-string v1, "npost"

    iget v6, v0, Lcom/userzoom/w;->h:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "nurl"

    iget v6, v0, Lcom/userzoom/w;->i:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/userzoom/by;->e()V

    const-string v1, "img"

    invoke-virtual {v4, v1}, Lcom/userzoom/by;->d(Ljava/lang/String;)V

    const-string v1, "npost"

    iget v6, v0, Lcom/userzoom/w;->j:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v1, "nimg"

    iget v6, v0, Lcom/userzoom/w;->k:I

    invoke-virtual {v4, v1, v6}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/userzoom/by;->e()V

    const-string v1, "f"

    invoke-virtual {v4, v1}, Lcom/userzoom/by;->c(Ljava/lang/String;)V

    move v1, v2

    :goto_24a
    iget-object v6, v0, Lcom/userzoom/w;->l:[I

    array-length v6, v6

    if-ge v1, v6, :cond_26e

    invoke-virtual {v4}, Lcom/userzoom/by;->d()V

    const-string v6, "x"

    iget-object v7, v0, Lcom/userzoom/w;->l:[I

    add-int/lit8 v8, v1, 0x0

    aget v7, v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    const-string v6, "y"

    iget-object v7, v0, Lcom/userzoom/w;->l:[I

    add-int/lit8 v8, v1, 0x1

    aget v7, v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/userzoom/by;->a(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/userzoom/by;->e()V

    add-int/lit8 v1, v1, 0x2

    goto :goto_24a

    :cond_26e
    invoke-virtual {v4}, Lcom/userzoom/by;->c()V

    invoke-virtual {v4}, Lcom/userzoom/by;->e()V

    goto/16 :goto_1c1

    :cond_276
    invoke-virtual {v4}, Lcom/userzoom/by;->c()V

    invoke-virtual {v4}, Lcom/userzoom/by;->e()V

    invoke-virtual {v4}, Lcom/userzoom/by;->close()V

    invoke-virtual {v4}, Lcom/userzoom/by;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_285} :catch_13e

    move-result-object v0

    goto/16 :goto_154

    :cond_288
    move v1, v2

    move v4, v2

    goto/16 :goto_b3
.end method

.method private static a(Ljava/util/ArrayList;)V
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/userzoom/m;

    iget-object v3, v0, Lcom/userzoom/m;->a:Ljava/lang/String;

    if-eqz v3, :cond_9

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/userzoom/n;->c:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jpeg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    :try_start_39
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_40

    :cond_3c
    :goto_3c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catch_40
    move-exception v3

    const-string v4, "VIDEO_POST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error deleting local image"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_59
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .registers 26

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/userzoom/v;->b:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/userzoom/v;->a:I

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/userzoom/m;

    iget-boolean v4, v2, Lcom/userzoom/m;->g:Z

    iget-boolean v3, v2, Lcom/userzoom/m;->h:Z

    iget-boolean v2, v2, Lcom/userzoom/m;->i:Z

    :cond_31
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/userzoom/v;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_194

    move-object/from16 v0, p0

    iget v9, v0, Lcom/userzoom/v;->b:I

    if-eqz p2, :cond_46

    :try_start_3f
    const-string v5, "VIDEO_POST"

    const-string v10, "isEnd"

    invoke-static {v5, v10}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/userzoom/n;->g()Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "videourl"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "cu"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const-string v13, "sw"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "sh"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cTask"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lcom/userzoom/v;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "idStudy"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "cClient"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz p2, :cond_19f

    const-string v5, "1"

    :goto_8d
    sget v19, Lcom/userzoom/n;->d:F

    const/high16 v20, 0x42c8

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/userzoom/b;

    invoke-direct/range {v20 .. v20}, Lcom/userzoom/b;-><init>()V

    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {v20 .. v21}, Lcom/userzoom/b;->a(Ljava/io/OutputStream;)Lcom/userzoom/by;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/userzoom/by;->d()V

    const-string v22, "file"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "user"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v11}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "idUser"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v12}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "nmouse"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "rp"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "msov"

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/userzoom/n;->f()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "fps"

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/userzoom/n;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "fpsm"

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/userzoom/n;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxwidth"

    const-string v9, "1024"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "swidth"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v13}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "sheight"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v14}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "post"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v7}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "idStudy"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cTask"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v15}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "idTask"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cClient"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "theend"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v5}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ftaapp"

    if-eqz v4, :cond_1a3

    if-nez v2, :cond_1a3

    const-string v2, "1"

    :goto_15f
    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v2}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ftvapp"

    if-eqz v4, :cond_1a6

    if-nez v3, :cond_1a6

    const-string v2, "1"

    :goto_16c
    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v2}, Lcom/userzoom/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/userzoom/by;->e()V

    invoke-virtual/range {v20 .. v20}, Lcom/userzoom/by;->close()V

    invoke-virtual/range {v20 .. v20}, Lcom/userzoom/by;->flush()V

    const-string v2, "VIDEO_POST"

    const-string v3, "process json : c"

    invoke-static {v2, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/userzoom/x;

    invoke-direct {v3, v10, v2}, Lcom/userzoom/x;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/userzoom/y;->a()Lcom/userzoom/y;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/userzoom/y;->a(Lcom/userzoom/x;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_191} :catch_1a9

    :goto_191
    invoke-static {v6}, Lcom/userzoom/v;->a(Ljava/util/ArrayList;)V

    :cond_194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/userzoom/v;->a:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/userzoom/v;->a:I

    return-void

    :cond_19f
    :try_start_19f
    const-string v5, "0"

    goto/16 :goto_8d

    :cond_1a3
    const-string v2, "0"

    goto :goto_15f

    :cond_1a6
    const-string v2, "0"
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a8} :catch_1a9

    goto :goto_16c

    :catch_1a9
    move-exception v2

    const-string v3, "VIDEO_POST"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error doing videoPost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_191
.end method
