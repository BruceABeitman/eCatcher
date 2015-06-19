.class public Lcom/bbm/ui/activities/LegalActivity;
.super Lcom/bbm/ui/activities/ev;
.source "LegalActivity.java"
.field private final a:Landroid/view/View$OnClickListener;
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/bbm/ui/activities/SettingsActivity;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V
new-instance v0, Lcom/bbm/ui/activities/vc;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vc;-><init>(Lcom/bbm/ui/activities/LegalActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/LegalActivity;->a:Landroid/view/View$OnClickListener;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/bbm/ui/activities/LegalActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03003b
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/LegalActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/LegalActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f07000b
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v5
invoke-virtual {p0}, Lcom/bbm/ui/activities/LegalActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f07000c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v6
const v0, 0x7f0a021f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/LegalActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
if-eqz v5, :cond_6b
if-eqz v6, :cond_6b
array-length v1, v5
if-lez v1, :cond_6b
array-length v1, v6
if-lez v1, :cond_6b
move v3, v4
:goto_34
array-length v1, v5
if-ge v3, v1, :cond_6b
array-length v1, v6
if-ge v3, v1, :cond_6b
const-string v1, "layout_inflater"
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/LegalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/LayoutInflater;
const v2, 0x7f03011f
const/4 v7, 0x0
invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
const v2, 0x7f0a0579
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
aget-object v7, v5, v3
invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
aget-object v7, v6, v3
invoke-virtual {v2, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/bbm/ui/activities/LegalActivity;->a:Landroid/view/View$OnClickListener;
invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_34
:cond_6b
invoke-virtual {p0}, Lcom/bbm/ui/activities/LegalActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
const v0, 0x7f030113
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a054e
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/LegalActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e04ca
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/LegalActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
new-instance v1, Lcom/bbm/ui/activities/vd;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/vd;-><init>(Lcom/bbm/ui/activities/LegalActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const-string v1, " - Lcom/bbm/ui/activities/LegalActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/LegalActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/LegalActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/LegalActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
const-string v1, " - Lcom/bbm/ui/activities/LegalActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method