.class final Lcom/instagram/android/directshare/d/y;
.super Lcom/instagram/api/j/a;
.source "DirectSharePermalinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/feed/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, p1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/e;->c()V

    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->j(Lcom/instagram/android/directshare/d/c;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->k(Lcom/instagram/android/directshare/d/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;Z)Z

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-nez v0, :cond_28

    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/d/c;->D()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->l(Lcom/instagram/android/directshare/d/c;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/g/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/feed/d/l;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/y;->a(Lcom/instagram/feed/d/l;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;Z)Z

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->D()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/d/y;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    :cond_1e
    return-void
.end method
