.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/c;
.super Landroid/support/v4/view/ah;
.source "SourceFile"
.field private final a:Ljava/util/List;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
.field private d:Lcom/spotify/mobile/android/spotlets/artist/adapters/d;
.field private e:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/g;)V
.registers 6
invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->b:Landroid/content/Context;
invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->a:Ljava/util/List;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;-><init>(Landroid/content/Context;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/d;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->e:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/d;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/d;)Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Lcom/spotify/mobile/android/spotlets/artist/view/g;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ai;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->a:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x106000c
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->a:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->uri:Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 5
check-cast p3, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-virtual {p3}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a()V
invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ai;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/d;
invoke-static {v0, p3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/d;Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)V
return-void
.end method
.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
if-ne p1, p2, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method