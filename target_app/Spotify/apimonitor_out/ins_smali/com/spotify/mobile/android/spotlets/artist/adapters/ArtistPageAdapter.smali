.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;
.super Lcom/spotify/mobile/android/ui/adapter/o;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
.field private b:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/e;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$1;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/v;)V
return-void
.end method
.method private a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
.registers 5
invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->b(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)I
move-result v0
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->ordinal()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;II)V
return-void
.end method
.method private a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
.registers 6
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->hasReleasesOfType(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Z
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->b(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->c(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$PreferredAdapter;
if-ne v0, v1, :cond_2f
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->getReleases(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
move-result-object v0
:goto_23
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a()Landroid/widget/ListAdapter;
move-result-object v0
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->b(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
goto :goto_a
:cond_2f
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->getReleases(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
move-result-object v0
goto :goto_23
.end method
.method private a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
.registers 5
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
const/4 v0, 0x1
invoke-virtual {p2, p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Z)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->l:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
goto :goto_8
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;->a(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V
:cond_9
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.registers 10
const/4 v5, 0x1
const/4 v2, 0x0
new-instance v3, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a()Landroid/content/Context;
move-result-object v0
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v3, v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
const-string v1, "NTX_artist_published_playlists_position"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ABTest;
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_4e
new-array v4, v5, [Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
aput-object v1, v4, v2
invoke-static {v4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v5}, Lcom/google/common/base/i;->a(Z)V
const-wide/16 v5, 0x6
invoke-static {v5, v6}, Lcom/google/common/a/a;->a(J)I
move-result v1
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
invoke-virtual {v3, v5}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a(Ljava/util/List;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
move-result-object v1
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a()Landroid/widget/ListAdapter;
move-result-object v1
sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
:cond_4e
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_63
invoke-virtual {v3, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
:cond_63
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v1
if-nez v1, :cond_73
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v1
if-eqz v1, :cond_85
:cond_73
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_85
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_165
:cond_85
:goto_85
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_aa
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a()Landroid/content/Context;
move-result-object v4
iget-object v5, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
const-string v6, ", "
invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/spotify/mobile/android/spotlets/artist/view/b/j;
invoke-direct {v6}, Lcom/spotify/mobile/android/spotlets/artist/view/b/j;-><init>()V
iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v1, v4, v5, v6, v7}, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/b/d;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
:cond_aa
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_c4
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a()Landroid/content/Context;
move-result-object v4
iget-object v5, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v1, v4, v5, v6}, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
:cond_c4
if-eqz v0, :cond_d3
iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ABTest;->group:Ljava/lang/String;
const-string v4, "A"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d3
invoke-direct {p0, p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
:cond_d3
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
invoke-direct {p0, v1, p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v1
if-nez v1, :cond_e5
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
invoke-direct {p0, v1, p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
:cond_e5
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
invoke-direct {p0, v1, p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
if-eqz v0, :cond_f9
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ABTest;->group:Ljava/lang/String;
const-string v1, "B"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f9
invoke-direct {p0, p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
:cond_f9
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
invoke-direct {p0, v0, p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/adapters/a;)V
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_12b
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a()Landroid/content/Context;
move-result-object v3
new-instance v4, Lcom/spotify/mobile/android/spotlets/artist/view/b/b;
invoke-direct {v4}, Lcom/spotify/mobile/android/spotlets/artist/view/b/b;-><init>()V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v1, v3, v0, v4, v5}, Lcom/spotify/mobile/android/spotlets/artist/adapters/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/b/d;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->k:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
:cond_12b
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_147
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;
iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v1, v0, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;-><init>(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
:cond_147
invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
move-result-object v1
array-length v3, v1
move v0, v2
:goto_14d
if-ge v0, v3, :cond_17d
aget-object v2, v1, v0
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->ordinal()I
move-result v4
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->c(I)Z
move-result v4
if-eqz v4, :cond_162
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->ordinal()I
move-result v2
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->d(I)Z
:cond_162
add-int/lit8 v0, v0, 0x1
goto :goto_14d
:cond_165
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a()Landroid/content/Context;
move-result-object v4
iget-object v5, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iget-object v6, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
iget-object v6, v6, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;
iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v1, v4, v5, v6, v7}, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->j:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
invoke-direct {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;->a(Landroid/widget/ListAdapter;Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)V
goto/16 :goto_85
:cond_17d
return-void
.end method