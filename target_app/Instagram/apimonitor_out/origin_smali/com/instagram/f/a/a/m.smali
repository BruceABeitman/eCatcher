.class final Lcom/instagram/f/a/a/m;
.super Lcom/instagram/api/k/a/k;
.source "FetchInboxRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/k",
        "<",
        "Lcom/instagram/f/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/f/a/b/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/api/k/a/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;-><init>()V

    return-void
.end method

.method private b()Lcom/instagram/f/a/b/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/f/a/a/m;->a:Lcom/instagram/f/a/b/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/f/a/b/a;

    invoke-direct {v0}, Lcom/instagram/f/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/a/a/m;->a:Lcom/instagram/f/a/b/a;

    :cond_b
    iget-object v0, p0, Lcom/instagram/f/a/a/m;->a:Lcom/instagram/f/a/b/a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shares"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v3, v4, :cond_2c

    invoke-static {p1}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_16

    :catch_26
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v1

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/instagram/f/a/b/a;->a(Ljava/util/List;)V

    goto :goto_2b

    :cond_34
    const-string v3, "new_shares_info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v2

    invoke-static {p1}, Lcom/instagram/f/b/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/b/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/f/a/b/a;->a(Lcom/instagram/f/b/a;)V

    goto :goto_2b

    :cond_4b
    const-string v3, "max_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_2b

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/f/a/b/a;->a(Ljava/lang/String;)V

    goto :goto_2b

    :cond_67
    const-string v3, "subscription"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v2

    invoke-static {p1}, Lcom/instagram/f/a/b/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimeSubscription;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/f/a/b/a;->a(Lcom/instagram/realtimeclient/RealtimeSubscription;)V

    goto :goto_2b

    :cond_7e
    const-string v3, "patches"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    :cond_86
    :goto_86
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_2b

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "range"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v2

    invoke-static {p1}, Lcom/instagram/f/a/b/a;->c(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/f/a/b/a;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    goto :goto_86

    :cond_ac
    const-string v3, "items"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/instagram/f/a/a/m;->b()Lcom/instagram/f/a/b/a;

    move-result-object v2

    invoke-static {p1}, Lcom/instagram/f/a/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/f/a/b/a;->a(Ljava/util/Map;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_c2} :catch_26

    goto :goto_86

    :cond_c3
    move v0, v1

    goto/16 :goto_2b
.end method
