.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/adapter/b;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Z
.registers 4
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
:pswitch_b
const/4 v0, 0x0
:goto_c
return v0
:pswitch_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k()Z
move-result v0
goto :goto_c
:pswitch_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->f()Z
move-result v0
goto :goto_c
nop
:pswitch_data_1c
.packed-switch 0x2
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_14
:pswitch_14
:pswitch_d
:pswitch_b
:pswitch_d
.end packed-switch
.end method
.method public final b(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k()Z
move-result v1
if-nez v1, :cond_10
:cond_f
:goto_f
return v0
:cond_10
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_5c
:pswitch_1b
goto :goto_f
:pswitch_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
:pswitch_25
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
:pswitch_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
:pswitch_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
:pswitch_40
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
:pswitch_49
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
:pswitch_52
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->seeAll:Z
goto :goto_f
nop
:pswitch_data_5c
.packed-switch 0x2
:pswitch_1c
:pswitch_25
:pswitch_2e
:pswitch_40
:pswitch_37
:pswitch_1b
:pswitch_1b
:pswitch_49
:pswitch_52
.end packed-switch
.end method