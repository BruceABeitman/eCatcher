.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Ljava/util/List;
.field private final c:Ljava/util/Map;
.field private d:Lcom/spotify/mobile/android/spotlets/artist/a/a;
.field private e:Lcom/spotify/mobile/android/spotlets/artist/view/e;
.field private f:Ljava/lang/String;
.field private final g:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->c:Ljava/util/Map;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/i$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/i;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->g:Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->a:Landroid/content/Context;
iget-object v0, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->b:Ljava/util/List;
iget-object v0, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->f:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->e:Lcom/spotify/mobile/android/spotlets/artist/view/e;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/i;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/adapters/i;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->a:Landroid/content/Context;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->d:Lcom/spotify/mobile/android/spotlets/artist/a/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->notifyDataSetChanged()V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
if-nez p2, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->e:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->c()Lcom/spotify/android/paste/widget/ListItemView;
move-result-object p2
:cond_c
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->e()Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;
add-int/lit8 v1, p1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->name:Ljava/lang/String;
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
iget v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->playcount:I
const/16 v4, 0x3e8
if-ge v1, v4, :cond_8b
const-string v1, "< 1000"
:goto_2c
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->d:Lcom/spotify/mobile/android/spotlets/artist/a/a;
if-eqz v1, :cond_9b
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->d:Lcom/spotify/mobile/android/spotlets/artist/a/a;
iget-object v4, v4, Lcom/spotify/mobile/android/spotlets/artist/a/a;->h:Lcom/spotify/mobile/android/spotlets/artist/a/d;
iget-object v4, v4, Lcom/spotify/mobile/android/spotlets/artist/a/d;->a:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_9b
move v1, v2
:goto_42
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->c:Ljava/util/Map;
iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->c:Ljava/util/Map;
iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
new-instance v5, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;
iget-object v6, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
invoke-direct {v5, p1, v6}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;-><init>(ILjava/lang/String;)V
invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->c:Ljava/util/Map;
iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;->a(I)V
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->g:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v1, v4, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->g:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v1, p2, v4, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Landroid/view/View;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-nez v0, :cond_9d
:goto_87
invoke-virtual {p2, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
return-object p2
:cond_8b
iget v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->playcount:I
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v4
invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
move-result-object v4
int-to-long v5, v1
invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v1
goto :goto_2c
:cond_9b
move v1, v3
goto :goto_42
:cond_9d
move v2, v3
goto :goto_87
.end method