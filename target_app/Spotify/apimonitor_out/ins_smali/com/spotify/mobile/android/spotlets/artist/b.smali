.class public final Lcom/spotify/mobile/android/spotlets/artist/b;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"
.field private b:Landroid/widget/TextView;
.field private c:Ljava/util/ArrayList;
.field private d:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
.field private e:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V
return-void
.end method
.method protected final E()Landroid/view/View;
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030095
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a030c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->b:Landroid/widget/TextView;
const v0, 0x7f0a030a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->d:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
const v0, 0x7f0a030b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->e:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
return-object v1
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f0272
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.registers 6
const/4 v3, 0x0
new-instance v1, Ljava/util/ArrayList;
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;
sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->EMPTY_GALLERY:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
invoke-virtual {v0, v2}, Lcom/google/common/base/Optional;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->images:Ljava/util/List;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->c:Ljava/util/ArrayList;
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_1d
:cond_1c
:goto_1c
return-void
:cond_1d
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
check-cast v0, Landroid/text/Spannable;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/HtmlUtil;->a(Landroid/text/Spannable;Lcom/spotify/mobile/android/util/bd;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->b:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->b:Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_5b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->d:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->c:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->d:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->setVisibility(I)V
:cond_5b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x2
if-lt v0, v1, :cond_1c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->e:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->c:Ljava/util/ArrayList;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b;->e:Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->setVisibility(I)V
goto :goto_1c
.end method