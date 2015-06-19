.class final Lcom/instagram/android/feed/a/a/k;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"

# interfaces
.implements Lcom/instagram/android/m/a/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/j;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/j;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->b(Lcom/instagram/android/feed/a/a/j;)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/j;->c(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/g/a;

    move-result-object v2

    invoke-static {v0, p1, p2, v1, v2}, Lcom/instagram/feed/c/f;->b(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V

    :cond_1e
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/k;->a:Lcom/instagram/android/feed/a/a/j;

    const-string v2, "error"

    invoke-static {v1, v2}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;Ljava/lang/String;)V

    if-ne p1, v3, :cond_3c

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->w()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/instagram/android/feed/a/a/j;->j()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->f(Ljava/lang/String;)V

    :cond_3c
    return v3
.end method
