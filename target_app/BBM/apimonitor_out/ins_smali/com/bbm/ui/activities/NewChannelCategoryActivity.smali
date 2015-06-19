.class public Lcom/bbm/ui/activities/NewChannelCategoryActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "NewChannelCategoryActivity.java"
.field private a:Lcom/bbm/ui/HeaderButtonActionBar;
.field private b:Landroid/widget/RelativeLayout;
.field private c:Landroid/widget/ImageView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/ListView;
.field private f:Landroid/view/animation/Animation;
.field private g:Landroid/view/animation/Animation;
.field private h:Landroid/view/animation/AnimationSet;
.field private i:Landroid/view/animation/AnimationSet;
.field private j:Lcom/bbm/ui/activities/yo;
.field private k:Lcom/bbm/ui/activities/yr;
.field private l:Landroid/widget/ListView;
.field private m:Lcom/bbm/j/w;
.field private n:I
.field private o:I
.field private final p:Lcom/bbm/d/a;
.field private final q:Landroid/view/View$OnClickListener;
.field private final r:Landroid/widget/AdapterView$OnItemClickListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->p:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/activities/yh;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yh;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->q:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/activities/yi;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yi;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m:Lcom/bbm/j/w;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/ui/activities/yr;)Lcom/bbm/ui/activities/yr;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->k:Lcom/bbm/ui/activities/yr;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;I)V
.registers 4
iget v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->o:I
if-ltz v0, :cond_11
iget v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->o:I
if-eq v0, p1, :cond_11
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->n:I
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
:cond_11
iput p1, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->o:I
new-instance v0, Lcom/bbm/ui/activities/yj;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yj;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->n:I
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->e:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/view/animation/AnimationSet;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h:Landroid/view/animation/AnimationSet;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->c:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/view/animation/AnimationSet;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i:Landroid/view/animation/AnimationSet;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/activities/yo;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j:Lcom/bbm/ui/activities/yo;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->o:I
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->p:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->d:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->l:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/j/w;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m:Lcom/bbm/j/w;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/activities/yr;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->k:Lcom/bbm/ui/activities/yr;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->n:I
return v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 15
const-string v1, " + Lcom/bbm/ui/activities/NewChannelCategoryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/high16 v1, 0x4334
const/4 v2, 0x0
const/4 v12, -0x1
const/high16 v4, 0x3f00
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->setContentView(I)V
const v0, 0x7f0a015c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b:Landroid/widget/RelativeLayout;
const v0, 0x7f0a015e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->c:Landroid/widget/ImageView;
const v0, 0x7f0a015d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->d:Landroid/widget/TextView;
const v0, 0x7f0a015f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->e:Landroid/widget/ListView;
const v0, 0x7f0a0160
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->l:Landroid/widget/ListView;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->p:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->O()Lcom/bbm/j/w;
move-result-object v0
new-instance v5, Lcom/bbm/ui/activities/yo;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getApplicationContext()Landroid/content/Context;
invoke-direct {v5, p0, v0}, Lcom/bbm/ui/activities/yo;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/r;)V
iput-object v5, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j:Lcom/bbm/ui/activities/yo;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b:Landroid/widget/RelativeLayout;
iget-object v5, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->q:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->e:Landroid/widget/ListView;
iget-object v5, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j:Lcom/bbm/ui/activities/yo;
invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->e:Landroid/widget/ListView;
iget-object v5, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Landroid/view/animation/AnimationSet;
invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h:Landroid/view/animation/AnimationSet;
new-instance v0, Landroid/view/animation/RotateAnimation;
move v5, v3
move v6, v4
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->f:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->f:Landroid/view/animation/Animation;
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h:Landroid/view/animation/AnimationSet;
iget-object v5, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->f:Landroid/view/animation/Animation;
invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h:Landroid/view/animation/AnimationSet;
invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h:Landroid/view/animation/AnimationSet;
const-wide/16 v5, 0xc8
invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V
new-instance v0, Landroid/view/animation/AnimationSet;
invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i:Landroid/view/animation/AnimationSet;
new-instance v5, Landroid/view/animation/RotateAnimation;
move v6, v2
move v7, v1
move v8, v3
move v9, v4
move v10, v3
move v11, v4
invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
iput-object v5, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g:Landroid/view/animation/Animation;
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i:Landroid/view/animation/AnimationSet;
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i:Landroid/view/animation/AnimationSet;
invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i:Landroid/view/animation/AnimationSet;
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0703
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0638
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/yl;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yl;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/ym;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ym;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v12, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "category"
invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->o:I
iget v0, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->o:I
if-ltz v0, :cond_12e
new-instance v0, Lcom/bbm/ui/activities/yn;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yn;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
:goto_12d
const-string v1, " - Lcom/bbm/ui/activities/NewChannelCategoryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12e
iput v12, p0, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->n:I
goto :goto_12d
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewChannelCategoryActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelCategoryActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewChannelCategoryActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelCategoryActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewChannelCategoryActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelCategoryActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method