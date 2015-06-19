.class public final Lcom/spotify/mobile/android/ui/adapter/y;
.super Landroid/support/v4/widget/b;
.source "SourceFile"


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/h;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/spotify/mobile/android/ui/adapter/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/z;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/spotify/mobile/android/ui/adapter/z;",
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/y;->n:Lcom/spotify/mobile/android/ui/adapter/z;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->j:Ljava/lang/String;

    const v0, 0x7f0f02b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->k:Ljava/lang/String;

    const v0, 0x7f0f02b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/adapter/y;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/ui/cell/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->n:Lcom/spotify/mobile/android/ui/adapter/z;

    invoke-static {p1, p3, v0}, Lcom/spotify/mobile/android/ui/cell/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/adapter/z;)Lcom/spotify/android/paste/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/spotify/android/paste/widget/e;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/model/h;

    invoke-direct {v3}, Lcom/spotify/mobile/android/model/h;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/y;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/y;->l:Ljava/lang/String;

    invoke-virtual {v3, p3, v0, v4, v5}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/y;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/y;->n:Lcom/spotify/mobile/android/ui/adapter/z;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-interface {v5}, Lcom/spotify/mobile/android/ui/adapter/z;->a()Z

    move-result v0

    if-eqz v0, :cond_d2

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getAlbumImageUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    const v7, 0x7f020073

    invoke-virtual {v0, v7}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :cond_4f
    :goto_4f
    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/spotify/mobile/android/ui/adapter/z;->c()Z

    move-result v6

    if-eqz v6, :cond_73

    iget-object v6, v3, Lcom/spotify/mobile/android/model/h;->k:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_73

    iget-object v6, v3, Lcom/spotify/mobile/android/model/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u2022 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    invoke-interface {v5}, Lcom/spotify/mobile/android/ui/adapter/z;->b()Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u2022 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->isPlaying()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->b(Z)V

    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->isAvailable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->a(Z)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_eb

    const/4 v0, 0x1

    :goto_aa
    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->d(Z)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getOfflineState()I

    move-result v5

    invoke-static {v4, v0, v5, v1}, Lcom/spotify/mobile/android/util/aq;->a(Landroid/content/Context;Landroid/widget/TextView;II)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/y;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/y;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v0, v1, v3}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/y;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/Object;)V

    :cond_d1
    return-void

    :cond_d2
    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    goto/16 :goto_4f

    :cond_e3
    invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :cond_eb
    move v0, v1

    goto :goto_aa
.end method
