.class final Lcom/instagram/android/feed/a/b/ae;
.super Lcom/instagram/android/feed/ui/c;
.source "MediaViewBinder.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-direct {p0}, Lcom/instagram/android/feed/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/ad;->a:Lcom/instagram/android/feed/a/b/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->b(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/ad;->a(Lcom/instagram/android/feed/a/b/ad;)Lcom/instagram/feed/d/l;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/ad;->b(Lcom/instagram/android/feed/a/b/ad;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-static {v3}, Lcom/instagram/android/feed/a/b/ad;->c(Lcom/instagram/android/feed/a/b/ad;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/b/ab;->a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V

    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/ad;->a:Lcom/instagram/android/feed/a/b/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->b(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/ad;->a(Lcom/instagram/android/feed/a/b/ad;)Lcom/instagram/feed/d/l;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/ad;->b(Lcom/instagram/android/feed/a/b/ad;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/ae;->a:Lcom/instagram/android/feed/a/b/ad;

    invoke-static {v3}, Lcom/instagram/android/feed/a/b/ad;->c(Lcom/instagram/android/feed/a/b/ad;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/b/ab;->b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V

    const/4 v0, 0x1

    return v0
.end method
