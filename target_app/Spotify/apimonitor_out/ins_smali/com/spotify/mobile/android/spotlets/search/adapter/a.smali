.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Lcom/spotify/mobile/android/spotlets/search/adapter/b;
.field private final b:Lcom/spotify/mobile/android/spotlets/search/a;
.field private final c:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
.field private final d:Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;
.field private final e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
.field private final f:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
.field private final g:Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;
.field private final h:Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;
.field private final i:Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;
.field private final j:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;Lcom/spotify/mobile/android/spotlets/search/adapter/b;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "null search context"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->c:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->f:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->g:Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->h:Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->i:Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;
new-instance v1, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
const-string v0, "null playlist click listener"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;
invoke-direct {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->j:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
const-string v0, "null footer listener"
invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/adapter/b;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/b;
return-void
.end method
.method private a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
.registers 13
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;-><init>()V
invoke-virtual {v0, p5}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v0
invoke-virtual {v0, p6}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a()Lcom/spotify/mobile/android/spotlets/common/adapter/a;
move-result-object v2
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;Landroid/widget/ListAdapter;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f032e
const v3, 0x7f0f01ae
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->c:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/widget/ListView;Landroid/widget/ListAdapter;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
.registers 12
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;-><init>(Landroid/widget/ListView;)V
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a(Landroid/widget/ListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a()Lcom/spotify/mobile/android/spotlets/common/adapter/g;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v1
if-eqz p3, :cond_28
new-instance v2, Lcom/spotify/android/paste/widget/SectionHeaderView;
invoke-direct {v2, v1}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/SectionHeaderView;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Ljava/lang/String;)V
invoke-virtual {v0, v2, p5}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a(Landroid/view/View;Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
:cond_28
if-eqz p4, :cond_38
invoke-static {v1, p1}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v2
invoke-virtual {v1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v2, p5}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->b(Landroid/view/View;Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
:cond_38
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->b()Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v4
if-eqz p5, :cond_4e
if-nez p3, :cond_42
if-eqz p4, :cond_4e
:cond_42
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;
move-object v1, p0
move v2, p3
move-object v3, p5
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a;ILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;I)V
invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_4e
return-object v4
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/search/adapter/d;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;
new-instance v1, Lcom/spotify/mobile/android/spotlets/common/adapter/c;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->c:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->f:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->g:Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->h:Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a()Lcom/spotify/mobile/android/spotlets/common/adapter/a;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;-><init>(Lcom/spotify/mobile/android/spotlets/common/adapter/a;Lcom/spotify/mobile/android/spotlets/search/a;)V
return-object v0
.end method
.method public final b(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f032d
const v3, 0x7f0f01ac
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final c(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f0332
const v3, 0x7f0f01b6
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final d(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f0330
const/4 v3, 0x0
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final e(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f0331
const/4 v3, 0x0
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final f(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->f:Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->j:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
new-instance v2, Lcom/spotify/mobile/android/spotlets/common/adapter/c;
invoke-direct {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;-><init>()V
invoke-virtual {v2, p3}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a()Lcom/spotify/mobile/android/spotlets/common/adapter/a;
move-result-object v2
const v3, 0x7f0f01a9
const v4, 0x7f0f01b2
move-object v0, p0
move-object v1, p1
move-object v5, p2
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;Landroid/widget/ListAdapter;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final g(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f01aa
const v3, 0x7f0f01b4
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->g:Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final h(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const v2, 0x7f0f032f
const v3, 0x7f0f01b0
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->h:Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method
.method public final i(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;
.registers 11
const/4 v2, 0x0
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->i:Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;
move-object v0, p0
move-object v1, p1
move v3, v2
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v0
return-object v0
.end method