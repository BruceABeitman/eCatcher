.class public Lcom/twidroid/fragments/whatshotfragments/k;
.super Lcom/twidroid/fragments/whatshotfragments/l;
.source "SourceFile"
.field private a:Lcom/twidroid/UberSocialApplication;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/l;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/l;-><init>()V
iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/k;->a:Lcom/twidroid/UberSocialApplication;
return-void
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/k;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/k;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V
return-void
.end method
.method public S()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_9
const-string v0, ""
:goto_8
return-object v0
:cond_9
const v0, 0x7f0c0136
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/k;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method protected b()V
.registers 1
return-void
.end method
.method public d()V
.registers 1
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/fragments/whatshotfragments/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/l;->onCreate(Landroid/os/Bundle;)V
const-string v0, "TEST"
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/k;->f(Ljava/lang/String;)Lcom/twidroid/fragments/base/o;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030083
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/twidroid/fragments/whatshotfragments/k$1;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/whatshotfragments/k$1;-><init>(Lcom/twidroid/fragments/whatshotfragments/k;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/twidroid/fragments/whatshotfragments/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 8
const/high16 v1, -0x100
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/l;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/k;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/k;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
new-instance v0, Lcom/twidroid/ui/a/ai;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v2
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/ui/a/ai;-><init>(Landroid/content/Context;JLcom/twidroid/UberSocialApplication;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/k;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method