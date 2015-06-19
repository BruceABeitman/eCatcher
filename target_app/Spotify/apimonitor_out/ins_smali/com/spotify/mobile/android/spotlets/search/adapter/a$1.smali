.class final Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:I
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
.field final synthetic c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
.field final synthetic d:I
.field final synthetic e:Lcom/spotify/mobile/android/spotlets/search/adapter/a;
.field private f:Ljava/lang/Boolean;
.field private g:Ljava/lang/Boolean;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a;ILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;I)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a;
iput p2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->a:I
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
iput p5, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->d:I
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->a:I
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/b;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/b;->a(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Z
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->f:Ljava/lang/Boolean;
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->f:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
xor-int/2addr v1, v0
if-eqz v1, :cond_2a
:cond_1b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->f:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Z)V
:cond_2a
iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->d:I
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/b;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/b;->b(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Z
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->g:Ljava/lang/Boolean;
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->g:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
xor-int/2addr v1, v0
if-eqz v1, :cond_54
:cond_45
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->c:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;->g:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Z)V
:cond_54
return-void
.end method