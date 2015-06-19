.class public abstract Lcom/lenovo/anyshare/sdk/internal/o;
.super Ljava/lang/Object;
.source "MessageChannel.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/m;
.implements Lcom/lenovo/anyshare/sdk/internal/s$a;


# instance fields
.field protected final a:Lcom/lenovo/anyshare/sdk/internal/m$a;

.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/m$b;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/anyshare/sdk/internal/n;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/m$a;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/o;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/o;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/o;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/o;->b:Landroid/content/Context;

    const-string/jumbo v0, "user_presence"

    const-class v1, Lcom/lenovo/anyshare/sdk/internal/r$b;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "user_kicked"

    const-class v1, Lcom/lenovo/anyshare/sdk/internal/r$a;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v2, "packet_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "packet_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "presence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "user_presence"

    :goto_1c
    return-object v2

    :cond_1d
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "subject"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "subject"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "command"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "content_item"

    goto :goto_1c

    :cond_43
    const-string/jumbo v2, "notify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "content_items"

    goto :goto_1c

    :cond_50
    const-string/jumbo v2, "item_exists"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "content_item_exist"

    goto :goto_1c

    :cond_5d
    const-string/jumbo v2, "cancel_item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "cancel_shared_item"

    goto :goto_1c

    :cond_6a
    const-string/jumbo v2, "kickoff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string/jumbo v2, "kick"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    :cond_7c
    const-string/jumbo v2, "user_kicked"

    goto :goto_1c

    :cond_80
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method protected static final a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)V
    .registers 2

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/s;->a(Lcom/lenovo/anyshare/sdk/internal/t;)V

    return-void
.end method

.method protected static final b(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/u$a;

    invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/u$a;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_12

    move-object v1, v2

    :goto_f
    if-nez v1, :cond_1e

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v3, "MessageChannel"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    invoke-static {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)V

    goto :goto_11
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/n;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/o;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_d

    move-object v2, v3

    :goto_c
    return-object v2

    :cond_d
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/n;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_c

    :catch_14
    move-exception v1

    move-object v2, v3

    goto :goto_c
.end method

.method public a(Lcom/lenovo/anyshare/sdk/internal/m$b;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;)V
    .registers 2

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/anyshare/sdk/internal/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/o;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    const-string/jumbo v0, "not supported"

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/lenovo/anyshare/sdk/internal/m$b;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lcom/lenovo/anyshare/sdk/internal/n;)V
    .registers 7

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/m$b;

    :try_start_12
    invoke-interface {v2, p1}, Lcom/lenovo/anyshare/sdk/internal/m$b;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "MessageChannel"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_21
    return-void
.end method

.method public b(Lcom/lenovo/anyshare/sdk/internal/s;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Lcom/lenovo/anyshare/sdk/internal/s;)V

    return-void
.end method

.method protected b(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/lenovo/anyshare/sdk/internal/m$a;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/o;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;

    return-object v0
.end method

.method public c(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)V
    .registers 12

    const-string/jumbo v6, "MessageChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recieve packet:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/o;->b(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/t;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    :goto_21
    return-void

    :cond_22
    instance-of v6, p2, Lcom/lenovo/anyshare/sdk/internal/u$a;

    if-eqz v6, :cond_21

    move-object v1, p2

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/u$a;

    const/4 v4, 0x0

    :try_start_2a
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/u$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string/jumbo v6, "msg_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_41

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    :cond_41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string/jumbo v6, "msg_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4e
    invoke-virtual {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/n;

    move-result-object v4

    if-nez v4, :cond_77

    const-string/jumbo v6, "MessageChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to Message FAILED!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_6e} :catch_6f

    goto :goto_21

    :catch_6f
    move-exception v0

    const-string/jumbo v6, "MessageChannel"

    invoke-static {v6, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_77
    :try_start_77
    invoke-virtual {v4, v3}, Lcom/lenovo/anyshare/sdk/internal/n;->a(Lorg/json/JSONObject;)V
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_7a} :catch_6f

    invoke-virtual {p0, p1, v4}, Lcom/lenovo/anyshare/sdk/internal/o;->a(Lcom/lenovo/anyshare/sdk/internal/s;Lcom/lenovo/anyshare/sdk/internal/n;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/o;->b(Lcom/lenovo/anyshare/sdk/internal/n;)V

    goto :goto_21
.end method
