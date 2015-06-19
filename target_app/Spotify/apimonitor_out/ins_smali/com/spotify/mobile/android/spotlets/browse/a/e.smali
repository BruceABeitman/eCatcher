.class public final Lcom/spotify/mobile/android/spotlets/browse/a/e;
.super Lcom/spotify/mobile/android/spotlets/browse/a/d;
.source "SourceFile"
.field private c:Ljava/util/List;
.method public constructor <init>(ILcom/spotify/mobile/android/a/b;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/a/d;-><init>(ILcom/spotify/mobile/android/a/b;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
return-void
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
invoke-virtual {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a:Lcom/spotify/mobile/android/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/a/b;->a()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a:Lcom/spotify/mobile/android/a/b;
invoke-interface {v1}, Lcom/spotify/mobile/android/a/b;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->b(Ljava/util/List;)I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
move-result-object v0
return-object v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
if-eqz p2, :cond_6
instance-of v0, p2, Lcom/spotify/mobile/android/spotlets/browse/view/e;
if-nez v0, :cond_23
:cond_6
new-instance p2, Lcom/spotify/mobile/android/spotlets/browse/view/e;
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->b:I
invoke-direct {p2, v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/e;-><init>(Landroid/content/Context;I)V
:goto_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->getCount()I
move-result v0
if-lez v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->c:Ljava/util/List;
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(ILjava/util/List;)Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a:Lcom/spotify/mobile/android/a/b;
invoke-virtual {p2, v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->a(Ljava/util/List;Lcom/spotify/mobile/android/a/b;)V
:cond_22
return-object p2
:cond_23
check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/view/e;
goto :goto_11
.end method