.class public Lcom/google/android/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/q;


# static fields
.field private static final a:Ljava/lang/String; = "ServerManagedPolicy"

.field private static final b:Ljava/lang/String; = "com.android.vending.licensing.ServerManagedPolicy"

.field private static final f:Ljava/lang/String; = "lastResponse"

.field private static final g:Ljava/lang/String; = "validityTimestamp"

.field private static final h:Ljava/lang/String; = "retryUntil"

.field private static final i:Ljava/lang/String; = "maxRetries"

.field private static final j:Ljava/lang/String; = "retryCount"

.field private static final k:Ljava/lang/String; = "0"

.field private static final l:Ljava/lang/String; = "0"

.field private static final m:Ljava/lang/String; = "0"

.field private static final n:Ljava/lang/String; = "0"

.field private static final o:J = 0xea60L


# instance fields
.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:Lcom/google/android/a/a/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/a/p;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->t:J

    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/android/a/a/r;

    invoke-direct {v1, v0, p2}, Lcom/google/android/a/a/r;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/a/a/p;)V

    iput-object v1, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "lastResponse"

    const/16 v2, 0x123

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/a/t;->u:I

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "validityTimestamp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->p:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "retryUntil"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->q:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "maxRetries"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->r:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "retryCount"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->s:J

    return-void
.end method

.method private a(I)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->t:J

    iput p1, p0, Lcom/google/android/a/a/t;->u:I

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(J)V
    .registers 6

    iput-wide p1, p0, Lcom/google/android/a/a/t;->s:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_16

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->p:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_16
    move-exception v0

    const-string v0, "ServerManagedPolicy"

    const-string v1, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_16

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->q:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_16
    move-exception v0

    const-string v0, "ServerManagedPolicy"

    const-string v1, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_16

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/t;->r:J

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_16
    move-exception v0

    const-string v0, "ServerManagedPolicy"

    const-string v1, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8
.end method

.method private d(Ljava/lang/String;)Ljava/util/Map;
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    new-instance v0, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_3e} :catch_3f

    goto :goto_27

    :catch_3f
    move-exception v0

    const-string v0, "ServerManagedPolicy"

    const-string v2, "Invalid syntax error while decoding extras data from server."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-object v1
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/a/a/t;->s:J

    return-wide v0
.end method

.method public a(ILcom/google/android/a/a/s;)V
    .registers 7

    const/16 v0, 0x123

    if-eq p1, v0, :cond_3f

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/t;->a(J)V

    :goto_9
    const/16 v0, 0x100

    if-ne p1, v0, :cond_48

    iget-object v0, p2, Lcom/google/android/a/a/s;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput p1, p0, Lcom/google/android/a/a/t;->u:I

    const-string v0, "VT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->a(Ljava/lang/String;)V

    const-string v0, "GT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->b(Ljava/lang/String;)V

    const-string v0, "GR"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->c(Ljava/lang/String;)V

    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/google/android/a/a/t;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/a/t;->v:Lcom/google/android/a/a/r;

    invoke-virtual {v0}, Lcom/google/android/a/a/r;->a()V

    return-void

    :cond_3f
    iget-wide v0, p0, Lcom/google/android/a/a/t;->s:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/t;->a(J)V

    goto :goto_9

    :cond_48
    const/16 v0, 0x231

    if-ne p1, v0, :cond_36

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->a(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->b(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/a/a/t;->c(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/a/a/t;->p:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/a/a/t;->q:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/a/a/t;->r:J

    return-wide v0
.end method

.method public g()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/a/a/t;->u:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_14

    iget-wide v4, p0, Lcom/google/android/a/a/t;->p:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_13

    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget v4, p0, Lcom/google/android/a/a/t;->u:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_13

    iget-wide v4, p0, Lcom/google/android/a/a/t;->t:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    iget-wide v4, p0, Lcom/google/android/a/a/t;->q:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_32

    iget-wide v2, p0, Lcom/google/android/a/a/t;->s:J

    iget-wide v4, p0, Lcom/google/android/a/a/t;->r:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_13

    :cond_32
    move v0, v1

    goto :goto_13
.end method
