.class public Lcom/twidroid/ac;
.super Landroid/app/Dialog;
.source "SourceFile"
.field  a:Landroid/widget/LinearLayout;
.field final synthetic b:Lcom/twidroid/UberSocialProfile;
.method public constructor <init>(Lcom/twidroid/UberSocialProfile;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/ac; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030031
invoke-virtual {p0, v0}, Lcom/twidroid/ac;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
const v1, 0x7f0c00e8
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/ac;->setTitle(Ljava/lang/CharSequence;)V
const v0, 0x7f090098
invoke-virtual {p0, v0}, Lcom/twidroid/ac;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
const v2, 0x7f0c00e7
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/twidroid/ac; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 7
const-string v1, " + Lcom/twidroid/ac; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v0, 0x7f090074
invoke-virtual {p0, v0}, Lcom/twidroid/ac;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/ac$1;
invoke-direct {v1, p0}, Lcom/twidroid/ac$1;-><init>(Lcom/twidroid/ac;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f090073
invoke-virtual {p0, v0}, Lcom/twidroid/ac;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/ac;->a:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/twidroid/ac;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
iget-object v0, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->t:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_29
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_82
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
new-instance v3, Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
invoke-direct {v3, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->u:Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
const-string v1, "com.twidroid.activity.UberSocialProfile"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "ListMemberDialog ::onStart >> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ac;->a:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
goto :goto_29
:cond_82
const v0, 0x7f09007c
invoke-virtual {p0, v0}, Lcom/twidroid/ac;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget-object v1, p0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
const v2, 0x7f0c015b
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
new-instance v1, Lcom/twidroid/ac$2;
invoke-direct {v1, p0}, Lcom/twidroid/ac$2;-><init>(Lcom/twidroid/ac;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/twidroid/ac; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method