.class final Lcom/instagram/android/feed/a/d;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Lcom/instagram/android/feed/a/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/c;Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/d;->b:Lcom/instagram/android/feed/a/c;

    iput-object p2, p0, Lcom/instagram/android/feed/a/d;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/d;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/k/b/a;->b(Ljava/lang/String;Z)V

    return-void
.end method
