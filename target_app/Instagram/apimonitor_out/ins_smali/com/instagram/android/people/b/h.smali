.class public final Lcom/instagram/android/people/b/h;
.super Lcom/instagram/base/a/b;
.source "PeopleTagSearchFragment.java"
.field protected a:Z
.field private b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.field private c:Lcom/instagram/android/c/a/y;
.field private d:Landroid/widget/ListView;
.field private e:Lcom/instagram/android/people/widget/d;
.field private f:Landroid/view/View;
.field private g:Lcom/instagram/android/people/b/l;
.field private h:Z
.field private final i:Lcom/instagram/api/j/f;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
iput-boolean v0, p0, Lcom/instagram/android/people/b/h;->a:Z
iput-boolean v0, p0, Lcom/instagram/android/people/b/h;->h:Z
new-instance v0, Lcom/instagram/android/people/b/j;
invoke-direct {v0, p0}, Lcom/instagram/android/people/b/j;-><init>(Lcom/instagram/android/people/b/h;)V
iput-object v0, p0, Lcom/instagram/android/people/b/h;->i:Lcom/instagram/api/j/f;
return-void
.end method
.method private U()V
.registers 4
const/16 v2, 0x8
iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
sget v1, Lcom/facebook/av;->search_loading_spinner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
sget v1, Lcom/facebook/av;->row_search_for_x_container:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private V()Lcom/instagram/model/people/b;
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/activity/PeopleTagActivity;
invoke-virtual {v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->h()Lcom/instagram/model/people/b;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/people/b/h;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
return-object v0
.end method
.method public static a(Landroid/support/v4/app/s;)V
.registers 4
new-instance v0, Lcom/instagram/android/people/b/h;
invoke-direct {v0}, Lcom/instagram/android/people/b/h;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v2
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
const-string v0, "PeopleTagSearch"
invoke-virtual {v2, v0}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;
invoke-virtual {v2}, Landroid/support/v4/app/ag;->b()I
invoke-virtual {p0}, Landroid/support/v4/app/s;->b()Z
return-void
.end method
.method static synthetic a(Lcom/instagram/android/people/b/h;Ljava/lang/CharSequence;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/people/b/h;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method private a(Ljava/lang/CharSequence;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
sget v1, Lcom/facebook/av;->row_search_for_x_container:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
sget v1, Lcom/facebook/av;->row_search_for_x_textview:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->search_for_x:I
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/people/b/h;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/people/b/h;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/people/b/h;->h:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/android/people/b/h;)Lcom/instagram/android/people/widget/d;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/b/h;->e:Lcom/instagram/android/people/widget/d;
return-object v0
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
sget v1, Lcom/facebook/av;->row_search_for_x_textview:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->searching:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
sget v1, Lcom/facebook/av;->search_loading_spinner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/people/b/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->c()V
return-void
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/people/b/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->d()V
return-void
.end method
.method static synthetic e(Lcom/instagram/android/people/b/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->U()V
return-void
.end method
.method static synthetic f(Lcom/instagram/android/people/b/h;)Lcom/instagram/model/people/b;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->V()Lcom/instagram/model/people/b;
move-result-object v0
return-object v0
.end method
.method static synthetic g(Lcom/instagram/android/people/b/h;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic h(Lcom/instagram/android/people/b/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->b()V
return-void
.end method
.method public final F()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V
return-void
.end method
.method public final G()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
invoke-interface {v0}, Lcom/instagram/android/people/b/l;->g()V
:cond_9
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v3, 0x0
sget v0, Lcom/facebook/aw;->fragment_people_tag_search:I
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
sget v1, Lcom/facebook/av;->row_search_edit_text:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iput-object v1, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->grey_4:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v2
aget-object v2, v2, v3
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-object v2, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-boolean v1, p0, Lcom/instagram/android/people/b/h;->h:Z
if-nez v1, :cond_4b
iget-object v1, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
new-instance v2, Lcom/instagram/android/people/b/k;
invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/b/k;-><init>(Lcom/instagram/android/people/b/h;B)V
invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
:cond_4b
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ListView;
iput-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
iget-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
new-instance v2, Lcom/instagram/android/people/b/i;
invoke-direct {v2, p0}, Lcom/instagram/android/people/b/i;-><init>(Lcom/instagram/android/people/b/h;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
sget v1, Lcom/facebook/aw;->row_search_for_x_dark:I
iget-object v2, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
const-string v2, "TAG_ROW_FOOTER_SEARCH"
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
iget-object v2, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
return-object v0
.end method
.method public final a(Landroid/content/Context;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V
:try_start_3
move-object v0, p1
check-cast v0, Lcom/instagram/android/people/b/l;
move-object v1, v0
iput-object v1, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v1
new-instance v1, Ljava/lang/ClassCastException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " must implement PeopleTagSearchFragmentListener"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->x()V
new-instance v0, Lcom/instagram/android/people/widget/e;
invoke-direct {v0}, Lcom/instagram/android/people/widget/e;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Landroid/content/Context;)Lcom/instagram/android/people/widget/e;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->y()Landroid/support/v4/app/an;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/people/widget/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/people/widget/e;->a()Lcom/instagram/android/people/widget/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/people/widget/e;->b()Lcom/instagram/android/people/widget/e;
move-result-object v0
sget-object v1, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/people/widget/e;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->V()Lcom/instagram/model/people/b;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/e;->a(Lcom/instagram/model/people/b;)Lcom/instagram/android/people/widget/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/people/widget/e;->c()Lcom/instagram/android/people/widget/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/people/b/h;->e:Lcom/instagram/android/people/widget/d;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/android/c/a/y;
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/people/b/h;->y()Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/people/b/h;->i:Lcom/instagram/api/j/f;
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/y;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
iput-object v0, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/android/c/a/y;
iget-object v0, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
iget-object v1, p0, Lcom/instagram/android/people/b/h;->e:Lcom/instagram/android/people/widget/d;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z
iget-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V
return-void
.end method
.method protected final a(Landroid/widget/AdapterView;I)V
.registers 5
invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
iget-object v1, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
invoke-interface {v1, v0}, Lcom/instagram/android/people/b/l;->a(Lcom/instagram/user/c/a;)V
:cond_f
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_19
iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
invoke-interface {v0}, Lcom/instagram/android/people/b/l;->g()V
:goto_18
:cond_18
return-void
:cond_19
iget-object v1, p0, Lcom/instagram/android/people/b/h;->c:Lcom/instagram/android/c/a/y;
invoke-virtual {v1, v0}, Lcom/instagram/android/c/a/y;->a(Ljava/lang/String;)V
goto :goto_18
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "people_tagging_search"
return-object v0
.end method
.method public final j_()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
iget-boolean v0, p0, Lcom/instagram/android/people/b/h;->h:Z
if-eqz v0, :cond_18
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->c()V
invoke-direct {p0}, Lcom/instagram/android/people/b/h;->U()V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
new-instance v1, Lcom/instagram/android/people/b/k;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/instagram/android/people/b/k;-><init>(Lcom/instagram/android/people/b/h;B)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
:cond_18
return-void
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
iget-object v0, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
iput-object v1, p0, Lcom/instagram/android/people/b/h;->b:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iput-object v1, p0, Lcom/instagram/android/people/b/h;->d:Landroid/widget/ListView;
iput-object v1, p0, Lcom/instagram/android/people/b/h;->f:Landroid/view/View;
return-void
.end method
.method public final p_()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/people/b/h;->g:Lcom/instagram/android/people/b/l;
return-void
.end method