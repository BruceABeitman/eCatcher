.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->E()[Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 12

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/util/ar;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/spotify/mobile/android/util/ar;->a(Ljava/lang/Object;Landroid/database/Cursor;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/16 v5, 0x9

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/16 v5, 0xa

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/16 v5, 0xf

    invoke-static {p2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v5

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v5

    if-eqz v5, :cond_10c

    const/16 v5, 0xc

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v6

    new-instance v7, Lcom/spotify/mobile/android/ui/c/a;

    iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v6

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v7}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v7

    invoke-interface {v7}, Lcom/spotify/mobile/android/ui/prettylist/c;->d()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v6

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v6

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v7}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v7

    invoke-interface {v7}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v6}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v6

    invoke-interface {v6}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v7}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v7

    invoke-interface {v7}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v6}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spotify/android/paste/widget/EmptyView;->d()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_10c

    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v5

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :cond_10c
    if-eqz v4, :cond_113

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->p(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V

    :cond_113
    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v4

    if-eqz v4, :cond_198

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->q(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0f0030

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v8}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/ui/view/paste/a;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v4

    const/16 v5, 0xd

    const-string v6, ""

    invoke-static {p2, v5, v6}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/ui/view/paste/a;->b(Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/view/paste/a;->a()Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    :cond_198
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/Collection;->a(ZZ)Lcom/spotify/mobile/android/util/Collection$State;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Lcom/spotify/mobile/android/util/Collection$State;)Lcom/spotify/mobile/android/util/Collection$State;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/4 v4, 0x4

    invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/4 v4, 0x6

    invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "title"

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    if-nez v0, :cond_26b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :goto_203
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/4 v4, 0x5

    invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    const/16 v4, 0xb

    invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->r(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Z

    move-result v0

    if-eqz v0, :cond_27b

    move v0, v1

    :goto_22d
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->s(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v0, :cond_27d

    :goto_235
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v1

    if-eqz v1, :cond_249

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(Z)V

    :cond_249
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->v(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->t(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->u(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(II)V

    goto/16 :goto_1f

    :cond_26b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V

    goto :goto_203

    :cond_27b
    move v0, v2

    goto :goto_22d

    :cond_27d
    move v2, v3

    goto :goto_235
.end method
