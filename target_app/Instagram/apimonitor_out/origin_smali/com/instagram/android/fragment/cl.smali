.class final Lcom/instagram/android/fragment/cl;
.super Lcom/instagram/android/fragment/j;
.source "LikedFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/a",
        "<",
        "Lcom/instagram/android/feed/a/a;",
        ">.com/instagram/android/fragment/j;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/instagram/android/fragment/ck;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/cl;->b:Lcom/instagram/android/fragment/ck;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/feed/a/b;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/j;->a(Lcom/instagram/feed/a/b;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/cl;->b:Lcom/instagram/android/fragment/ck;

    invoke-static {v0}, Lcom/instagram/android/fragment/ck;->a(Lcom/instagram/android/fragment/ck;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/feed/a/b;

    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/cl;->a(Lcom/instagram/feed/a/b;)V

    return-void
.end method
