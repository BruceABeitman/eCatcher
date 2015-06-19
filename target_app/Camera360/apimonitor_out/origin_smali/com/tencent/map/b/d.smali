.class public final Lcom/tencent/map/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/d$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/map/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x2710

    const/16 v1, 0x4e20

    const/16 v4, 0x61a8

    const/16 v3, 0x3a98

    sput v5, Lcom/tencent/map/b/d;->a:I

    sput v3, Lcom/tencent/map/b/d;->b:I

    const/16 v0, 0x1388

    sput v0, Lcom/tencent/map/b/d;->c:I

    sput v1, Lcom/tencent/map/b/d;->d:I

    sput v4, Lcom/tencent/map/b/d;->e:I

    sput v3, Lcom/tencent/map/b/d;->f:I

    const/16 v0, 0x2ee0

    sput v0, Lcom/tencent/map/b/d;->a:I

    sput v1, Lcom/tencent/map/b/d;->b:I

    const/16 v0, 0x1f40

    sput v0, Lcom/tencent/map/b/d;->c:I

    sput v1, Lcom/tencent/map/b/d;->d:I

    sput v4, Lcom/tencent/map/b/d;->e:I

    sput v3, Lcom/tencent/map/b/d;->f:I

    invoke-static {}, Lcom/tencent/map/b/t;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_82

    if-nez v1, :cond_82

    invoke-static {}, Lcom/tencent/map/b/t;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_82

    const-string/jumbo v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string/jumbo v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    sput v3, Lcom/tencent/map/b/d;->a:I

    sput v4, Lcom/tencent/map/b/d;->b:I

    sput v5, Lcom/tencent/map/b/d;->c:I

    sput v4, Lcom/tencent/map/b/d;->d:I

    const v0, 0x88b8

    sput v0, Lcom/tencent/map/b/d;->e:I

    sput v3, Lcom/tencent/map/b/d;->f:I

    :cond_82
    return-void
.end method

.method public static a()I
    .registers 6

    const-wide/16 v4, 0x0

    sget v0, Lcom/tencent/map/b/d;->a:I

    sget-wide v1, Lcom/tencent/map/b/d;->j:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9e

    sget-wide v1, Lcom/tencent/map/b/d;->k:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9e

    sget-wide v0, Lcom/tencent/map/b/d;->m:J

    sget-wide v2, Lcom/tencent/map/b/d;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/map/b/d;->k:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/tencent/map/b/d;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    :goto_20
    invoke-static {}, Lcom/tencent/map/b/t;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8c

    sget v1, Lcom/tencent/map/b/d;->b:I

    :cond_43
    :goto_43
    sget v0, Lcom/tencent/map/b/d;->u:I

    sget v2, Lcom/tencent/map/b/d;->c:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    sget v1, Lcom/tencent/map/b/d;->c:I

    if-gt v0, v1, :cond_4f

    sget v0, Lcom/tencent/map/b/d;->c:I

    :cond_4f
    int-to-long v1, v0

    sget-wide v3, Lcom/tencent/map/b/d;->k:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5d

    sget-wide v0, Lcom/tencent/map/b/d;->k:J

    sget v2, Lcom/tencent/map/b/d;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    :cond_5d
    sget v1, Lcom/tencent/map/b/d;->b:I

    if-lt v0, v1, :cond_63

    sget v0, Lcom/tencent/map/b/d;->b:I

    :cond_63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/map/b/d;->b(J)Lcom/tencent/map/b/d$a;

    move-result-object v1

    if-nez v1, :cond_7d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/map/b/d;->a(J)Lcom/tencent/map/b/d$a;

    move-result-object v1

    :cond_7d
    iget v2, v1, Lcom/tencent/map/b/d$a;->g:I

    sget v3, Lcom/tencent/map/b/d;->c:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_89

    iget v0, v1, Lcom/tencent/map/b/d$a;->g:I

    sget v2, Lcom/tencent/map/b/d;->c:I

    add-int/2addr v0, v2

    :cond_89
    iput v0, v1, Lcom/tencent/map/b/d$a;->g:I

    return v0

    :cond_8c
    sget-wide v2, Lcom/tencent/map/b/d;->k:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_43

    sget-wide v2, Lcom/tencent/map/b/d;->k:J

    sget v0, Lcom/tencent/map/b/d;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_43

    sget v1, Lcom/tencent/map/b/d;->c:I

    goto :goto_43

    :cond_9e
    move v1, v0

    goto :goto_20
.end method

