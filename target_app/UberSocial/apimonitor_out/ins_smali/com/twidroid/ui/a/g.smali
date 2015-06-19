.class public abstract Lcom/twidroid/ui/a/g;
.super Lcom/twidroid/ui/a/a;
.source "SourceFile"
.field private static final c:I = 0x14
.field private static final d:Ljava/lang/String; = "AutoCompleteUsersAdapter"
.field private static final f:Ljava/lang/String; = "_id, name, screenname, location, profileimageurl, url, lastupdate, dirty, is_in_circle"
.field protected a:I
.field protected b:Lcom/twidroid/net/b/f;
.field private e:Landroid/widget/Filter;
.field private final g:Ljava/util/ArrayList;
.field private h:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/a;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/g;->g:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/ui/a/g;->h:Z
const/16 v0, 0xa
iput v0, p0, Lcom/twidroid/ui/a/g;->a:I
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0a0013
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/a/g;->a:I
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/g;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/g;->g:Ljava/util/ArrayList;
return-object v0
.end method
.method public a(Lcom/twidroid/net/b/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/g;->b:Lcom/twidroid/net/b/f;
return-void
.end method
.method public e(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/a/g;->h:Z
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/g;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getFilter()Landroid/widget/Filter;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/g;->e:Landroid/widget/Filter;
if-nez v0, :cond_c
new-instance v0, Lcom/twidroid/ui/a/h;
invoke-direct {v0, p0}, Lcom/twidroid/ui/a/h;-><init>(Lcom/twidroid/ui/a/g;)V
iput-object v0, p0, Lcom/twidroid/ui/a/g;->e:Landroid/widget/Filter;
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/twidroid/ui/a/g;->e:Landroid/widget/Filter;
goto :goto_b
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/g;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/g;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
const-wide/32 v6, 0x7f0c0316
const/4 v2, 0x0
if-nez p2, :cond_15
invoke-virtual {p0}, Lcom/twidroid/ui/a/g;->b()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030054
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_15
const v0, 0x7f09011f
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const v1, 0x7f090120
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/twidroid/ui/a/g;->j()Z
move-result v3
if-eqz v3, :cond_82
:goto_2d
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
const v2, 0x7f090121
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/g;->getItem(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/twidroid/model/twitter/User;
iget-wide v4, v3, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v4, v4, v6
if-eqz v4, :cond_8f
iget-object v4, p0, Lcom/twidroid/ui/a/g;->b:Lcom/twidroid/net/b/f;
if-eqz v4, :cond_85
iget-object v4, p0, Lcom/twidroid/ui/a/g;->b:Lcom/twidroid/net/b/f;
iget-object v5, v3, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-virtual {v4, v5, v0}, Lcom/twidroid/net/b/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
:goto_50
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v4, v3, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_68
iget-object v0, v3, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v3, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-wide v0, v3, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v0, v0, v6
if-nez v0, :cond_9b
invoke-virtual {p0}, Lcom/twidroid/ui/a/g;->f()Z
move-result v0
if-eqz v0, :cond_9b
invoke-static {p2}, Lcom/twidroid/d/c;->a(Landroid/view/View;)V
:goto_81
return-object p2
:cond_82
const/16 v2, 0x8
goto :goto_2d
:cond_85
invoke-virtual {v3}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;
move-result-object v4
iget-object v5, v3, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
invoke-static {p0, v0, v4, v5}, Lcom/twidroid/d/f;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_50
:cond_8f
const v4, 0x7f02010b
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V
const-string v0, ""
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_68
:cond_9b
invoke-static {p2}, Lcom/twidroid/d/c;->b(Landroid/view/View;)V
goto :goto_81
.end method
.method protected abstract i()Lcom/twidroid/ui/a/j;
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/a/g;->h:Z
return v0
.end method