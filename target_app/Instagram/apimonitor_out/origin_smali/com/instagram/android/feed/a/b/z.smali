.class final Lcom/instagram/android/feed/a/b/z;
.super Ljava/lang/Object;
.source "MediaViewBinder.java"

# interfaces
.implements Lcom/instagram/feed/widget/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/ac;

.field final synthetic b:I

.field final synthetic c:Lcom/instagram/feed/d/l;

.field final synthetic d:Lcom/instagram/android/feed/a/b/x;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/x;Lcom/instagram/android/feed/a/b/ac;ILcom/instagram/feed/d/l;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/z;->d:Lcom/instagram/android/feed/a/b/x;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/z;->a:Lcom/instagram/android/feed/a/b/ac;

    iput p3, p0, Lcom/instagram/android/feed/a/b/z;->b:I

    iput-object p4, p0, Lcom/instagram/android/feed/a/b/z;->c:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/z;->a:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/feed/a/b/z;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    :cond_d
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/z;->d:Lcom/instagram/android/feed/a/b/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->b(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/z;->c:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/z;->a:Lcom/instagram/android/feed/a/b/ac;

    invoke-interface {v0, p1, v1, v2}, Lcom/instagram/android/feed/a/b/ab;->a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V

    return-void
.end method
