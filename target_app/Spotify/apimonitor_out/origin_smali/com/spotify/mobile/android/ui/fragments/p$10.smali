.class final Lcom/spotify/mobile/android/ui/fragments/p$10;
.super Landroid/support/v4/view/bu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Landroid/support/v4/view/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget v0, v0, Lcom/spotify/mobile/android/ui/fragments/p;->c:I

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->e(Lcom/spotify/mobile/android/ui/fragments/p;I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->e(Lcom/spotify/mobile/android/ui/fragments/p;I)V

    goto :goto_d
.end method

.method public final a(IFI)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/bu;->a(IFI)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->o(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->n(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/ui/fragments/q;)Lcom/spotify/mobile/android/ui/fragments/q;

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    int-to-float v1, p1

    add-float/2addr v1, p2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_77

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->H(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->H(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    :cond_48
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Landroid/net/Uri;)Landroid/net/Uri;

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/c/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->I(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->b(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/b/c;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_76
.end method

.method public final b(I)V
    .registers 9

    if-nez p1, :cond_39

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/q;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/q;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/ui/fragments/q;)Lcom/spotify/mobile/android/ui/fragments/q;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->o(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->n(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->o(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->p(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/fragments/q;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$10;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->n(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_39
    return-void
.end method
