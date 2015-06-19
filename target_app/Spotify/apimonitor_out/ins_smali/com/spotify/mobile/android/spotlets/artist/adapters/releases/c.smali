.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;
.super Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
.source "SourceFile"
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
return-void
.end method
.method public final a(ILandroid/view/View;)Landroid/view/View;
.registers 10
const v3, 0x7f020073
if-nez p2, :cond_9e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->g:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b()Lcom/spotify/android/paste/widget/ListItemView;
move-result-object p2
:goto_b
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
if-eqz v1, :cond_43
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;
if-eqz v1, :cond_43
const-class v1, Lcom/spotify/mobile/android/util/df;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
:cond_43
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->name:Ljava/lang/String;
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e000b
iget v3, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->trackCount:I
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget v6, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->trackCount:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
iget v6, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->year:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->d:Ljava/util/HashMap;
iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_87
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->d:Ljava/util/HashMap;
iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
new-instance v3, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;
iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
invoke-direct {v3, p1, v4}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_87
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->d:Ljava/util/HashMap;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->a(I)V
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
invoke-virtual {p0, p2, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->a(Lcom/spotify/android/paste/widget/ListItemView;I)V
invoke-virtual {p0, p2, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->a(Landroid/view/View;I)V
return-object p2
:cond_9e
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
goto/16 :goto_b
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method