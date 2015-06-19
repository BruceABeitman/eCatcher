.class public final Lcom/instagram/android/feed/a/k;
.super Lcom/instagram/android/feed/a/m;
.source "LocationFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/a/m",
        "<",
        "Lcom/instagram/venue/model/Venue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/m;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    invoke-static {p1}, Lcom/instagram/android/feed/a/b/j;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/l;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/venue/model/Venue;

    iget-object v2, p0, Lcom/instagram/android/feed/a/k;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/instagram/android/feed/a/b/j;->a(Lcom/instagram/android/feed/a/b/l;Lcom/instagram/venue/model/Venue;Landroid/content/Context;Lcom/instagram/android/feed/a/a;)V

    return-void
.end method
