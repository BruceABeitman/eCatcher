.class final Lcom/instagram/android/feed/d/i;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/d;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/d/d;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/d/i;-><init>(Lcom/instagram/android/feed/d/d;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->c(Lcom/instagram/android/feed/d/d;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v2, v0, p2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->d(Lcom/instagram/android/feed/d/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/p;

    iget-object v4, v0, Lcom/instagram/feed/d/p;->b:Ljava/lang/String;

    if-eqz v4, :cond_85

    iget-object v4, v0, Lcom/instagram/feed/d/p;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    iget-object v0, v0, Lcom/instagram/feed/d/p;->a:Ljava/lang/String;

    :goto_30
    move-object v1, v0

    goto :goto_16

    :cond_32
    if-nez v1, :cond_3c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Menu item click not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-static {}, Lcom/instagram/feed/g/b;->a()Lcom/instagram/feed/g/b;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v2}, Lcom/instagram/android/feed/d/d;->e(Lcom/instagram/android/feed/d/d;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/feed/g/b;->b(Lcom/instagram/feed/d/l;)V

    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->e(Lcom/instagram/android/feed/d/d;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v2}, Lcom/instagram/android/feed/d/d;->f(Lcom/instagram/android/feed/d/d;)Lcom/instagram/android/feed/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->h(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v1}, Lcom/instagram/android/feed/d/d;->g(Lcom/instagram/android/feed/d/d;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7b

    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->i(Lcom/instagram/android/feed/d/d;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_7a
    return-void

    :cond_7b
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->f(Lcom/instagram/android/feed/d/d;)Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    goto :goto_7a

    :cond_85
    move-object v0, v1

    goto :goto_30
.end method
