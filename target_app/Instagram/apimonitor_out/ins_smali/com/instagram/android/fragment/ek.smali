.class public final Lcom/instagram/android/fragment/ek;
.super Lcom/instagram/android/fragment/ee;
.source "SearchTagsFragment.java"
.field private b:Lcom/instagram/android/c/a/d;
.field private c:Lcom/instagram/android/a/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/ee;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/ek;)Lcom/instagram/android/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->c:Lcom/instagram/android/a/b;
return-object v0
.end method
.method public final G()V
.registers 2
invoke-super {p0}, Lcom/instagram/android/fragment/ee;->G()V
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->b:Lcom/instagram/android/c/a/d;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->b:Lcom/instagram/android/c/a/d;
invoke-virtual {v0}, Lcom/instagram/android/c/a/d;->e()Lcom/instagram/android/util/g;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/util/g;->b()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->b:Lcom/instagram/android/c/a/d;
invoke-virtual {v0}, Lcom/instagram/android/c/a/d;->e()Lcom/instagram/android/util/g;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/android/util/g;->b(Lcom/instagram/common/analytics/e;)V
:cond_1c
return-void
.end method
.method protected final U()I
.registers 2
sget v0, Lcom/facebook/az;->search_for_a_tag:I
return v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/android/fragment/ee;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/android/c/a/d;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/fragment/el;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/el;-><init>(Lcom/instagram/android/fragment/ek;)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
iput-object v0, p0, Lcom/instagram/android/fragment/ek;->b:Lcom/instagram/android/c/a/d;
return-void
.end method
.method protected final a(Landroid/widget/AdapterView;I)V
.registers 8
invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/c;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->X()Lcom/instagram/android/feed/a;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->c()Landroid/widget/BaseAdapter;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I
move-result v2
invoke-virtual {v0}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v3
add-int/lit8 v4, p2, -0x1
invoke-virtual {v1, p0, v2, v3, v4}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;I)V
iget-object v1, p0, Lcom/instagram/android/fragment/ek;->b:Lcom/instagram/android/c/a/d;
invoke-virtual {v1}, Lcom/instagram/android/c/a/d;->e()Lcom/instagram/android/util/g;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, p0}, Lcom/instagram/android/util/g;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
invoke-virtual {v0}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/android/k/c;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->r()Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v0, v2, v3}, Lcom/instagram/android/fragment/cg;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->X()Lcom/instagram/android/feed/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->c()Landroid/widget/BaseAdapter;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I
move-result v1
invoke-virtual {v0, p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->b:Lcom/instagram/android/c/a/d;
invoke-virtual {v0, p1}, Lcom/instagram/android/c/a/d;->a(Ljava/lang/String;)V
return-void
.end method
.method public final b()I
.registers 2
sget v0, Lcom/instagram/android/fragment/ei;->a:I
return v0
.end method
.method protected final c()Landroid/widget/BaseAdapter;
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->c:Lcom/instagram/android/a/b;
if-nez v0, :cond_f
new-instance v0, Lcom/instagram/android/a/b;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ek;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/android/a/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/fragment/ek;->c:Lcom/instagram/android/a/b;
:cond_f
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->c:Lcom/instagram/android/a/b;
return-object v0
.end method
.method protected final d()Landroid/widget/Filter;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/ek;->c:Lcom/instagram/android/a/b;
invoke-virtual {v0}, Lcom/instagram/android/a/b;->getFilter()Landroid/widget/Filter;
move-result-object v0
return-object v0
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "search_tags"
return-object v0
.end method