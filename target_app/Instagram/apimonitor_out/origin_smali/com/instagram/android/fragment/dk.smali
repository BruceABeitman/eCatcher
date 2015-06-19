.class final Lcom/instagram/android/fragment/dk;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/fragment/dk;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/fragment/dk;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/fragment/dk;->a:Ljava/lang/String;

    if-nez v1, :cond_21

    iget-object v0, p0, Lcom/instagram/android/fragment/dk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_b
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v3, "main_feed_load"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v3, "num_new_items"

    invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    return-void

    :cond_21
    iget-object v1, p0, Lcom/instagram/android/fragment/dk;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/instagram/android/fragment/dk;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28
.end method
