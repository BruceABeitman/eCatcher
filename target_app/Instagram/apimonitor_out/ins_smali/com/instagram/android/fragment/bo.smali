.class public Lcom/instagram/android/fragment/bo;
.super Lcom/instagram/ui/menu/e;
.source "FindFriendsFragment.java"
.implements Lcom/instagram/a/b;
.field private static final i:Ljava/lang/Class;
.field private aa:Landroid/os/Handler;
.field private final ab:Lcom/instagram/android/fragment/bv;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/fragment/bo;
sput-object v0, Lcom/instagram/android/fragment/bo;->i:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/bo;->aa:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/fragment/bv;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/bv;-><init>(Lcom/instagram/android/fragment/bo;B)V
iput-object v0, p0, Lcom/instagram/android/fragment/bo;->ab:Lcom/instagram/android/fragment/bv;
return-void
.end method
.method private U()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/bo;->aa:Landroid/os/Handler;
new-instance v1, Lcom/instagram/android/fragment/bu;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bu;-><init>(Lcom/instagram/android/fragment/bo;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/bo;)Lcom/instagram/android/fragment/bv;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/bo;->ab:Lcom/instagram/android/fragment/bv;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/fragment/bo;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bo;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/instagram/android/fragment/fj;
invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/bo;->p()Landroid/support/v4/app/s;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
invoke-static {v0, p1, v1, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/fragment/bo;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bo;->b(Ljava/lang/String;)V
return-void
.end method
.method private b(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
new-instance v0, Lcom/instagram/android/fragment/fj;
invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/bo;->p()Landroid/support/v4/app/s;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p1, v1, v2, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method static synthetic d()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/android/fragment/bo;->i:Ljava/lang/Class;
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
if-ne p2, v0, :cond_12
packed-switch p1, :pswitch_data_1a
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/bo;->ab:Lcom/instagram/android/fragment/bv;
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
:cond_12
:goto_12
invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/menu/e;->a(IILandroid/content/Intent;)V
return-void
:pswitch_16
invoke-direct {p0}, Lcom/instagram/android/fragment/bo;->U()V
goto :goto_12
:pswitch_data_1a
.packed-switch 0x5
:pswitch_16
.end packed-switch
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->a(Landroid/os/Bundle;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/instagram/ui/menu/f;
sget v2, Lcom/facebook/az;->find_friends_item_from_my_contact_list:I
new-instance v3, Lcom/instagram/android/fragment/bp;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bp;-><init>(Lcom/instagram/android/fragment/bo;)V
invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/instagram/android/fragment/bo;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_30
new-instance v1, Lcom/instagram/ui/menu/f;
sget v2, Lcom/facebook/az;->find_friends_item_vkontakte_friends:I
new-instance v3, Lcom/instagram/android/fragment/bq;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bq;-><init>(Lcom/instagram/android/fragment/bo;)V
invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_30
new-instance v1, Lcom/instagram/ui/menu/f;
sget v2, Lcom/facebook/az;->find_friends_item_facebook_friends:I
new-instance v3, Lcom/instagram/android/fragment/br;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/br;-><init>(Lcom/instagram/android/fragment/bo;)V
invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/instagram/ui/menu/f;
sget v2, Lcom/facebook/az;->find_friends_item_suggested_users:I
new-instance v3, Lcom/instagram/android/fragment/bs;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bs;-><init>(Lcom/instagram/android/fragment/bo;)V
invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/instagram/ui/menu/f;
sget v2, Lcom/facebook/az;->find_friends_follow_people:I
new-instance v3, Lcom/instagram/android/fragment/bt;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/bt;-><init>(Lcom/instagram/android/fragment/bo;)V
invoke-direct {v1, v2, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/bo;->a(Ljava/util/Collection;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->find_friends_menu_label:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/bo;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v0
if-lez v0, :cond_14
const/4 v0, 0x1
:goto_10
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
return-void
:cond_14
const/4 v0, 0x0
goto :goto_10
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "find_friends"
return-object v0
.end method