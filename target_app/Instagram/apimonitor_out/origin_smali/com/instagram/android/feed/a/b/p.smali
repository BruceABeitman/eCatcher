.class final Lcom/instagram/android/feed/a/b/p;
.super Ljava/lang/Object;
.source "MediaHeaderViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Lcom/instagram/android/feed/a/b/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/p;->b:Lcom/instagram/android/feed/a/b/m;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/p;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/p;->b:Lcom/instagram/android/feed/a/b/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/m;->c(Lcom/instagram/android/feed/a/b/m;)Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/p;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "media_owner"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/p;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/p;->a:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/p;->b:Lcom/instagram/android/feed/a/b/m;

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/m;->b(Lcom/instagram/android/feed/a/b/m;)Lcom/instagram/feed/g/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method
