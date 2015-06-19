.class public Lcom/bbm/ui/activities/GroupPictureShareActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "GroupPictureShareActivity.java"
.field private final a:Lcom/bbm/g/am;
.field private b:Landroid/widget/ListView;
.field private c:Lcom/bbm/ui/activities/sk;
.field private d:Landroid/net/Uri;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->a:Lcom/bbm/g/am;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/setup/s;
invoke-direct {v0, p0}, Lcom/bbm/setup/s;-><init>(Landroid/app/Activity;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupPictureShareActivity;)Lcom/bbm/ui/activities/sk;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->c:Lcom/bbm/ui/activities/sk;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupPictureShareActivity;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->d:Landroid/net/Uri;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureShareActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030032
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "android.intent.extra.STREAM"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->d:Landroid/net/Uri;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->d:Landroid/net/Uri;
if-nez v0, :cond_28
if-eqz p1, :cond_28
const-string v0, "android.intent.extra.STREAM"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->d:Landroid/net/Uri;
:cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->d:Landroid/net/Uri;
if-eqz v0, :cond_36
const/4 v0, 0x1
:goto_2d
const-string v1, "Image URI can not be null"
invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
:goto_35
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureShareActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_36
const/4 v0, 0x0
goto :goto_2d
:cond_38
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e064c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/bbm/ui/activities/sj;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/sj;-><init>(Lcom/bbm/ui/activities/GroupPictureShareActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a01e7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->b:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/activities/sk;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->a:Lcom/bbm/g/am;
invoke-virtual {v1}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/sk;-><init>(Lcom/bbm/ui/activities/GroupPictureShareActivity;Lcom/bbm/j/w;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->c:Lcom/bbm/ui/activities/sk;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->b:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->c:Lcom/bbm/ui/activities/sk;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->b:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/si;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/si;-><init>(Lcom/bbm/ui/activities/GroupPictureShareActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
goto :goto_35
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureShareActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureShareActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupPictureShareActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "android.intent.extra.STREAM"
iget-object v1, p0, Lcom/bbm/ui/activities/GroupPictureShareActivity;->d:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupPictureShareActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method