.method private static a(J)Lcom/tencent/map/b/d$a;
    .registers 15

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    :cond_e
    sget-object v4, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_11
    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_af

    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    move v1, v0

    move v2, v0

    :goto_24
    div-int/lit8 v0, v5, 0x2

    if-lt v3, v0, :cond_bd

    if-eqz v1, :cond_af

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/map/b/d;->h:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/map/b/d;->i:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v0, v0, Lcom/tencent/map/b/d$a;->c:J

    sput-wide v0, Lcom/tencent/map/b/d;->k:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v0, v0, Lcom/tencent/map/b/d$a;->c:J

    sput-wide v0, Lcom/tencent/map/b/d;->l:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v0, v0, Lcom/tencent/map/b/d$a;->d:J

    sput-wide v0, Lcom/tencent/map/b/d;->o:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v0, v0, Lcom/tencent/map/b/d$a;->d:J

    sput-wide v0, Lcom/tencent/map/b/d;->p:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v0, v0, Lcom/tencent/map/b/d$a;->f:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_9f

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget v0, v0, Lcom/tencent/map/b/d$a;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v1, v0

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v5, v0, Lcom/tencent/map/b/d$a;->f:J

    div-long v0, v1, v5

    long-to-int v0, v0

    sput v0, Lcom/tencent/map/b/d;->r:I

    :cond_9f
    sget v0, Lcom/tencent/map/b/d;->r:I

    sput v0, Lcom/tencent/map/b/d;->s:I

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f5

    :cond_af
    new-instance v0, Lcom/tencent/map/b/d$a;

    invoke-direct {v0}, Lcom/tencent/map/b/d$a;-><init>()V

    iput-wide p0, v0, Lcom/tencent/map/b/d$a;->a:J

    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    return-object v0

    :cond_bd
    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v6, v0, Lcom/tencent/map/b/d$a;->f:J

    cmp-long v0, v6, v10

    if-gtz v0, :cond_e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v8, v0, Lcom/tencent/map/b/d$a;->b:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x927c0

    cmp-long v0, v6, v8

    if-lez v0, :cond_ef

    :cond_e1
    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    move v1, v2

    :goto_e8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_24

    :cond_ef
    add-int/lit8 v0, v2, 0x1

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_e8

    :cond_f5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    sget-wide v2, Lcom/tencent/map/b/d;->h:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_105

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tencent/map/b/d;->h:J

    :cond_105
    sget-wide v2, Lcom/tencent/map/b/d;->i:J

    cmp-long v2, v10, v2

    if-gez v2, :cond_10f

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tencent/map/b/d;->i:J

    :cond_10f
    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->c:J

    sget-wide v5, Lcom/tencent/map/b/d;->k:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_11b

    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->c:J

    sput-wide v2, Lcom/tencent/map/b/d;->k:J

    :cond_11b
    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->c:J

    sget-wide v5, Lcom/tencent/map/b/d;->l:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_127

    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->c:J

    sput-wide v2, Lcom/tencent/map/b/d;->l:J

    :cond_127
    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->d:J

    sget-wide v5, Lcom/tencent/map/b/d;->o:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_133

    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->d:J

    sput-wide v2, Lcom/tencent/map/b/d;->o:J

    :cond_133
    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->d:J

    sget-wide v5, Lcom/tencent/map/b/d;->p:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_13f

    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->d:J

    sput-wide v2, Lcom/tencent/map/b/d;->p:J

    :cond_13f
    iget-wide v2, v0, Lcom/tencent/map/b/d$a;->f:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_a9

    iget v2, v0, Lcom/tencent/map/b/d$a;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-wide v5, v0, Lcom/tencent/map/b/d$a;->f:J

    div-long/2addr v2, v5

    long-to-int v0, v2

    sget v2, Lcom/tencent/map/b/d;->r:I

    if-le v0, v2, :cond_154

    sput v0, Lcom/tencent/map/b/d;->r:I

    :cond_154
    sget v2, Lcom/tencent/map/b/d;->s:I

    if-ge v0, v2, :cond_a9

    sput v0, Lcom/tencent/map/b/d;->s:I
    :try_end_15a
    .catchall {:try_start_11 .. :try_end_15a} :catchall_15c

    goto/16 :goto_a9

    :catchall_15c
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static a(I)V
    .registers 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/d;->b(J)Lcom/tencent/map/b/d$a;

    move-result-object v2

    if-nez v2, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, v2, Lcom/tencent/map/b/d$a;->b:J

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/tencent/map/b/d$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/map/b/d$a;->b:J

    iput p0, v2, Lcom/tencent/map/b/d$a;->e:I

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->f:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_7a

    const-wide/16 v0, 0x1

    :goto_2a
    mul-int/lit16 v3, p0, 0x3e8

    int-to-long v3, v3

    div-long v0, v3, v0

    long-to-int v0, v0

    sput v0, Lcom/tencent/map/b/d;->t:I

    sget v1, Lcom/tencent/map/b/d;->r:I

    if-le v0, v1, :cond_7d

    sget v0, Lcom/tencent/map/b/d;->t:I

    :goto_38
    sput v0, Lcom/tencent/map/b/d;->r:I

    sget v0, Lcom/tencent/map/b/d;->t:I

    sget v1, Lcom/tencent/map/b/d;->s:I

    if-ge v0, v1, :cond_80

    sget v0, Lcom/tencent/map/b/d;->t:I

    :goto_42
    sput v0, Lcom/tencent/map/b/d;->s:I

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4b
    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8a

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_95

    :cond_58
    sget v0, Lcom/tencent/map/b/d;->u:I

    if-lez v0, :cond_74

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    sget v3, Lcom/tencent/map/b/d;->c:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_74

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    sget v3, Lcom/tencent/map/b/d;->f:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_74

    sget v0, Lcom/tencent/map/b/d;->u:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/map/b/d;->u:I

    :cond_74
    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    long-to-int v0, v0

    iput v0, v2, Lcom/tencent/map/b/d$a;->g:I

    goto :goto_e

    :cond_7a
    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->f:J

    goto :goto_2a

    :cond_7d
    sget v0, Lcom/tencent/map/b/d;->r:I

    goto :goto_38

    :cond_80
    sget v0, Lcom/tencent/map/b/d;->s:I

    if-nez v0, :cond_87

    sget v0, Lcom/tencent/map/b/d;->t:I

    goto :goto_42

    :cond_87
    sget v0, Lcom/tencent/map/b/d;->s:I

    goto :goto_42

    :cond_8a
    :try_start_8a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget v4, v0, Lcom/tencent/map/b/d$a;->e:I

    iget-wide v4, v0, Lcom/tencent/map/b/d$a;->f:J
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_95

    goto :goto_51

    :catchall_95
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/d;->b(J)Lcom/tencent/map/b/d$a;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/d;->a(J)Lcom/tencent/map/b/d$a;

    move-result-object v0

    :cond_1a
    if-nez v0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/map/b/d$a;->b:J

    goto :goto_1c
