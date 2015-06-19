.class public final Lcom/instagram/android/feed/a;
.super Ljava/lang/Object;
.source "SearchAnalyticsTracker.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Lcom/instagram/common/analytics/b;
    .registers 6

    new-instance v0, Lcom/instagram/common/analytics/b;

    invoke-direct {v0, p1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "rank_token"

    iget-object v2, p0, Lcom/instagram/android/feed/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/instagram/android/feed/a;->a()V

    iput p2, p0, Lcom/instagram/android/feed/a;->c:I

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    const-string v1, "search_typeahead"

    invoke-direct {p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "query_text"

    invoke-virtual {v1, v2, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a;->a:Z

    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/e;ILjava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/instagram/android/feed/a;->a:Z

    if-nez v0, :cond_a

    iput p2, p0, Lcom/instagram/android/feed/a;->c:I

    invoke-direct {p0}, Lcom/instagram/android/feed/a;->a()V

    :cond_a
    iget v0, p0, Lcom/instagram/android/feed/a;->c:I

    sub-int v2, p4, v0

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v3

    const-string v0, "search_results_page"

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/feed/a;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "selected_id"

    invoke-virtual {v0, v4, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "selected_position"

    invoke-virtual {v0, v4, p4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "is_local"

    iget v0, p0, Lcom/instagram/android/feed/a;->c:I

    if-ge p4, v0, :cond_3e

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "local_offset"

    if-gez v2, :cond_40

    move v0, v1

    :goto_34
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    iput-boolean v1, p0, Lcom/instagram/android/feed/a;->a:Z

    return-void

    :cond_3e
    move v0, v1

    goto :goto_2b

    :cond_40
    move v0, v2

    goto :goto_34
.end method
