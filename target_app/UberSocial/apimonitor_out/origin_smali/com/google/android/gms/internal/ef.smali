.class public Lcom/google/android/gms/internal/ef;
.super Landroid/webkit/WebViewClient;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ec;

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/tk;

.field private e:Lcom/google/android/gms/internal/bk;

.field private f:Lcom/google/android/gms/internal/eh;

.field private g:Lcom/google/android/gms/internal/w;

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/internal/bp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ec;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ef;->h:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ef;->i:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/bq;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bq;)V

    return-void
.end method

.method private static a(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b(Landroid/net/Uri;)V
    .registers 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_a4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v1}, Landroid/net/UrlQuerySanitizer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    iget-object v5, v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v1, v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_46
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received GMSG: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    goto :goto_6b

    :cond_9e
    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ec;Ljava/util/Map;)V

    :goto_a3
    return-void

    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    goto :goto_a3
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bn;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->h()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/bq;

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ec;->d()Lcom/google/android/gms/internal/ab;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ab;->e:Z

    if-nez v2, :cond_28

    move-object v2, v3

    :goto_16
    if-eqz v1, :cond_2b

    :goto_18
    iget-object v4, p0, Lcom/google/android/gms/internal/ef;->j:Lcom/google/android/gms/internal/bp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/db;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/bq;)V

    return-void

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/ef;->d:Lcom/google/android/gms/internal/tk;

    goto :goto_16

    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/ef;->e:Lcom/google/android/gms/internal/bk;

    goto :goto_18
.end method

.method public final a(Lcom/google/android/gms/internal/eh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ef;->f:Lcom/google/android/gms/internal/eh;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/bp;Z)V
    .registers 8

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/v;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/v;-><init>(Lcom/google/android/gms/internal/w;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/x;->a:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/x;->b:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/x;->c:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/x;->d:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/x;->e:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/x;->f:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/open"

    sget-object v1, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/x;->h:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/x;->i:Lcom/google/android/gms/internal/y;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ef;->d:Lcom/google/android/gms/internal/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ef;->e:Lcom/google/android/gms/internal/bk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ef;->g:Lcom/google/android/gms/internal/w;

    iput-object p4, p0, Lcom/google/android/gms/internal/ef;->j:Lcom/google/android/gms/internal/bp;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ef;->a(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/y;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ef;->h:Z

    return-void
.end method

.method public final a(ZI)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->h()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/bq;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->d()Lcom/google/android/gms/internal/ab;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ab;->e:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/internal/ef;->e:Lcom/google/android/gms/internal/bk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ef;->j:Lcom/google/android/gms/internal/bp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    iget-object v5, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ZILcom/google/android/gms/internal/db;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/bq;)V

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->d:Lcom/google/android/gms/internal/tk;

    goto :goto_15
.end method

.method public final a(ZILjava/lang/String;)V
    .registers 14

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->h()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/bq;

    if-eqz v3, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->d()Lcom/google/android/gms/internal/ab;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ab;->e:Z

    if-nez v1, :cond_2e

    move-object v1, v2

    :goto_16
    if-eqz v3, :cond_31

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ef;->g:Lcom/google/android/gms/internal/w;

    iget-object v4, p0, Lcom/google/android/gms/internal/ef;->j:Lcom/google/android/gms/internal/bp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    iget-object v6, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;

    move-result-object v9

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ZILjava/lang/String;Lcom/google/android/gms/internal/db;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/bq;)V

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->d:Lcom/google/android/gms/internal/tk;

    goto :goto_16

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/ef;->e:Lcom/google/android/gms/internal/bk;

    goto :goto_18
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->h()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/bq;

    if-eqz v3, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->d()Lcom/google/android/gms/internal/ab;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ab;->e:Z

    if-nez v1, :cond_2f

    move-object v1, v2

    :goto_16
    if-eqz v3, :cond_32

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ef;->g:Lcom/google/android/gms/internal/w;

    iget-object v4, p0, Lcom/google/android/gms/internal/ef;->j:Lcom/google/android/gms/internal/bp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    iget-object v6, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;

    move-result-object v10

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/bq;)V

    return-void

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->d:Lcom/google/android/gms/internal/tk;

    goto :goto_16

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/internal/ef;->e:Lcom/google/android/gms/internal/bk;

    goto :goto_18
.end method

.method public a()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ef;->i:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final b()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->d:Lcom/google/android/gms/internal/tk;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->e:Lcom/google/android/gms/internal/bk;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->f:Lcom/google/android/gms/internal/eh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->g:Lcom/google/android/gms/internal/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ef;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ef;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->j:Lcom/google/android/gms/internal/bp;

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public final c()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ef;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ef;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->c()Lcom/google/android/gms/internal/bg;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/dx;->b()Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ef$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ef$1;-><init>(Lcom/google/android/gms/internal/ef;Lcom/google/android/gms/internal/bg;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_21
    monitor-exit v1

    return-void

    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->j()V

    goto :goto_21

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->f:Lcom/google/android/gms/internal/eh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ef;->f:Lcom/google/android/gms/internal/eh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/ec;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ef;->f:Lcom/google/android/gms/internal/eh;

    :cond_e
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ef;->b(Landroid/net/Uri;)V

    :goto_36
    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ef;->h:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    if-ne p1, v1, :cond_4b

    invoke-static {v0}, Lcom/google/android/gms/internal/ef;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_37

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_98

    :try_start_53
    iget-object v1, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->f()Lcom/google/android/gms/internal/sw;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/sw;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/ef;->a:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ec;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/sw;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_6a
    .catch Lcom/google/android/gms/internal/sx; {:try_start_53 .. :try_end_6a} :catch_7f

    move-result-object v0

    :cond_6b
    move-object v2, v0

    :goto_6c
    new-instance v0, Lcom/google/android/gms/internal/bn;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/bn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/bn;)V

    goto :goto_36

    :catch_7f
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append parameter to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_6c

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView unable to handle URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    goto :goto_36
.end method
