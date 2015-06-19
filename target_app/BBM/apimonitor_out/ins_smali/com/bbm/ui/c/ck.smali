.class public Lcom/bbm/ui/c/ck;
.super Landroid/app/Fragment;
.source "GroupMembersFragment.java"
.field protected final a:Lcom/bbm/d;
.field protected b:Ljava/lang/String;
.field private c:Landroid/graphics/drawable/Drawable;
.field private d:Lcom/bbm/ui/ct;
.field private e:I
.field private f:Landroid/content/Context;
.field private g:Z
.field private final h:Lcom/bbm/j/u;
.field private final i:Landroid/widget/AdapterView$OnItemClickListener;
.field private final j:Landroid/widget/AdapterView$OnItemLongClickListener;
.field private final k:Lcom/bbm/j/j;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/c/ck;->g:Z
new-instance v0, Lcom/bbm/ui/c/cl;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/cl;-><init>(Lcom/bbm/ui/c/ck;)V
iput-object v0, p0, Lcom/bbm/ui/c/ck;->h:Lcom/bbm/j/u;
new-instance v0, Lcom/bbm/ui/c/cm;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/cm;-><init>(Lcom/bbm/ui/c/ck;)V
iput-object v0, p0, Lcom/bbm/ui/c/ck;->i:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/bbm/ui/c/cn;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/cn;-><init>(Lcom/bbm/ui/c/ck;)V
iput-object v0, p0, Lcom/bbm/ui/c/ck;->j:Landroid/widget/AdapterView$OnItemLongClickListener;
new-instance v0, Lcom/bbm/ui/c/co;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/co;-><init>(Lcom/bbm/ui/c/ck;)V
iput-object v0, p0, Lcom/bbm/ui/c/ck;->k:Lcom/bbm/j/j;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/ck;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/c/ck;->e:I
return v0
.end method
.method static synthetic a(Lcom/bbm/ui/c/ck;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/c/ck;->e:I
return p1
.end method
.method static synthetic a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v2, p1, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->I()Lcom/bbm/j/w;
move-result-object v4
const/4 v0, 0x0
move v2, v0
:goto_15
invoke-interface {v4}, Lcom/bbm/j/w;->d()I
move-result v0
if-ge v2, v0, :cond_32
invoke-interface {v4, v2}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fn;
iget-object v5, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;
iget-object v6, v3, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_48
iget-object v0, v0, Lcom/bbm/d/fn;->c:Ljava/lang/String;
:goto_2d
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_15
:cond_32
if-eqz v1, :cond_47
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v2
const-class v3, Lcom/bbm/ui/activities/SentPendingInviteActivity;
invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "pending_contact_id"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/ck;->startActivity(Landroid/content/Intent;)V
:cond_47
return-void
:cond_48
move-object v0, v1
goto :goto_2d
.end method
.method static synthetic a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;I)Z
.registers 15
const v10, 0x7f020211
const/4 v3, 0x1
const/4 v2, 0x0
const v0, 0x7f0a0073
if-ne p2, v0, :cond_c
move v0, v3
:goto_b
return v0
:cond_c
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->isAdded()Z
move-result v0
if-nez v0, :cond_14
move v0, v3
goto :goto_b
:cond_14
iget-object v0, p0, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_22
:cond_20
move v0, v3
goto :goto_b
:cond_22
iget-object v0, p0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v5
iget-object v0, v5, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_34
move v0, v3
goto :goto_b
:cond_34
iget-object v0, v5, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_3c
const/4 v0, 0x0
goto :goto_b
:cond_3c
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ev;
if-nez v0, :cond_46
move v0, v3
goto :goto_b
:cond_46
iget-object v6, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
if-nez v6, :cond_4c
move v0, v3
goto :goto_b
:cond_4c
new-instance v7, Lcom/bbm/ui/slidingmenu/a;
iget-object v1, p1, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-direct {v7, v2, v1, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, v5, Lcom/bbm/g/a;->j:Z
if-eqz v1, :cond_e1
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v4, 0x7f020268
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v8, 0x7f0e06b4
invoke-virtual {p0, v8}, Lcom/bbm/ui/c/ck;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-direct {v1, v4, v8, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
move-object v4, v1
:goto_6b
packed-switch p2, :pswitch_data_e4
:pswitch_6e
move-object v1, v2
:goto_6f
invoke-virtual {v6, v1, v7, v4}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-boolean v1, v5, Lcom/bbm/g/a;->j:Z
if-eqz v1, :cond_7e
new-instance v1, Lcom/bbm/ui/c/cq;
invoke-direct {v1, p0, p2, p1}, Lcom/bbm/ui/c/cq;-><init>(Lcom/bbm/ui/c/ck;ILcom/bbm/g/o;)V
invoke-virtual {v6, v1}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
:cond_7e
new-instance v1, Lcom/bbm/ui/c/cs;
invoke-direct {v1, p0, p2, p1, v0}, Lcom/bbm/ui/c/cs;-><init>(Lcom/bbm/ui/c/ck;ILcom/bbm/g/o;Lcom/bbm/ui/activities/ev;)V
iput-object v1, v6, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ev;->o()V
move v0, v3
goto :goto_b
:pswitch_8a
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Lcom/bbm/ui/slidingmenu/a;
const v9, 0x7f0a006f
const v10, 0x7f020271
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
const v11, 0x7f0e06b1
invoke-virtual {p0, v11}, Lcom/bbm/ui/c/ck;->getString(I)Ljava/lang/String;
move-result-object v11
invoke-direct {v8, v9, v10, v11, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_6f
:pswitch_a9
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Lcom/bbm/ui/slidingmenu/a;
const v9, 0x7f0a0072
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
const v11, 0x7f0e06bf
invoke-virtual {p0, v11}, Lcom/bbm/ui/c/ck;->getString(I)Ljava/lang/String;
move-result-object v11
invoke-direct {v8, v9, v10, v11, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_6f
:pswitch_c5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Lcom/bbm/ui/slidingmenu/a;
const v9, 0x7f0a0071
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
const v11, 0x7f0e06ab
invoke-virtual {p0, v11}, Lcom/bbm/ui/c/ck;->getString(I)Ljava/lang/String;
move-result-object v11
invoke-direct {v8, v9, v10, v11, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_6f
:cond_e1
move-object v4, v2
goto :goto_6b
nop
:pswitch_data_e4
.packed-switch 0x7f0a006f
:pswitch_8a
:pswitch_6e
:pswitch_c5
:pswitch_a9
.end packed-switch
.end method
.method static synthetic a(Lcom/bbm/ui/c/ck;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/c/ck;->g:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/c/ck;)Lcom/bbm/ui/ct;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v2, p1, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v0
new-instance v1, Lcom/bbm/ui/c/ct;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/c/ct;-><init>(Lcom/bbm/ui/c/ck;Lcom/google/b/f/a/l;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V
.registers 5
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v0
iget-object v1, p1, Lcom/bbm/g/o;->e:Ljava/lang/String;
iget-object v2, p1, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/c/ck;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/c/ck;->g:Z
return v0
.end method
.method static synthetic d(Lcom/bbm/ui/c/ck;)Lcom/bbm/j/u;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ck;->h:Lcom/bbm/j/u;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/c/ck;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ck;->c:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/c/ck;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ck;->f:Landroid/content/Context;
return-object v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const v0, 0x7f03008a
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const-string v0, "onCreateView"
const-class v2, Lcom/bbm/ui/c/ck;
invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/ck;->f:Landroid/content/Context;
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_3b
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v2, "groupUri"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_25
iput-object v0, p0, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_3e
:cond_33
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "GroupMembersFragment invoked without group uri"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
const-string v0, ""
goto :goto_25
:cond_3e
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0201fa
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/ck;->c:Landroid/graphics/drawable/Drawable;
const v0, 0x7f0a0392
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
new-instance v2, Lcom/bbm/ui/ct;
invoke-virtual {p0}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v3
new-instance v4, Lcom/bbm/ui/c/cv;
iget-object v5, p0, Lcom/bbm/ui/c/ck;->k:Lcom/bbm/j/j;
invoke-direct {v4, p0, v5}, Lcom/bbm/ui/c/cv;-><init>(Lcom/bbm/ui/c/ck;Lcom/bbm/j/j;)V
invoke-direct {v2, v3, v4}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
iput-object v2, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
iget-object v2, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v2, p0, Lcom/bbm/ui/c/ck;->i:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v2, p0, Lcom/bbm/ui/c/ck;->j:Landroid/widget/AdapterView$OnItemLongClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
return-object v1
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ck; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
:cond_c
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/c/ck; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ck; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v0, "onPause"
const-class v1, Lcom/bbm/ui/c/ck;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V
iget-object v0, p0, Lcom/bbm/ui/c/ck;->h:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->e()V
const-string v1, " - Lcom/bbm/ui/c/ck; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ck; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/ck;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/ck;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
const-string v1, " - Lcom/bbm/ui/c/ck; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method