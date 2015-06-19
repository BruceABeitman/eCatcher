.class final Lcom/instagram/android/feed/comments/a/n;
.super Lcom/instagram/api/j/f;
.source "CommentThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/feed/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/a/b;)V
    .registers 5

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-static {v1, v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->d(Lcom/instagram/android/feed/comments/a/a;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/n;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/android/feed/comments/a/a;)Z

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/feed/a/b;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/n;->a(Lcom/instagram/feed/a/b;)V

    return-void
.end method
