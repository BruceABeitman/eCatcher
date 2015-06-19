.class final Lcom/instagram/android/feed/a/b/q;
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

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/q;->b:Lcom/instagram/android/feed/a/b/m;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/q;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/instagram/android/feed/d/a;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/q;->b:Lcom/instagram/android/feed/a/b/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/m;->a(Lcom/instagram/android/feed/a/b/m;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/feed/d/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/android/feed/d/a;->a()V

    const-string v0, "sponsored_label"

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/q;->a:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/q;->b:Lcom/instagram/android/feed/a/b/m;

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/m;->b(Lcom/instagram/android/feed/a/b/m;)Lcom/instagram/feed/g/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method
