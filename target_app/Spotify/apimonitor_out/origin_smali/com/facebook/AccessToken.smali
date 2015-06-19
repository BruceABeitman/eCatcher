.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic a:Z = false

.field private static final b:Ljava/util/Date; = null

.field private static final c:Ljava/util/Date; = null

.field private static final d:Ljava/util/Date; = null

.field private static final e:Ljava/util/Date; = null

.field private static final f:Lcom/facebook/AccessTokenSource; = null

.field private static final g:Ljava/util/Date; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/AccessToken;->a:Z

    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->b:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->c:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->d:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    sget-object v0, Lcom/facebook/AccessTokenSource;->b:Lcom/facebook/AccessTokenSource;

    sput-object v0, Lcom/facebook/AccessToken;->f:Lcom/facebook/AccessTokenSource;

    sget-object v0, Lcom/facebook/AccessToken;->b:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->g:Ljava/util/Date;

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_9
    iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iput-object p5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-void
.end method

.method static a(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .registers 7

    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_c
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v2}, Lcom/facebook/aj;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v4, "bundle"

    invoke-static {p0, v4}, Lcom/facebook/internal/ak;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/facebook/AccessTokenSource;

    :goto_2f
    const-string v5, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v5}, Lcom/facebook/aj;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0

    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_c

    :cond_43
    const-string v4, "com.facebook.TokenCachingStrategy.IsSSO"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    sget-object v4, Lcom/facebook/AccessTokenSource;->b:Lcom/facebook/AccessTokenSource;

    goto :goto_2f

    :cond_4e
    sget-object v4, Lcom/facebook/AccessTokenSource;->e:Lcom/facebook/AccessTokenSource;

    goto :goto_2f
.end method

.method static a(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 6

    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/facebook/AccessToken;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    sget-boolean v0, Lcom/facebook/AccessToken;->a:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->b:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->c:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->d:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    const-string v0, "expires_in"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v0, v1}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-static {v2, v1, v0, v3}, Lcom/facebook/AccessToken;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static a(Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, ""

    sget-object v2, Lcom/facebook/AccessToken;->g:Ljava/util/Date;

    sget-object v4, Lcom/facebook/AccessTokenSource;->a:Lcom/facebook/AccessTokenSource;

    sget-object v5, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    const-string v0, "expires_in"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "granted_scopes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance p0, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2c
    invoke-static {p0, v1, v0, p2}, Lcom/facebook/AccessToken;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_d

    :cond_8
    invoke-static {p0}, Lcom/facebook/AccessToken;->a(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    goto :goto_c
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 10

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_25

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    :goto_14
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_36

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_4

    :cond_25
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_34

    :try_start_29
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_31

    move-result-wide v0

    move-wide v1, v0

    goto :goto_14

    :catch_31
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :cond_34
    move-object v0, v1

    goto :goto_4

    :cond_36
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 8

    new-instance v0, Lcom/facebook/AccessToken$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;B)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/facebook/AccessTokenSource;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method public final e()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-object v0
.end method

.method final f()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    iget-object v2, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/aj;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "com.facebook.TokenCachingStrategy.Permissions"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/aj;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method final g()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{AccessToken"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " token:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    if-nez v0, :cond_31

    const-string v0, "null"

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " permissions:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    if-nez v0, :cond_39

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    sget-object v0, Lcom/facebook/LoggingBehavior;->b:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/ah;->a()Z

    const-string v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_16

    :cond_39
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    iget-object v2, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method
