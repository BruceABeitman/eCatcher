.class final Lcom/instagram/android/fragment/as;
.super Ljava/lang/Object;
.source "ExploreFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/a/a/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ap;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/as;->a:Lcom/instagram/android/fragment/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/ap;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/as;-><init>(Lcom/instagram/android/fragment/ap;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;I)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/fragment/as;->a:Lcom/instagram/android/fragment/ap;

    invoke-static {v0}, Lcom/instagram/android/fragment/ap;->a(Lcom/instagram/android/fragment/ap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/fragment/as;->a:Lcom/instagram/android/fragment/ap;

    invoke-static {v0}, Lcom/instagram/android/fragment/ap;->a(Lcom/instagram/android/fragment/ap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/at;

    iget-object v3, p0, Lcom/instagram/android/fragment/as;->a:Lcom/instagram/android/fragment/ap;

    invoke-direct {v2, v3, p1, p2}, Lcom/instagram/android/fragment/at;-><init>(Lcom/instagram/android/fragment/ap;Lcom/instagram/feed/d/z;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;)V
    .registers 2

    return-void
.end method

.method public final b(Lcom/instagram/feed/d/l;I)V
    .registers 3

    return-void
.end method
