.class public final Lcom/spotify/mobile/android/ui/adapter/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/model/h;Lcom/spotify/mobile/android/ui/adapter/z;)V
    .registers 8

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {p3}, Lcom/spotify/mobile/android/ui/adapter/z;->a()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->getAlbumImageUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    const v3, 0x7f020073

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :goto_3a
    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/spotify/mobile/android/ui/adapter/z;->c()Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p2, Lcom/spotify/mobile/android/model/h;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p2, Lcom/spotify/mobile/android/model/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2022 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    invoke-interface {p3}, Lcom/spotify/mobile/android/ui/adapter/z;->b()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2022 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_cd

    move v0, v1

    :goto_95
    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a()V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->getOfflineState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a(I)V

    return-void

    :cond_b4
    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    goto/16 :goto_3a

    :cond_c5
    invoke-virtual {p2}, Lcom/spotify/mobile/android/model/h;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_cd
    const/4 v0, 0x0

    goto :goto_95
.end method
