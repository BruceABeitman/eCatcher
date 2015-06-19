.class public final Lcom/spotify/mobile/android/spotlets/browse/a/a;
.super Lcom/spotify/mobile/android/spotlets/browse/a/d;
.source "SourceFile"
.field private c:Ljava/util/ArrayList;
.method public constructor <init>(Lcom/spotify/mobile/android/a/b;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/d;-><init>(ILcom/spotify/mobile/android/a/b;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->c:Ljava/util/ArrayList;
return-void
.end method
.method private a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a:Lcom/spotify/mobile/android/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/a/b;->a()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a:Lcom/spotify/mobile/android/a/b;
invoke-interface {v1}, Lcom/spotify/mobile/android/a/b;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
move-result-object v0
return-object v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
if-eqz p2, :cond_6
instance-of v0, p2, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
if-nez v0, :cond_1e
:cond_6
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p3}, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
move-result-object p2
:goto_e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->getCount()I
move-result v0
if-lez v0, :cond_1d
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a:Lcom/spotify/mobile/android/a/b;
invoke-virtual {p2, v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a(Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;I)V
:cond_1d
return-object p2
:cond_1e
check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
goto :goto_e
.end method