.class final Lcom/instagram/android/fragment/au;
.super Ljava/lang/Object;
.source "ExploreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ap;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/fragment/at;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ap;Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/fragment/at;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/android/fragment/au;->a:Lcom/instagram/android/fragment/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/fragment/au;->b:Ljava/util/Map;

    iput p3, p0, Lcom/instagram/android/fragment/au;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/fragment/au;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/at;

    iget-object v2, p0, Lcom/instagram/android/fragment/au;->a:Lcom/instagram/android/fragment/ap;

    const-string v3, "explore_item_impression"

    iget-object v4, v0, Lcom/instagram/android/fragment/at;->a:Lcom/instagram/feed/d/z;

    iget v0, v0, Lcom/instagram/android/fragment/at;->b:I

    iget v5, p0, Lcom/instagram/android/fragment/au;->c:I

    invoke-static {v2, v3, v4, v0, v5}, Lcom/instagram/android/feed/e/f;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/feed/d/z;II)V

    goto :goto_a

    :cond_24
    return-void
.end method
