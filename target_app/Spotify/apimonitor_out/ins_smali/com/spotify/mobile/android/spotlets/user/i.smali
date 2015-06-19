.class public final Lcom/spotify/mobile/android/spotlets/user/i;
.super Lcom/spotify/mobile/android/ui/adapter/ae;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/adapter/ae;-><init>(Landroid/content/Context;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;B)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/adapter/ae;-><init>(Landroid/content/Context;Z)V
return-void
.end method
.method protected final synthetic a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/Object;)V
.registers 9
check-cast p2, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p1, p2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/i;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0015
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->getFollowersCount()I
move-result v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->getFollowersCount()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->getImageUrl()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/i;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
return-void
.end method