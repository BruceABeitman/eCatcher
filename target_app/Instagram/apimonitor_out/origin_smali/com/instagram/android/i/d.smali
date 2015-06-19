.class public Lcom/instagram/android/i/d;
.super Ljava/lang/Object;
.source "RealtimeMediaManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/i/d;

    sput-object v0, Lcom/instagram/android/i/d;->a:Ljava/lang/Class;

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/instagram/android/i/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 0

    invoke-static {}, Lcom/instagram/android/i/d;->d()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->c(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/i/d;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;J)V
    .registers 5

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/d/l;->a(J)V

    invoke-static {}, Lcom/instagram/android/i/d;->c()V

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;Lcom/instagram/feed/d/b;)V
    .registers 4

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/l;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/instagram/feed/d/s;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V

    goto :goto_a
.end method

.method private static b()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.INBOX_SHARE_COUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private b(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 4

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/instagram/android/i/d;->d(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/instagram/android/i/d;->c(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :cond_1c
    const-string v0, "Add operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mediaId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/instagram/android/i/d;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method private static c()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.UPDATE_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private static c(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    sget-object v0, Lcom/instagram/android/i/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/y;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    const-string v1, "realtime_media_manager"

    const-string v2, "IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private static c(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.REMOVE_MEDIA_FROM_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mediaId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private static d()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.REFRESH_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private static d(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 6

    const-string v0, "/direct_share/:media_id/comments"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "Add comment operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    :try_start_12
    sget-object v1, Lcom/instagram/android/i/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v1}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;

    move-result-object v1

    const-string v2, "media_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->a(Ljava/lang/String;Lcom/instagram/feed/d/b;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_32} :catch_33

    goto :goto_11

    :catch_33
    move-exception v0

    const-string v1, "realtime_media_manager"

    const-string v2, "IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private e(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 4

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/instagram/android/i/d;->g(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "direct_share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/instagram/android/i/d;->f(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :cond_1c
    const-string v0, "Remove operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private f(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 4

    const-string v0, "/direct_share/:media_id"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "Remove DS operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const-string v1, "media_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/i/d;->a(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private static g(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 4

    const-string v0, "/direct_share/:media_id/comments/:comment_id"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v0, "Remove comment operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const-string v0, "media_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "comment_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private h(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 4

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "last_comment_at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/instagram/android/i/d;->j(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/instagram/android/i/d;->i(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :cond_1c
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "/direct_share/inbox/new_shares"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Lcom/instagram/android/i/d;->k(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :cond_2a
    const-string v0, "Replace operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static i(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 6

    const-string v0, "/direct_share/:media_id/recipients/:user_id/:action"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v0, "Replace recipient status operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const-string v0, "action"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_24

    const-string v0, "Replace recipient status operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_24
    const-string v2, "has_seen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    sget v0, Lcom/instagram/model/b/c;->a:I

    move v2, v0

    :goto_2f
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v0, "media_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "user_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/i/d;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_11

    :cond_51
    const-string v2, "has_liked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget v0, Lcom/instagram/model/b/c;->b:I

    move v2, v0

    goto :goto_2f

    :cond_5d
    const-string v2, "has_commented"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget v0, Lcom/instagram/model/b/c;->c:I

    move v2, v0

    goto :goto_2f

    :cond_69
    const-string v0, "Replace recipient status operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private j(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 6

    const-string v0, "/direct_share/:media_id/last_comment_at"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v0, "Replace last activity operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/i/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    sget-object v0, Lcom/instagram/android/i/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "media_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/instagram/android/i/d;->a(Ljava/lang/String;J)V

    goto :goto_11
.end method

.method private static k(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    sget-object v0, Lcom/instagram/android/i/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instagram/android/directshare/f/c;->a(IJ)V

    invoke-static {}, Lcom/instagram/android/i/d;->b()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_21} :catch_22

    goto :goto_8

    :catch_22
    move-exception v0

    const-string v1, "realtime_media_manager"

    const-string v2, "IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method public final a(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .registers 4

    sget-object v0, Lcom/instagram/android/i/e;->a:[I

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    invoke-virtual {v1}, Lcom/instagram/realtimeclient/RealtimeOperation$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :goto_d
    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/instagram/android/i/d;->a:Ljava/lang/Class;

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    :cond_19
    return-void

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/instagram/android/i/d;->b(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/instagram/android/i/d;->e(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :pswitch_22
    invoke-direct {p0, p1}, Lcom/instagram/android/i/d;->h(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_d

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method
