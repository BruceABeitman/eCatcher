.class public final Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
.super Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;
.source "SourceFile"
.field private b:Ljava/lang/String;
.field private c:Lcom/squareup/picasso/Picasso;
.field private final d:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
.registers 5
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;-><init>(Landroid/content/Context;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->c:Lcom/squareup/picasso/Picasso;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0f02d0
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/f;
return-void
.end method
.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;Lcom/spotify/android/paste/widget/e;)V
.registers 9
const/4 v2, 0x0
const/4 v1, 0x1
check-cast p1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_d2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getCollectionUri()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_d2
move v3, v1
:goto_1d
if-eqz v3, :cond_d5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->c()Z
move-result v0
if-eqz v0, :cond_d5
move v0, v1
:goto_26
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->setIsPlaying(Z)V
if-eqz v3, :cond_d8
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->c()Z
move-result v0
if-nez v0, :cond_d8
move v0, v1
:goto_32
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->setIsPaused(Z)V
invoke-virtual {p2, p1}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getArtistName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_db
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->b:Ljava/lang/String;
:goto_4b
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getCollectionUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e1
move v0, v1
:goto_63
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/e;->c(Z)V
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/e;->a(Z)V
invoke-virtual {p2, v3}, Lcom/spotify/android/paste/widget/e;->b(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->c:Lcom/squareup/picasso/Picasso;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getAlbumImageUri()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
const v3, 0x7f020073
invoke-virtual {v0, v3}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a:Landroid/content/Context;
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v3
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getOfflineState()I
move-result v4
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getSyncProgress()I
move-result v5
invoke-static {v0, v3, v4, v5}, Lcom/spotify/mobile/android/util/aq;->a(Landroid/content/Context;Landroid/widget/TextView;II)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e3
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->b()Ljava/lang/String;
move-result-object v0
const-string v3, ":radio:"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e3
:goto_ab
invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->setIsRadio(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->d()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->setIsOnline(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->d()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->setIsRadioAvailable(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/Object;)V
return-void
:cond_d2
move v3, v2
goto/16 :goto_1d
:cond_d5
move v0, v2
goto/16 :goto_26
:cond_d8
move v0, v2
goto/16 :goto_32
:cond_db
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getArtistName()Ljava/lang/String;
move-result-object v0
goto/16 :goto_4b
:cond_e1
move v0, v2
goto :goto_63
:cond_e3
move v1, v2
goto :goto_ab
.end method