.end method

.method public static a(Z)V
    .registers 3

    if-nez p0, :cond_8

    sget v0, Lcom/tencent/map/b/d;->u:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/map/b/d;->u:I

    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/d;->c(J)Lcom/tencent/map/b/d$a;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-wide v0, v0, Lcom/tencent/map/b/d$a;->b:J

    :cond_18
    return-void
.end method

.method public static b()I
    .registers 6

    const-wide/16 v4, 0x0

    sget v0, Lcom/tencent/map/b/d;->d:I

    sget-wide v1, Lcom/tencent/map/b/d;->n:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9e

    sget-wide v1, Lcom/tencent/map/b/d;->o:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9e

    sget-wide v0, Lcom/tencent/map/b/d;->q:J

    sget-wide v2, Lcom/tencent/map/b/d;->n:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/map/b/d;->o:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/tencent/map/b/d;->p:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    :goto_20
    invoke-static {}, Lcom/tencent/map/b/t;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8c

    sget v1, Lcom/tencent/map/b/d;->e:I

    :cond_43
    :goto_43
    sget v0, Lcom/tencent/map/b/d;->u:I

    sget v2, Lcom/tencent/map/b/d;->c:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    sget v1, Lcom/tencent/map/b/d;->f:I

    if-gt v0, v1, :cond_4f

    sget v0, Lcom/tencent/map/b/d;->f:I

    :cond_4f
    int-to-long v1, v0

    sget-wide v3, Lcom/tencent/map/b/d;->o:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5d

    sget-wide v0, Lcom/tencent/map/b/d;->o:J

    sget v2, Lcom/tencent/map/b/d;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    :cond_5d
    sget v1, Lcom/tencent/map/b/d;->e:I

    if-lt v0, v1, :cond_63

    sget v0, Lcom/tencent/map/b/d;->e:I

    :cond_63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/map/b/d;->b(J)Lcom/tencent/map/b/d$a;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget v2, v1, Lcom/tencent/map/b/d$a;->h:I

    sget v3, Lcom/tencent/map/b/d;->f:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_7d

    iget v0, v1, Lcom/tencent/map/b/d$a;->h:I

    sget v2, Lcom/tencent/map/b/d;->f:I

    add-int/2addr v0, v2

    :cond_7d
    iget v2, v1, Lcom/tencent/map/b/d$a;->g:I

    sget v3, Lcom/tencent/map/b/d;->f:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_89

    iget v0, v1, Lcom/tencent/map/b/d$a;->g:I

    sget v2, Lcom/tencent/map/b/d;->f:I

    add-int/2addr v0, v2

    :cond_89
    iput v0, v1, Lcom/tencent/map/b/d$a;->h:I

    :cond_8b
    return v0

    :cond_8c
    sget-wide v2, Lcom/tencent/map/b/d;->o:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_43

    sget-wide v2, Lcom/tencent/map/b/d;->o:J

    sget v0, Lcom/tencent/map/b/d;->f:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_43

    sget v1, Lcom/tencent/map/b/d;->f:I

    goto :goto_43

    :cond_9e
    move v1, v0

    goto :goto_20
