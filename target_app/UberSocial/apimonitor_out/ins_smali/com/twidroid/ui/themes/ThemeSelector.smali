.class public Lcom/twidroid/ui/themes/ThemeSelector;
.super Landroid/app/ListActivity;
.source "SourceFile"
.field private a:Lcom/twidroid/UberSocialApplication;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/ui/themes/ThemeSelector; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/themes/ThemeSelector;->a:Lcom/twidroid/UberSocialApplication;
const v0, 0x7f0c0238
invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/ThemeSelector;->setTitle(I)V
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030083
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/ui/themes/ThemeSelector;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/twidroid/ui/themes/ThemeSelector;->getListView()Landroid/widget/ListView;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V
new-instance v1, Lcom/twidroid/ui/themes/ThemeSelector$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/themes/ThemeSelector$1;-><init>(Lcom/twidroid/ui/themes/ThemeSelector;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/twidroid/ui/a/ai;
iget-object v1, p0, Lcom/twidroid/ui/themes/ThemeSelector;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v1
iget-object v3, p0, Lcom/twidroid/ui/themes/ThemeSelector;->a:Lcom/twidroid/UberSocialApplication;
invoke-direct {v0, p0, v1, v2, v3}, Lcom/twidroid/ui/a/ai;-><init>(Landroid/content/Context;JLcom/twidroid/UberSocialApplication;)V
invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/ThemeSelector;->setListAdapter(Landroid/widget/ListAdapter;)V
const-string v1, " - Lcom/twidroid/ui/themes/ThemeSelector; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method