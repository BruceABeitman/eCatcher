.class final Lcom/instagram/android/feed/a/b/e;
.super Ljava/lang/Object;
.source "FeedMediaRowViewBinder.java"

# interfaces
.implements Lcom/instagram/feed/widget/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/g;

.field final synthetic b:Lcom/instagram/android/feed/a/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/android/feed/a/b/g;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/e;->b:Lcom/instagram/android/feed/a/b/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/e;->a:Lcom/instagram/android/feed/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/e;->a:Lcom/instagram/android/feed/a/b/g;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/g;->i:Lcom/instagram/android/feed/ui/MediaOptionsButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/e;->a:Lcom/instagram/android/feed/a/b/g;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/g;->i:Lcom/instagram/android/feed/ui/MediaOptionsButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setClickable(Z)V

    :cond_11
    return-void
.end method
