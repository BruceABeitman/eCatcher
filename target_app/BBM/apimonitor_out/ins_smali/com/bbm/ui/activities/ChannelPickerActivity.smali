.class public Lcom/bbm/ui/activities/ChannelPickerActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "ChannelPickerActivity.java"
.field private a:Landroid/widget/ListView;
.field private b:Lcom/bbm/ui/HeaderButtonActionBar;
.field private final c:Lcom/bbm/d/a;
.field private final d:Lcom/bbm/j/w;
.field private final e:Lcom/bbm/j/r;
.field private f:Lcom/bbm/ui/activities/dg;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->c:Lcom/bbm/d/a;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->c:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->C()Lcom/bbm/j/w;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->d:Lcom/bbm/j/w;
new-instance v0, Lcom/bbm/ui/activities/dd;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dd;-><init>(Lcom/bbm/ui/activities/ChannelPickerActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->e:Lcom/bbm/j/r;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/j/w;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->d:Lcom/bbm/j/w;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->c:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/ui/activities/dg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->f:Lcom/bbm/ui/activities/dg;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/ChannelPickerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030013
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->setContentView(I)V
const v0, 0x7f0a0117
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->a:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/activities/dg;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->e:Lcom/bbm/j/r;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/dg;-><init>(Lcom/bbm/ui/activities/ChannelPickerActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->f:Lcom/bbm/ui/activities/dg;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->a:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->f:Lcom/bbm/ui/activities/dg;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->a:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/de;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/de;-><init>(Lcom/bbm/ui/activities/ChannelPickerActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e01c3
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/df;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/df;-><init>(Lcom/bbm/ui/activities/ChannelPickerActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ChannelPickerActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const-string v1, " - Lcom/bbm/ui/activities/ChannelPickerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelPickerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/ChannelPickerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ChannelPickerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V
const-string v1, " - Lcom/bbm/ui/activities/ChannelPickerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method