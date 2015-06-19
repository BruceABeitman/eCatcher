.class public Lcom/ubermedia/net/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:[C


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ld/a/d;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/ubermedia/net/b;->j:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0x3a98

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/net/b;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/net/b;->c:Ljava/util/HashMap;

    iput v1, p0, Lcom/ubermedia/net/b;->f:I

    iput v1, p0, Lcom/ubermedia/net/b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubermedia/net/b;->i:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must be not null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iput-object p1, p0, Lcom/ubermedia/net/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ubermedia/net/b;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ubermedia/net/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/ubermedia/net/b;
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/ubermedia/net/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_d
    return-object p0
.end method

.method public a()Ljava/net/HttpURLConnection;
    .registers 5

    iget-object v0, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubermedia/net/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubermedia/net/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubermedia/net/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ubermedia/net/b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_56
    iget-object v0, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_69
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ubermedia/net/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/ubermedia/net/b;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/ubermedia/net/b;->g:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/ubermedia/net/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ubermedia/net/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_a6
    iget-object v1, p0, Lcom/ubermedia/net/b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b3

    iget-object v1, p0, Lcom/ubermedia/net/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_b3
    iget-object v1, p0, Lcom/ubermedia/net/b;->h:Ld/a/d;

    if-eqz v1, :cond_bc

    :try_start_b7
    iget-object v1, p0, Lcom/ubermedia/net/b;->h:Ld/a/d;

    invoke-interface {v1, v0}, Ld/a/d;->a(Ljava/lang/Object;)Ld/a/d/b;
    :try_end_bc
    .catch Ld/a/c/d; {:try_start_b7 .. :try_end_bc} :catch_c6
    .catch Ld/a/c/c; {:try_start_b7 .. :try_end_bc} :catch_cb
    .catch Ld/a/c/a; {:try_start_b7 .. :try_end_bc} :catch_d0

    :cond_bc
    :goto_bc
    iget v1, p0, Lcom/ubermedia/net/b;->i:I

    if-lez v1, :cond_c5

    iget v1, p0, Lcom/ubermedia/net/b;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_c5
    return-object v0

    :catch_c6
    move-exception v1

    invoke-virtual {v1}, Ld/a/c/d;->printStackTrace()V

    goto :goto_bc

    :catch_cb
    move-exception v1

    invoke-virtual {v1}, Ld/a/c/c;->printStackTrace()V

    goto :goto_bc

    :catch_d0
    move-exception v1

    invoke-virtual {v1}, Ld/a/c/a;->printStackTrace()V

    goto :goto_bc
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/net/b;->f:I

    return-void
.end method

.method public a(Lcom/ubermedia/net/b/c;Ljava/util/Map;Lcom/ubermedia/net/b/d;J)V
    .registers 13

    const/4 v3, 0x0

    if-eqz p2, :cond_44

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Lcom/ubermedia/net/c;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v5, Lcom/ubermedia/net/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_44
    const-string v1, "POST"

    iget-object v2, p0, Lcom/ubermedia/net/b;->d:Ljava/lang/String;

    move-object v0, p1

    move-wide v4, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ubermedia/net/b;->b:Ljava/util/HashMap;

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ld/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/b;->h:Ld/a/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/net/b;->f:I

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ubermedia/net/b;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ubermedia/net/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/ubermedia/net/b;
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/ubermedia/net/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_d
    return-object p0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/net/b;->g:I

    return-void
.end method

.method public c()Ld/a/d;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/net/b;->h:Ld/a/d;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/net/b;->i:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/net/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/net/b;->g:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/net/b;->i:I

    return v0
.end method
