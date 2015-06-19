.class public Lcom/twidroid/fragments/a/e;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"
.implements Lcom/viewpagerindicator/j;
.field public static final a:I = 0x6
.field public static final b:I = 0x5
.field public static final d:I = 0x2
.field public static final e:I = 0x0
.field public static final f:I = 0x1
.field public static final g:I = 0x3
.field public static final h:I = 0x4
.field public static final i:I = 0x5
.field protected c:I
.field private j:Landroid/support/v4/app/FragmentManager;
.field private k:Lcom/twidroid/model/twitter/User;
.field private l:Landroid/content/Context;
.field private m:Z
.field private n:Ljava/util/List;
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/twidroid/model/twitter/User;Landroid/content/Context;Z)V
.registers 6
invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V
const/4 v0, 0x5
iput v0, p0, Lcom/twidroid/fragments/a/e;->c:I
iput-object p1, p0, Lcom/twidroid/fragments/a/e;->j:Landroid/support/v4/app/FragmentManager;
iput-object p2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
iput-object p3, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
iput-boolean p4, p0, Lcom/twidroid/fragments/a/e;->m:Z
iget-boolean v0, p0, Lcom/twidroid/fragments/a/e;->m:Z
if-eqz v0, :cond_15
const/4 v0, 0x6
iput v0, p0, Lcom/twidroid/fragments/a/e;->c:I
:cond_15
return-void
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
if-nez v0, :cond_58
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
:goto_b
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
invoke-static {v2}, Lcom/twidroid/fragments/d/a;->a(Lcom/twidroid/model/twitter/User;)Lcom/twidroid/fragments/d/a;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x1
iget-object v2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
invoke-static {v2}, Lcom/twidroid/fragments/d/t;->a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x2
iget-object v2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
invoke-static {v2}, Lcom/twidroid/fragments/d/g;->a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x3
iget-object v2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
invoke-static {v2}, Lcom/twidroid/fragments/d/k;->a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x4
iget-object v2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
invoke-static {v2}, Lcom/twidroid/fragments/d/c;->a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget-boolean v0, p0, Lcom/twidroid/fragments/a/e;->m:Z
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x5
iget-object v2, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
invoke-static {v2}, Lcom/twidroid/fragments/d/p;->a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_57
return-void
:cond_58
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
goto :goto_b
.end method
.method public b(I)Ljava/lang/String;
.registers 4
packed-switch p1, :pswitch_data_6c
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
const v1, 0x7f0c01c0
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_13
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
const v1, 0x7f0c01b0
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_21
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
const v1, 0x7f0c01b2
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_2f
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
const v1, 0x7f0c01b3
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_3d
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
instance-of v0, v0, Lcom/twidroid/UberSocialProfile;
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
check-cast v0, Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->k()Z
move-result v0
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
const v1, 0x7f0c02ca
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:cond_5b
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->l:Landroid/content/Context;
const v1, 0x7f0c01d0
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_69
const-string v0, "Tweets"
goto :goto_4
:pswitch_data_6c
.packed-switch 0x0
:pswitch_5
:pswitch_69
:pswitch_21
:pswitch_2f
:pswitch_13
:pswitch_3d
.end packed-switch
.end method
.method public c(I)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->k:Lcom/twidroid/model/twitter/User;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-boolean v0, p0, Lcom/twidroid/fragments/a/e;->m:Z
if-eqz v0, :cond_c
const/4 v0, 0x6
goto :goto_5
:cond_c
const/4 v0, 0x5
goto :goto_5
.end method
.method public getItem(I)Landroid/support/v4/app/Fragment;
.registers 5
const/4 v1, 0x5
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
iget-boolean v0, p0, Lcom/twidroid/fragments/a/e;->m:Z
if-eqz v0, :cond_1a
const/4 v0, 0x6
:goto_10
if-ge v2, v0, :cond_15
:cond_12
invoke-direct {p0}, Lcom/twidroid/fragments/a/e;->a()V
:cond_15
packed-switch p1, :pswitch_data_58
const/4 v0, 0x0
:goto_19
return-object v0
:cond_1a
move v0, v1
goto :goto_10
:pswitch_1c
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
goto :goto_19
:pswitch_26
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x4
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
goto :goto_19
:pswitch_30
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x2
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
goto :goto_19
:pswitch_3a
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x3
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
goto :goto_19
:pswitch_44
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
goto :goto_19
:pswitch_4d
iget-object v0, p0, Lcom/twidroid/fragments/a/e;->n:Ljava/util/List;
const/4 v1, 0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
goto :goto_19
nop
:pswitch_data_58
.packed-switch 0x0
:pswitch_1c
:pswitch_4d
:pswitch_30
:pswitch_3a
:pswitch_26
:pswitch_44
.end packed-switch
.end method