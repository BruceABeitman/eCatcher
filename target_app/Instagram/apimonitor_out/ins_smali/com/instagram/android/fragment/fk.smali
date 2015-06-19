.class public Lcom/instagram/android/fragment/fk;
.super Lcom/instagram/ui/menu/e;
.source "UserOptionsFragment.java"
.implements Lcom/instagram/a/b;
.field private static final i:Ljava/lang/Class;
.field private aa:Lcom/instagram/android/d/n;
.field private ab:Lcom/instagram/n/b/a;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/fragment/fk;
sput-object v0, Lcom/instagram/android/fragment/fk;->i:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V
return-void
.end method
.method private U()Ljava/util/List;
.registers 7
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->find_friends_menu_label:I
new-instance v5, Lcom/instagram/android/fragment/fl;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/fl;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->posts_you_liked:I
new-instance v5, Lcom/instagram/android/fragment/fw;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/fw;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/instagram/n/b/a;->a()Z
move-result v3
if-eqz v3, :cond_40
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->check_for_updates:I
new-instance v5, Lcom/instagram/android/fragment/ga;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/ga;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_40
new-instance v3, Lcom/instagram/ui/menu/d;
sget v4, Lcom/facebook/az;->settings:I
invoke-direct {v3, v4}, Lcom/instagram/ui/menu/d;-><init>(I)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->linked_accounts:I
new-instance v5, Lcom/instagram/android/fragment/gb;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gb;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->push_notification_settings:I
new-instance v5, Lcom/instagram/android/fragment/gc;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gc;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x9
if-lt v3, v4, :cond_7d
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->camera:I
new-instance v5, Lcom/instagram/android/fragment/gd;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/gd;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_7d
new-instance v3, Lcom/instagram/ui/menu/f;
sget v4, Lcom/facebook/az;->videos:I
new-instance v5, Lcom/instagram/android/fragment/ge;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/ge;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v3, v4, v5}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v0}, Lcom/instagram/k/a/b;->f()Z
move-result v0
if-eqz v0, :cond_a5
new-instance v0, Lcom/instagram/ui/menu/aa;
sget v3, Lcom/facebook/az;->save_original_photos:I
invoke-virtual {v1}, Lcom/instagram/k/b/a;->x()Z
move-result v1
new-instance v4, Lcom/instagram/android/fragment/gf;
invoke-direct {v4, p0}, Lcom/instagram/android/fragment/gf;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v3, v1, v4}, Lcom/instagram/ui/menu/aa;-><init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_a5
new-instance v0, Lcom/instagram/ui/menu/d;
sget v1, Lcom/facebook/az;->support:I
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->instagram_help_center:I
new-instance v3, Lcom/instagram/android/fragment/gg;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/gg;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->report_problem:I
new-instance v3, Lcom/instagram/android/fragment/fm;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fm;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/d;
sget v1, Lcom/facebook/az;->about:I
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/instagram/service/c/a;->c()Z
move-result v0
if-eqz v0, :cond_ec
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->about_ads:I
new-instance v3, Lcom/instagram/android/fragment/fn;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fn;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ec
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->instagram_blog:I
new-instance v3, Lcom/instagram/android/fragment/fo;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fo;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->privacy_policy:I
new-instance v3, Lcom/instagram/android/fragment/fp;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fp;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->terms_of_service:I
new-instance v3, Lcom/instagram/android/fragment/fq;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fq;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->about_this_version:I
new-instance v3, Lcom/instagram/android/fragment/fr;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fr;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/d;
sget v1, Lcom/facebook/az;->account:I
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->clear_search_history:I
new-instance v3, Lcom/instagram/android/fragment/fs;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fs;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->change_profile_picture:I
new-instance v3, Lcom/instagram/android/fragment/ft;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ft;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->log_out:I
new-instance v3, Lcom/instagram/android/fragment/fu;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fu;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_17e
new-instance v0, Lcom/instagram/ui/menu/d;
sget v1, Lcom/facebook/az;->developer:I
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/instagram/ui/menu/f;
sget v1, Lcom/facebook/az;->options:I
new-instance v3, Lcom/instagram/android/fragment/fv;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/fv;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-direct {v0, v1, v3}, Lcom/instagram/ui/menu/f;-><init>(ILandroid/view/View$OnClickListener;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_17e
return-object v2
.end method
.method private V()V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
const-string v2, "http://help.instagram.com/"
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->l()Landroid/support/v4/app/k;
move-result-object v3
invoke-static {v2, v3}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fk;->a(Landroid/content/Intent;)V
return-void
.end method
.method private W()V
.registers 5
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->report_problem:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/CharSequence;
const/4 v2, 0x0
sget v3, Lcom/facebook/az;->abuse_or_spam:I
invoke-virtual {p0, v3}, Lcom/instagram/android/fragment/fk;->c(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
sget v3, Lcom/facebook/az;->send_feedback:I
invoke-virtual {p0, v3}, Lcom/instagram/android/fragment/fk;->c(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
sget v3, Lcom/facebook/az;->report_problem:I
invoke-virtual {p0, v3}, Lcom/instagram/android/fragment/fk;->c(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
new-instance v2, Lcom/instagram/android/fragment/fx;
invoke-direct {v2, p0}, Lcom/instagram/android/fragment/fx;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private X()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->are_you_sure:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->yes_im_sure:I
new-instance v2, Lcom/instagram/android/fragment/fy;
invoke-direct {v2, p0}, Lcom/instagram/android/fragment/fy;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private Y()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->are_you_sure:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->log_out:I
new-instance v2, Lcom/instagram/android/fragment/fz;
invoke-direct {v2, p0}, Lcom/instagram/android/fragment/fz;-><init>(Lcom/instagram/android/fragment/fk;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/fk;)Lcom/instagram/n/b/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/fk;->ab:Lcom/instagram/n/b/a;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/fragment/fk;Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/fk;->a(Ljava/lang/String;I)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/fk;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/fk;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;I)V
.registers 4
invoke-virtual {p0, p2}, Lcom/instagram/android/fragment/fk;->c(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/fragment/fk;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x1
invoke-static {p1, v1}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/fragment/fk;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/fk;->V()V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/fragment/fk;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/fk;->W()V
return-void
.end method
.method static synthetic d()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/android/fragment/fk;->i:Ljava/lang/Class;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/fragment/fk;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/fk;->X()V
return-void
.end method
.method static synthetic e(Lcom/instagram/android/fragment/fk;)Lcom/instagram/android/d/n;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/fk;->aa:Lcom/instagram/android/d/n;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/fragment/fk;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/fk;->Y()V
return-void
.end method
.method public final E()V
.registers 2
invoke-super {p0}, Lcom/instagram/ui/menu/e;->E()V
invoke-direct {p0}, Lcom/instagram/android/fragment/fk;->U()Ljava/util/List;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/fk;->a(Ljava/util/Collection;)V
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/ui/menu/e;->F()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->p()Landroid/support/v4/app/s;
move-result-object v0
const-string v1, "ProgressDialog"
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/ui/dialog/g;
if-eqz v0, :cond_14
invoke-virtual {v0}, Lcom/instagram/ui/dialog/g;->b()V
:cond_14
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/fragment/fk;->aa:Lcom/instagram/android/d/n;
invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/d/n;->a(IILandroid/content/Intent;)V
invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/menu/e;->a(IILandroid/content/Intent;)V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/android/d/n;
invoke-direct {v0, p0, p1}, Lcom/instagram/android/d/n;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/instagram/android/fragment/fk;->aa:Lcom/instagram/android/d/n;
invoke-static {}, Lcom/instagram/n/b/a;->a()Z
move-result v0
if-eqz v0, :cond_1b
new-instance v0, Lcom/instagram/n/b/a;
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/n/b/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/fragment/fk;->ab:Lcom/instagram/n/b/a;
:cond_1b
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->options:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/fk;->p()Landroid/support/v4/app/s;
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
.method public final e(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/ui/menu/e;->e(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/android/fragment/fk;->aa:Lcom/instagram/android/d/n;
invoke-virtual {v0, p1}, Lcom/instagram/android/d/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "user_options"
return-object v0
.end method