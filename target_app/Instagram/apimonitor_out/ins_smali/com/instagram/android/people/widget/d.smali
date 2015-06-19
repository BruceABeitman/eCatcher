.class public final Lcom/instagram/android/people/widget/d;
.super Lcom/instagram/android/l/a/a;
.source "PeopleTaggingUserListAdapter.java"
.field private o:Lcom/instagram/model/people/b;
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;)V
.registers 15
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
move-object v6, p7
invoke-direct/range {v0 .. v6}, Lcom/instagram/android/l/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;)V
iput-object p6, p0, Lcom/instagram/android/people/widget/d;->o:Lcom/instagram/model/people/b;
return-void
.end method
.method synthetic constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;B)V
.registers 9
invoke-direct/range {p0 .. p7}, Lcom/instagram/android/people/widget/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;)V
return-void
.end method
.method protected final a()Landroid/view/View;
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/people/widget/d;->e()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_no_results_dark:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->row_no_results_textview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/az;->no_users_found:I
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
return-object v1
.end method
.method public final b()Lcom/instagram/android/l/a/g;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/d;->h:Lcom/instagram/android/l/a/g;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/android/people/d/a;
invoke-direct {v0}, Lcom/instagram/android/people/d/a;-><init>()V
iput-object v0, p0, Lcom/instagram/android/people/widget/d;->h:Lcom/instagram/android/l/a/g;
:cond_b
iget-object v0, p0, Lcom/instagram/android/people/widget/d;->h:Lcom/instagram/android/l/a/g;
return-object v0
.end method
.method public final getFilter()Landroid/widget/Filter;
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/widget/d;->g:Landroid/widget/Filter;
if-nez v0, :cond_d
new-instance v0, Lcom/instagram/android/people/widget/a;
iget-object v1, p0, Lcom/instagram/android/people/widget/d;->o:Lcom/instagram/model/people/b;
invoke-direct {v0, p0, v1}, Lcom/instagram/android/people/widget/a;-><init>(Lcom/instagram/android/people/widget/d;Lcom/instagram/model/people/b;)V
iput-object v0, p0, Lcom/instagram/android/people/widget/d;->g:Landroid/widget/Filter;
:cond_d
iget-object v0, p0, Lcom/instagram/android/people/widget/d;->g:Landroid/widget/Filter;
return-object v0
.end method