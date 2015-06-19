.class final Lcom/instagram/android/feed/a/b/c;
.super Ljava/lang/Object;
.source "FeedMediaRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:I

.field final synthetic c:Lcom/instagram/android/feed/a/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;I)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/c;->c:Lcom/instagram/android/feed/a/b/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/c;->a:Lcom/instagram/feed/d/l;

    iput p3, p0, Lcom/instagram/android/feed/a/b/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const-string v0, "comment_button"

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/c;->a:Lcom/instagram/feed/d/l;

    iget v2, p0, Lcom/instagram/android/feed/a/b/c;->b:I

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/c;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v3}, Lcom/instagram/android/feed/a/b/a;->d(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/feed/g/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/c;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/a;->e(Lcom/instagram/android/feed/a/b/a;)Landroid/support/v4/app/s;

    move-result-object v1

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/instagram/android/feed/a/b/c;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v4}, Lcom/instagram/android/feed/a/b/a;->d(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/feed/g/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/instagram/feed/g/a;->n_()Z

    move-result v4

    iget-object v5, p0, Lcom/instagram/android/feed/a/b/c;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v5}, Lcom/instagram/android/feed/a/b/a;->d(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/feed/g/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/instagram/feed/g/a;->U()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;ZZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "media_comments"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method