.end method

.method private static b(J)Lcom/tencent/map/b/d$a;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    sget-object v2, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_a
    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    monitor-exit v2

    move-object v0, v1

    goto :goto_6

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v4, v0, Lcom/tencent/map/b/d$a;->a:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_10

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    goto :goto_6

    :catchall_27
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static c(J)Lcom/tencent/map/b/d$a;
    .registers 7

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    sget-object v2, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_7
    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2d

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-gez v1, :cond_15

    monitor-exit v2

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    :try_start_15
    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v3, v0, Lcom/tencent/map/b/d$a;->a:J

    cmp-long v0, v3, p0

    if-nez v0, :cond_30

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    goto :goto_14

    :catchall_2d
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10
.end method

.method public static c()V
    .registers 10

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/d;->b(J)Lcom/tencent/map/b/d$a;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, v2, Lcom/tencent/map/b/d$a;->b:J

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/map/b/d$a;->b:J

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    sput-wide v0, Lcom/tencent/map/b/d;->m:J

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    sget-wide v3, Lcom/tencent/map/b/d;->k:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5f

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    :goto_2e
    sput-wide v0, Lcom/tencent/map/b/d;->k:J

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    sget-wide v3, Lcom/tencent/map/b/d;->l:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_62

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    :goto_3a
    sput-wide v0, Lcom/tencent/map/b/d;->l:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    sget-object v2, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_44
    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6e

    if-lez v1, :cond_5a

    sget-wide v3, Lcom/tencent/map/b/d;->j:J

    int-to-long v0, v1

    div-long v0, v3, v0

    sput-wide v0, Lcom/tencent/map/b/d;->j:J

    :cond_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    goto :goto_10

    :catchall_5c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5f
    sget-wide v0, Lcom/tencent/map/b/d;->k:J

    goto :goto_2e

    :cond_62
    sget-wide v0, Lcom/tencent/map/b/d;->l:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6b

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->c:J

    goto :goto_3a

    :cond_6b
    sget-wide v0, Lcom/tencent/map/b/d;->l:J

    goto :goto_3a

    :cond_6e
    :try_start_6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v4, v0, Lcom/tencent/map/b/d$a;->c:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4b

    sget-wide v4, Lcom/tencent/map/b/d;->j:J

    iget-wide v6, v0, Lcom/tencent/map/b/d$a;->c:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/tencent/map/b/d;->j:J
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_5c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4b
.end method

.method public static d()V
    .registers 10

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/d;->b(J)Lcom/tencent/map/b/d$a;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, v2, Lcom/tencent/map/b/d$a;->b:J

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/map/b/d$a;->b:J

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    sput-wide v0, Lcom/tencent/map/b/d;->q:J

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    sget-wide v3, Lcom/tencent/map/b/d;->o:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5f

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    :goto_2e
    sput-wide v0, Lcom/tencent/map/b/d;->o:J

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    sget-wide v3, Lcom/tencent/map/b/d;->p:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_62

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    :goto_3a
    sput-wide v0, Lcom/tencent/map/b/d;->p:J

    sget-object v0, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    sget-object v2, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_44
    sget-object v1, Lcom/tencent/map/b/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6e

    if-lez v1, :cond_5a

    sget-wide v3, Lcom/tencent/map/b/d;->n:J

    int-to-long v0, v1

    div-long v0, v3, v0

    sput-wide v0, Lcom/tencent/map/b/d;->n:J

    :cond_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    goto :goto_10

    :catchall_5c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5f
    sget-wide v0, Lcom/tencent/map/b/d;->o:J

    goto :goto_2e

    :cond_62
    sget-wide v0, Lcom/tencent/map/b/d;->p:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6b

    iget-wide v0, v2, Lcom/tencent/map/b/d$a;->d:J

    goto :goto_3a

    :cond_6b
    sget-wide v0, Lcom/tencent/map/b/d;->p:J

    goto :goto_3a

    :cond_6e
    :try_start_6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$a;

    iget-wide v4, v0, Lcom/tencent/map/b/d$a;->d:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4b

    sget-wide v4, Lcom/tencent/map/b/d;->n:J

    iget-wide v6, v0, Lcom/tencent/map/b/d$a;->d:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/tencent/map/b/d;->n:J
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_5c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4b
.end method
