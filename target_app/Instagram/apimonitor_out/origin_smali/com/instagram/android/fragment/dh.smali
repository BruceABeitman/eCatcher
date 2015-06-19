.class final Lcom/instagram/android/fragment/dh;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/instagram/android/fragment/ct;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ct;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/fragment/dh;->b:Lcom/instagram/android/fragment/ct;

    iput-object p2, p0, Lcom/instagram/android/fragment/dh;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/dh;->b:Lcom/instagram/android/fragment/ct;

    iput-boolean v2, v0, Lcom/instagram/android/fragment/ct;->ac:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/dh;->b:Lcom/instagram/android/fragment/ct;

    iget-object v0, v0, Lcom/instagram/android/fragment/ct;->ab:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/android/fragment/dh;->b:Lcom/instagram/android/fragment/ct;

    iget-object v0, v0, Lcom/instagram/android/fragment/ct;->ab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_15
    const-string v0, "loadFeedFromDiskCache"

    invoke-static {v0}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/dh;->b:Lcom/instagram/android/fragment/ct;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    iget-object v1, p0, Lcom/instagram/android/fragment/dh;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/l;->c(Ljava/util/List;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/dh;->b:Lcom/instagram/android/fragment/ct;

    iget-object v0, p0, Lcom/instagram/android/fragment/dh;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;Ljava/lang/String;)Ljava/lang/String;

    :cond_38
    return-void
.end method
