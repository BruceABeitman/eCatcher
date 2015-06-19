.class public Lcom/twidroid/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BlockedUsersCache"

.field private static b:[J = null

.field private static c:J = 0x0L

.field private static final d:J = 0x927c0L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/twidroid/d/g;->c:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/twidroid/d/g;->c:J

    return-void
.end method

.method public static a(JLcom/twidroid/net/a/c/c;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/twidroid/d/g;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8f

    move v2, v0

    :goto_11
    if-eqz v2, :cond_1a

    const-string v3, "BlockedUsersCache"

    const-string v4, "Blocked user cache expired. Will update from server"

    invoke-static {v3, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    sget-object v3, Lcom/twidroid/d/g;->b:[J

    if-eqz v3, :cond_20

    if-eqz v2, :cond_62

    :cond_20
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    :try_start_23
    invoke-virtual {p2, v2, v3, v4}, Lcom/twidroid/net/a/c/c;->c(JZ)Lcom/twidroid/net/a/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/net/a/c/i;->a()[J

    move-result-object v2

    sput-object v2, Lcom/twidroid/d/g;->b:[J

    sget-object v2, Lcom/twidroid/d/g;->b:[J

    if-eqz v2, :cond_41

    sget-object v2, Lcom/twidroid/d/g;->b:[J

    array-length v2, v2

    if-lez v2, :cond_41

    sget-object v2, Lcom/twidroid/d/g;->b:[J

    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/twidroid/d/g;->c:J

    :cond_41
    const-string v2, "BlockedUsersCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/twidroid/d/g;->b:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ids!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_23 .. :try_end_62} :catch_91

    :cond_62
    sget-object v2, Lcom/twidroid/d/g;->b:[J

    if-eqz v2, :cond_8e

    const-string v2, "BlockedUsersCache"

    const-string v3, "Using cached ids."

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/twidroid/d/g;->b:[J

    invoke-static {v2, p0, p1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-lez v2, :cond_9a

    :goto_75
    const-string v1, "BlockedUsersCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User blocked? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :cond_8e
    :goto_8e
    return v1

    :cond_8f
    move v2, v1

    goto :goto_11

    :catch_91
    move-exception v0

    const-string v0, "BlockedUsersCache"

    const-string v2, "Can\'t update ids!"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_9a
    move v0, v1

    goto :goto_75
.end method
