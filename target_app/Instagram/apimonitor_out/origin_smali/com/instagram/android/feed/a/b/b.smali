.class final Lcom/instagram/android/feed/a/b/b;
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

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/b;->c:Lcom/instagram/android/feed/a/b/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/b;->a:Lcom/instagram/feed/d/l;

    iput p3, p0, Lcom/instagram/android/feed/a/b/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/b;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/android/feed/a/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/b;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/a;->b(Lcom/instagram/android/feed/a/b/a;)Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/b;->a:Lcom/instagram/feed/d/l;

    iget v3, p0, Lcom/instagram/android/feed/a/b/b;->b:I

    iget-object v4, p0, Lcom/instagram/android/feed/a/b/b;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v4}, Lcom/instagram/feed/d/l;->q()Z

    move-result v4

    if-eqz v4, :cond_2c

    sget v4, Lcom/instagram/feed/d/o;->b:I

    :goto_1a
    sget v5, Lcom/instagram/android/h/g;->a:I

    iget-object v6, p0, Lcom/instagram/android/feed/a/b/b;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v6}, Lcom/instagram/android/feed/a/b/a;->c(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/fragment/aa;

    move-result-object v6

    iget-object v7, p0, Lcom/instagram/android/feed/a/b/b;->c:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v7}, Lcom/instagram/android/feed/a/b/a;->d(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/feed/g/a;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/aa;Lcom/instagram/feed/g/a;)V

    return-void

    :cond_2c
    sget v4, Lcom/instagram/feed/d/o;->a:I

    goto :goto_1a
.end method
