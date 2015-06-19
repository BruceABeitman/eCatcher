.class public final Lcom/instagram/android/directshare/e/b;
.super Lcom/instagram/base/a/b;
.source "RequestedDirectSharesFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/user/e/a/a/e;
.field private a:Lcom/instagram/android/directshare/e/a;
.field private b:Landroid/os/Handler;
.field private c:Landroid/widget/TextView;
.field private d:Lcom/instagram/user/follow/h;
.field private e:Lcom/instagram/common/h/e;
.field private f:Lcom/instagram/android/directshare/e/l;
.field private g:Lcom/instagram/common/c/h;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/android/directshare/e/l;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/e/l;-><init>(Lcom/instagram/android/directshare/e/b;B)V
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->f:Lcom/instagram/android/directshare/e/l;
return-void
.end method
.method private U()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_all_msg:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_all_positive:I
new-instance v2, Lcom/instagram/android/directshare/e/i;
invoke-direct {v2, p0}, Lcom/instagram/android/directshare/e/i;-><init>(Lcom/instagram/android/directshare/e/b;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
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
.method private V()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->request_error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dismiss:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private W()V
.registers 8
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->c:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/ax;->directshare_requested_direct_shares_header:I
iget-object v3, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v3}, Lcom/instagram/android/directshare/e/a;->getCount()I
move-result v3
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v6}, Lcom/instagram/android/directshare/e/a;->getCount()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/directshare/e/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->c()V
return-void
.end method
.method private a(Lcom/instagram/f/c/a;)V
.registers 8
const/4 v5, 0x0
const/4 v4, 0x1
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_title:I
new-array v2, v4, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/directshare/e/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore_msg:I
new-array v2, v4, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/directshare/e/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->directshare_requested_direct_shares_confirm_ignore:I
new-instance v2, Lcom/instagram/android/directshare/e/h;
invoke-direct {v2, p0, p1}, Lcom/instagram/android/directshare/e/h;-><init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
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
.method static synthetic b(Lcom/instagram/android/directshare/e/b;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;
return-object v0
.end method
.method private b()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->getCount()I
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;
new-instance v1, Lcom/instagram/android/directshare/e/e;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/e/e;-><init>(Lcom/instagram/android/directshare/e/b;)V
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_14
return-void
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-static {}, Lcom/instagram/android/directshare/c/v;->a()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/e/a;->a(Ljava/util/List;)V
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->W()V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->b()V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/directshare/e/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->d()V
return-void
.end method
.method private d()V
.registers 6
const/4 v4, 0x1
sget v0, Lcom/facebook/az;->directshare_requested_direct_shares_ignore_all_button:I
invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/e/b;->c(I)Ljava/lang/String;
move-result-object v0
new-array v1, v4, [Ljava/lang/CharSequence;
const/4 v2, 0x0
aput-object v0, v1, v2
new-instance v2, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
new-instance v3, Lcom/instagram/android/directshare/e/g;
invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/directshare/e/g;-><init>(Lcom/instagram/android/directshare/e/b;Ljava/lang/String;[Ljava/lang/CharSequence;)V
invoke-virtual {v2, v1, v3}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/directshare/e/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->U()V
return-void
.end method
.method static synthetic e(Lcom/instagram/android/directshare/e/b;)Lcom/instagram/android/directshare/e/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/directshare/e/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->W()V
return-void
.end method
.method static synthetic g(Lcom/instagram/android/directshare/e/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->V()V
return-void
.end method
.method public final E()V
.registers 6
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-static {}, Lcom/instagram/android/directshare/c/v;->b()Z
move-result v0
if-eqz v0, :cond_1f
new-instance v0, Lcom/instagram/f/a/a/n;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/directshare/e/m;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/instagram/android/directshare/e/m;-><init>(Lcom/instagram/android/directshare/e/b;B)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/f/a/a/n;->h()V
:cond_1f
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->d()V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/android/c2dm/a;
iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->e:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
return-void
.end method
.method public final F()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/android/c2dm/a;
iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->e:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(I)V
.registers 2
return-void
.end method
.method public final a(Landroid/content/Context;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V
new-instance v0, Lcom/instagram/common/c/j;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "INTENT_ACTION_PENDING_REQUESTS_UPDATED"
iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->f:Lcom/instagram/android/directshare/e/l;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->g:Lcom/instagram/common/c/h;
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->g:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->b:Landroid/os/Handler;
sget-object v0, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z
move-result v0
if-eqz v0, :cond_2b
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
:goto_14
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->d:Lcom/instagram/user/follow/h;
new-instance v0, Lcom/instagram/android/directshare/e/a;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/e/b;->d:Lcom/instagram/user/follow/h;
invoke-direct {v0, v1, p0, v2}, Lcom/instagram/android/directshare/e/a;-><init>(Landroid/content/Context;Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/follow/h;)V
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
new-instance v0, Lcom/instagram/android/directshare/e/c;
invoke-direct {v0, p0}, Lcom/instagram/android/directshare/e/c;-><init>(Lcom/instagram/android/directshare/e/b;)V
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->e:Lcom/instagram/common/h/e;
return-void
:cond_2b
sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;
goto :goto_14
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const/4 v3, 0x0
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x102000a
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->row_text_padding:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/ListView;->setPadding(IIII)V
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
sget v2, Lcom/facebook/aw;->row_requested_direct_share_footer:I
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
sget v1, Lcom/facebook/av;->requested_direct_share_header_text:I
invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/instagram/android/directshare/e/b;->c:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
iget-object v1, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/instagram/android/directshare/e/b;->c()V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
const/4 v1, 0x1
invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Z)V
sget v0, Lcom/facebook/az;->directshare_requested_direct_shares_title:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->getCount()I
move-result v0
if-le v0, v1, :cond_1b
sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;
new-instance v1, Lcom/instagram/android/directshare/e/f;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/e/f;-><init>(Lcom/instagram/android/directshare/e/b;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;
:cond_1b
return-void
.end method
.method public final f(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/e/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/f/c/a;
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/e/b;->a(Lcom/instagram/f/c/a;)V
return-void
.end method
.method public final g(I)V
.registers 8
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->a:Lcom/instagram/android/directshare/e/a;
invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/e/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/f/c/a;
new-instance v1, Lcom/instagram/f/a/a/c;
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/directshare/e/b;->y()Landroid/support/v4/app/an;
move-result-object v3
new-instance v4, Lcom/instagram/android/directshare/e/j;
sget-object v5, Lcom/instagram/android/directshare/e/k;->b:Lcom/instagram/android/directshare/e/k;
invoke-direct {v4, p0, v0, v5}, Lcom/instagram/android/directshare/e/j;-><init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;Lcom/instagram/android/directshare/e/k;)V
invoke-virtual {v0}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;
move-result-object v5
invoke-virtual {v5}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/f/a/a/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/instagram/f/a/a/c;->h()V
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/directshare/a/a;->a(Lcom/instagram/f/c/a;Z)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "direct_share_requests"
return-object v0
.end method
.method public final l_()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/directshare/e/b;->c:Landroid/widget/TextView;
return-void
.end method
.method public final p_()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V
iget-object v0, p0, Lcom/instagram/android/directshare/e/b;->g:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V
return-void
.end method