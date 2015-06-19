.class final Lcom/bbm/l/c/c;
.super Ljava/lang/Object;
.source "AsyncStickerPackDetailsFetcher.java"

# interfaces
.implements Lcom/bbm/util/bu;


# instance fields
.field final synthetic a:Lcom/bbm/l/c/d;

.field final synthetic b:Z

.field final synthetic c:Lcom/bbm/util/bo;


# direct methods
.method constructor <init>(Lcom/bbm/l/c/d;ZLcom/bbm/util/bo;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    iput-boolean p2, p0, Lcom/bbm/l/c/c;->b:Z

    iput-object p3, p0, Lcom/bbm/l/c/c;->c:Lcom/bbm/util/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    if-eqz v0, :cond_e

    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bbm/l/c/d;->a(I)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bbm/l/c/d;->a(I)V

    goto :goto_e
.end method

.method public final a([BLjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    invoke-interface {v0, v1}, Lcom/bbm/l/c/d;->a(I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_1a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/bbm/l/b/m;

    invoke-direct {v0}, Lcom/bbm/l/b/m;-><init>()V

    invoke-virtual {v0, v4}, Lcom/bbm/l/b/m;->a(Lorg/json/JSONObject;)Lcom/bbm/l/b/m;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_27} :catch_35

    move-result-object v0

    move-object v3, v0

    :cond_29
    :goto_29
    if-nez v3, :cond_3a

    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    invoke-interface {v0, v2}, Lcom/bbm/l/c/d;->a(I)V

    goto :goto_d

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_3a
    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    if-eqz v0, :cond_d

    iget-object v0, v3, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, v3, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, 0x42430bcf

    if-ne v0, v4, :cond_6a

    :cond_51
    move v0, v2

    :goto_52
    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/bbm/l/c/c;->b:Z

    if-eqz v0, :cond_6c

    iget-object v0, v3, Lcom/bbm/l/b/m;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/bbm/l/c/c;->c:Lcom/bbm/util/bo;

    iget-object v2, v3, Lcom/bbm/l/b/m;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    invoke-static {v0, v2, v1, v3}, Lcom/bbm/l/c/b;->a(Lcom/bbm/util/bo;Ljava/lang/String;ZLcom/bbm/l/c/d;)V

    goto :goto_d

    :cond_6a
    move v0, v1

    goto :goto_52

    :cond_6c
    iget-object v0, p0, Lcom/bbm/l/c/c;->a:Lcom/bbm/l/c/d;

    invoke-interface {v0, v3}, Lcom/bbm/l/c/d;->a(Lcom/bbm/l/b/m;)V

    goto :goto_d
.end method
