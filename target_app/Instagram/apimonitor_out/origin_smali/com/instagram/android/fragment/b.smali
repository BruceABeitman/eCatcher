.class final Lcom/instagram/android/fragment/b;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/common/h/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/h/d",
        "<",
        "Lcom/instagram/feed/d/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/q;)Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/instagram/feed/d/q;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v1

    iget-boolean v2, p1, Lcom/instagram/feed/d/q;->b:Z

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v2}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v2}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_23
    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/a;->ag()Z

    move-result v2

    if-eqz v2, :cond_50

    if-eqz v1, :cond_50

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_50

    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->u()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    :cond_50
    :goto_50
    return-void

    :cond_51
    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    goto :goto_23

    :cond_55
    iget-object v0, p0, Lcom/instagram/android/fragment/b;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v0}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/android/fragment/a;)Z

    goto :goto_50
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
    .registers 3

    check-cast p1, Lcom/instagram/feed/d/q;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/b;->a(Lcom/instagram/feed/d/q;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Lcom/instagram/common/h/a;)V
    .registers 2

    check-cast p1, Lcom/instagram/feed/d/q;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/b;->b(Lcom/instagram/feed/d/q;)V

    return-void
.end method
