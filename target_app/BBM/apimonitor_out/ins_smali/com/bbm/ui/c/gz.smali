.class public Lcom/bbm/ui/c/gz;
.super Landroid/app/Fragment;
.source "StoreFragment.java"
.field  a:Ljava/util/List;
.field  b:Lcom/bbm/d/b/f;
.field private c:Landroid/content/Context;
.field private d:Lcom/bbm/util/bo;
.field private e:Lcom/bbm/util/b/d;
.field private f:Lcom/bbm/util/bo;
.field private g:Lcom/bbm/ui/c/hh;
.field private h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.field private i:Landroid/view/View;
.field private j:Landroid/view/View;
.field private k:Landroid/view/View;
.field private l:Landroid/widget/Button;
.field private m:Lcom/bbm/l/a;
.field private n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.field private final o:Lcom/bbm/d/a;
.field private p:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
new-instance v0, Lcom/bbm/ui/c/ha;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/ha;-><init>(Lcom/bbm/ui/c/gz;)V
iput-object v0, p0, Lcom/bbm/ui/c/gz;->n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/gz;->o:Lcom/bbm/d/a;
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/c/gz;->p:I
new-instance v0, Lcom/bbm/ui/c/hd;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/hd;-><init>(Lcom/bbm/ui/c/gz;)V
iput-object v0, p0, Lcom/bbm/ui/c/gz;->b:Lcom/bbm/d/b/f;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/gz;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/c/gz;->b()V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/c/gz;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->i:Landroid/view/View;
return-object v0
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/c/gz;->d:Lcom/bbm/util/bo;
new-instance v1, Lcom/bbm/ui/c/hc;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/hc;-><init>(Lcom/bbm/ui/c/gz;)V
invoke-static {v0, v1}, Lcom/bbm/l/c/e;->a(Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/c/gz;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->j:Landroid/view/View;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/c/gz;)I
.registers 3
iget v0, p0, Lcom/bbm/ui/c/gz;->p:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/bbm/ui/c/gz;->p:I
return v0
.end method
.method static synthetic e(Lcom/bbm/ui/c/gz;)I
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/c/gz;->p:I
return v0
.end method
.method static synthetic f(Lcom/bbm/ui/c/gz;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/c/gz;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/c/gz;->p:I
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/c/gz;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->k:Landroid/view/View;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/c/gz;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->l:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/c/gz;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->o:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/c/gz;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->c:Landroid/content/Context;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/c/gz;)Lcom/bbm/util/b/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->e:Lcom/bbm/util/b/d;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/c/gz;)Lcom/bbm/util/bo;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/gz;->f:Lcom/bbm/util/bo;
return-object v0
.end method
.method public final a()V
.registers 3
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/bbm/l/a;->a(Landroid/app/Activity;Z)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 8
const/4 v0, 0x0
const/4 v3, -0x1
invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
const-string v1, "onActivityResult"
const-class v2, Lcom/bbm/ui/c/gz;
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
if-nez p1, :cond_3c
if-ne p2, v3, :cond_3c
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getArguments()Landroid/os/Bundle;
move-result-object v1
if-nez v1, :cond_3d
:goto_16
if-eqz v0, :cond_3c
const-string v0, "purchasedStickerPackId"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_3c
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string v2, "purchasedStickerPackId"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:cond_3c
return-void
:cond_3d
const-string v2, "updateAfterPurchase"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
goto :goto_16
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 13
const v8, 0x15180
const/4 v2, 0x1
const/4 v3, 0x0
const-string v0, "onCreateView"
const-class v1, Lcom/bbm/ui/c/gz;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/gz;->c:Landroid/content/Context;
const v0, 0x7f030098
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v4
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ajy;
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v5
if-eqz v0, :cond_45
move v1, v2
:goto_26
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " must be a WatchedActivity"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v1, v6}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_47
const/4 v0, 0x0
:goto_44
return-object v0
:cond_45
move v1, v3
goto :goto_26
:cond_47
new-instance v1, Lcom/bbm/util/bz;
sget-object v5, Lcom/bbm/util/br;->a:Lcom/bbm/util/br;
invoke-direct {v1, v0, v2, v8, v5}, Lcom/bbm/util/bz;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V
iput-object v1, p0, Lcom/bbm/ui/c/gz;->d:Lcom/bbm/util/bo;
new-instance v1, Lcom/bbm/util/b/f;
invoke-direct {v1}, Lcom/bbm/util/b/f;-><init>()V
const/high16 v5, 0x3e00
invoke-virtual {v1, v5}, Lcom/bbm/util/b/f;->a(F)V
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v5
invoke-static {v1, v5}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/c/gz;->e:Lcom/bbm/util/b/d;
new-instance v1, Lcom/bbm/util/bz;
sget-object v5, Lcom/bbm/util/br;->b:Lcom/bbm/util/br;
invoke-direct {v1, v0, v2, v8, v5}, Lcom/bbm/util/bz;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V
iput-object v1, p0, Lcom/bbm/ui/c/gz;->f:Lcom/bbm/util/bo;
const v0, 0x7f0a03d3
invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/gz;->j:Landroid/view/View;
const v0, 0x7f0a03d4
invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/gz;->k:Landroid/view/View;
const v0, 0x7f0a03d5
invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/c/gz;->l:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/c/gz;->l:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/c/hb;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/hb;-><init>(Lcom/bbm/ui/c/gz;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a03d6
invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iput-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
const v0, 0x7f0a02ea
invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/gz;->i:Landroid/view/View;
new-instance v0, Lcom/bbm/ui/c/hh;
iget-object v1, p0, Lcom/bbm/ui/c/gz;->c:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/c/gz;->b:Lcom/bbm/d/b/f;
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/c/hh;-><init>(Lcom/bbm/ui/c/gz;Landroid/content/Context;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
iget-object v0, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
invoke-virtual {v0}, Lcom/bbm/ui/c/hh;->c()V
iget-object v0, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
invoke-virtual {v0}, Lcom/bbm/ui/c/hh;->d()V
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v1, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setStackFromBottom(Z)V
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setScrollingCacheEnabled(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-static {v0}, Lcom/bbm/l/a;->a(Landroid/content/Context;)Lcom/bbm/l/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/gz;->m:Lcom/bbm/l/a;
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/gz;->n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
invoke-direct {p0}, Lcom/bbm/ui/c/gz;->b()V
move-object v0, v4
goto/16 :goto_44
.end method
.method public onDestroy()V
.registers 4
const-string v1, " + Lcom/bbm/ui/c/gz; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/gz;->m:Lcom/bbm/l/a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/c/gz;->m:Lcom/bbm/l/a;
invoke-static {}, Lcom/bbm/l/a;->b()V
iput-object v2, p0, Lcom/bbm/ui/c/gz;->m:Lcom/bbm/l/a;
:cond_c
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeAllViewsInLayout()V
iget-object v0, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a()V
iput-object v2, p0, Lcom/bbm/ui/c/gz;->h:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
:cond_1c
iget-object v0, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
invoke-virtual {v0}, Lcom/bbm/ui/c/hh;->e()V
iget-object v0, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
invoke-virtual {v0}, Lcom/bbm/ui/c/hh;->f()V
iput-object v2, p0, Lcom/bbm/ui/c/gz;->g:Lcom/bbm/ui/c/hh;
:cond_2c
iget-object v0, p0, Lcom/bbm/ui/c/gz;->e:Lcom/bbm/util/b/d;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/bbm/ui/c/gz;->e:Lcom/bbm/util/b/d;
invoke-virtual {p0}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/b/d;->a(Landroid/app/Activity;)V
iput-object v2, p0, Lcom/bbm/ui/c/gz;->e:Lcom/bbm/util/b/d;
:cond_3b
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/c/gz; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 6
const-string v1, " + Lcom/bbm/ui/c/gz; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "onPause"
const-class v1, Lcom/bbm/ui/c/gz;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "stickers_newest_publish_time"
const-wide/16 v3, 0x0
invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
new-instance v0, Ljava/lang/StringBuilder;
const-string v4, "STICKERS: PREF_STICKERS_LAST_VIEWED_TIME "
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "stickers_last_viewed_time"
invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v1, " - Lcom/bbm/ui/c/gz; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/gz; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/gz;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
const-string v1, " - Lcom/bbm/ui/c/gz; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method