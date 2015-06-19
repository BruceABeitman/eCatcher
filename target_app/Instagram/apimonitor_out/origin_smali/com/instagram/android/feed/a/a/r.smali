.class final Lcom/instagram/android/feed/a/a/r;
.super Ljava/lang/Object;
.source "LegacyVideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/q;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/q;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/r;->a:Lcom/instagram/android/feed/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/r;->a:Lcom/instagram/android/feed/a/a/q;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/q;->a(Lcom/instagram/android/feed/a/a/q;)Lcom/instagram/android/feed/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/r;->a:Lcom/instagram/android/feed/a/a/q;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/q;->b(Lcom/instagram/android/feed/a/a/q;)V

    :cond_11
    return-void
.end method
