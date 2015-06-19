.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;
.super Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
.source "SourceFile"
.field private final i:I
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
.registers 7
invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d0001
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->i:I
return-void
.end method
.method public final a(ILandroid/view/View;)Landroid/view/View;
.registers 15
const v11, 0x7f020073
const/4 v3, 0x1
const/4 v4, 0x0
if-nez p2, :cond_e7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->g:Lcom/spotify/mobile/android/spotlets/artist/view/e;
iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->i:I
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a(I)Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;
move-result-object p2
:goto_f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_eb
move v0, v3
:goto_18
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->h:Z
invoke-virtual {p2, v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->a(ZZ)V
new-instance v0, Landroid/widget/AbsListView$LayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->a()Lcom/google/common/collect/aq;
move-result-object v6
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->i:I
mul-int/2addr v0, p1
move v5, v0
:goto_2f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_f3
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->b()V
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/CardView;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->c:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v5, v1, :cond_ee
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->c:Ljava/util/List;
invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
if-eqz v2, :cond_7e
iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;
if-eqz v2, :cond_7e
const-class v2, Lcom/spotify/mobile/android/util/df;
invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v2
check-cast v2, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
iget-object v7, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iget-object v7, v7, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;
invoke-virtual {v2, v7}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-virtual {v2, v11}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-virtual {v2, v11}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;
move-result-object v7
invoke-virtual {v2, v7}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
:cond_7e
iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->name:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v7, 0x7f0e000a
iget v8, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->trackCount:I
new-array v9, v3, [Ljava/lang/Object;
iget v10, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->trackCount:I
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v9, v4
invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V
iget v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->year:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->c(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->d:Ljava/util/HashMap;
iget-object v7, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->d:Ljava/util/HashMap;
iget-object v7, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
new-instance v8, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;
iget-object v9, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
invoke-direct {v8, v5, v9}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;-><init>(ILjava/lang/String;)V
invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_c0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->d:Ljava/util/HashMap;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->uri:Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;
invoke-virtual {v1, v5}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->a(I)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->setTag(Ljava/lang/Object;)V
invoke-virtual {p0, v0, v5}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->a(Landroid/view/View;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->a:Landroid/content/Context;
check-cast v1, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
:goto_e2
add-int/lit8 v0, v5, 0x1
move v5, v0
goto/16 :goto_2f
:cond_e7
check-cast p2, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;
goto/16 :goto_f
:cond_eb
move v0, v4
goto/16 :goto_18
:cond_ee
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->setVisibility(I)V
goto :goto_e2
:cond_f3
return-object p2
.end method
.method public final a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
return-object v0
.end method
.method public final getCount()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->i:I
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->a(II)I
move-result v0
return v0
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final isEnabled(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method