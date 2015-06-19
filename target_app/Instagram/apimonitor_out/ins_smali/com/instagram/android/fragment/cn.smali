.class public final Lcom/instagram/android/fragment/cn;
.super Lcom/instagram/ui/menu/e;
.source "LinkedAccountsFragment.java"
.implements Lcom/instagram/a/b;
.field private i:Lcom/instagram/android/fragment/cq;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/ui/menu/e;-><init>()V
new-instance v0, Lcom/instagram/android/fragment/cq;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/cq;-><init>(Lcom/instagram/android/fragment/cn;B)V
iput-object v0, p0, Lcom/instagram/android/fragment/cn;->i:Lcom/instagram/android/fragment/cq;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/cn;)Lcom/instagram/android/fragment/cq;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/cn;->i:Lcom/instagram/android/fragment/cq;
return-object v0
.end method
.method private a(Landroid/view/View;Lcom/instagram/android/widget/x;)V
.registers 8
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cn;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->unlink_account:I
invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/cn;->c(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/instagram/android/fragment/cn;->n()Landroid/content/Context;
move-result-object v4
invoke-virtual {p2, v4}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->unlink:I
new-instance v2, Lcom/instagram/android/fragment/cp;
invoke-direct {v2, p0, p2, p1}, Lcom/instagram/android/fragment/cp;-><init>(Lcom/instagram/android/fragment/cn;Lcom/instagram/android/widget/x;Landroid/view/View;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/cn;Landroid/view/View;Lcom/instagram/android/widget/x;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/cn;->a(Landroid/view/View;Lcom/instagram/android/widget/x;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/cn;Ljava/util/Collection;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/cn;->a(Ljava/util/Collection;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/fragment/cn;)Ljava/util/List;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/fragment/cn;->d()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private d()Ljava/util/List;
.registers 9
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cn;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/widget/x;->b(Landroid/content/Context;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/x;
new-instance v3, Lcom/instagram/ui/menu/b;
invoke-virtual {v0}, Lcom/instagram/android/widget/x;->a()I
move-result v4
invoke-virtual {v0}, Lcom/instagram/android/widget/x;->b()I
move-result v5
invoke-virtual {v0}, Lcom/instagram/android/widget/x;->c()Z
move-result v6
new-instance v7, Lcom/instagram/android/fragment/co;
invoke-direct {v7, p0, v0}, Lcom/instagram/android/fragment/co;-><init>(Lcom/instagram/android/fragment/cn;Lcom/instagram/android/widget/x;)V
invoke-direct {v3, v4, v5, v6, v7}, Lcom/instagram/ui/menu/b;-><init>(IIZLandroid/view/View$OnClickListener;)V
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_37
return-object v1
.end method
.method public final E()V
.registers 2
invoke-super {p0}, Lcom/instagram/ui/menu/e;->E()V
invoke-direct {p0}, Lcom/instagram/android/fragment/cn;->d()Ljava/util/List;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cn;->a(Ljava/util/Collection;)V
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
if-eq p2, v0, :cond_4
:goto_3
return-void
:cond_4
packed-switch p1, :pswitch_data_16
goto :goto_3
:pswitch_8
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/cn;->i:Lcom/instagram/android/fragment/cq;
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
goto :goto_3
nop
:pswitch_data_16
.packed-switch 0x7f99
:pswitch_8
.end packed-switch
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/instagram/ui/menu/e;->a(Landroid/view/View;Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->linked_accounts:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "sharing_settings"
return-object v0
.end method