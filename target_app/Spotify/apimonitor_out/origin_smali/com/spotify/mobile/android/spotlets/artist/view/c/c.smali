.class public final Lcom/spotify/mobile/android/spotlets/artist/view/c/c;
.super Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/spotify/mobile/android/ui/prettylist/c;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

.field private e:Lcom/spotify/mobile/android/spotlets/artist/view/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;
    .registers 8

    const/4 v5, 0x0

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->portraits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->portraits:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/ui/c/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->c(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/util/dg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7c
    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/c;)V

    return-object v0

    :cond_82
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7c
.end method

.method public final a(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/view/c/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->e:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->e:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->e:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a(Z)V

    return-void
.end method

.method public final a(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->e:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a(ZI)V

    return-void
.end method

.method public final b()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->c:Landroid/widget/ListView;

    return-object v0
.end method
