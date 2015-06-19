.class public Lcom/bbm/ui/activities/SentPendingInviteActivity;
.super Lcom/bbm/ui/activities/ev;
.source "SentPendingInviteActivity.java"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/TextView;
.field private final f:Lcom/bbm/d;
.field private final g:Lcom/bbm/d/a;
.field private h:Lcom/bbm/d/fn;
.field private i:Z
.field private j:Lcom/bbm/ui/ObservingImageView;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:J
.field private o:Lcom/bbm/ui/FooterActionBar;
.field private final p:Lcom/bbm/ui/cj;
.field private final q:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->f:Lcom/bbm/d;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->g:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/activities/afe;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/afe;-><init>(Lcom/bbm/ui/activities/SentPendingInviteActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->p:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/aff;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aff;-><init>(Lcom/bbm/ui/activities/SentPendingInviteActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->q:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SentPendingInviteActivity;Lcom/bbm/d/fn;)Lcom/bbm/d/fn;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->h:Lcom/bbm/d/fn;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SentPendingInviteActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->k:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SentPendingInviteActivity;)V
.registers 5
iget-boolean v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->i:Z
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->f:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->m:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/bo;
invoke-direct {v2, v1}, Lcom/bbm/g/bo;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->finish()V
:goto_15
return-void
:cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->h:Lcom/bbm/d/fn;
iget-object v0, v0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;
sget-object v1, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;
if-ne v0, v1, :cond_4c
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->h:Lcom/bbm/d/fn;
iget-object v0, v0, Lcom/bbm/d/fn;->c:Ljava/lang/String;
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
:try_start_2c
const-string v3, "id"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->g:Lcom/bbm/d/a;
const-string v1, "pendingContact"
invoke-static {v2, v1}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->b()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->finish()V
:try_end_46
.catch Lorg/json/JSONException; {:try_start_2c .. :try_end_46} :catch_47
goto :goto_15
:catch_47
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->c(Ljava/lang/Throwable;)V
goto :goto_15
:cond_4c
invoke-direct {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->b()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->finish()V
goto :goto_15
.end method
.method private b()V
.registers 7
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->i:Z
if-nez v0, :cond_23
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->f:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->h:Lcom/bbm/d/fn;
iget-object v1, v1, Lcom/bbm/d/fn;->c:Ljava/lang/String;
invoke-static {v1, v3, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZZ)Lcom/bbm/d/bi;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const v0, 0x7f0e0581
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x11
const/4 v5, 0x1
move-object v0, p0
move v4, v3
invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
:cond_23
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->i:Z
return v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->k:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->f:Lcom/bbm/d;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->j:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->d:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->l:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->b:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->m:Ljava/lang/String;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->e:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/SentPendingInviteActivity;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->n:J
return-wide v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->a:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Lcom/bbm/d/fn;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->h:Lcom/bbm/d/fn;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/SentPendingInviteActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->c:Landroid/widget/TextView;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/SentPendingInviteActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030053
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "isGroup"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->i:Z
iget-boolean v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->i:Z
if-eqz v1, :cond_3c
const-string v1, "invitee"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->k:Ljava/lang/String;
const-string v1, "group_name"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->l:Ljava/lang/String;
const-string v1, "inviteId"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->m:Ljava/lang/String;
const-string v1, "group_timestamp"
const-wide/16 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->n:J
:cond_3c
invoke-virtual {p0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
const v0, 0x7f030109
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a052e
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->d:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0527
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->j:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0530
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->e:Landroid/widget/TextView;
const v0, 0x7f0a02bb
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->a:Landroid/widget/TextView;
const v0, 0x7f0a02bd
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->b:Landroid/widget/TextView;
const v0, 0x7f0a02bc
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->c:Landroid/widget/TextView;
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->o:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->o:Lcom/bbm/ui/FooterActionBar;
new-instance v2, Lcom/bbm/ui/ActionBarItem;
const v3, 0x7f0202ad
const v4, 0x7f0e0172
invoke-direct {v2, p0, v3, v4}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v2, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->o:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->o:Lcom/bbm/ui/FooterActionBar;
iget-object v2, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->p:Lcom/bbm/ui/cj;
invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const-string v1, " - Lcom/bbm/ui/activities/SentPendingInviteActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SentPendingInviteActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->q:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/SentPendingInviteActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SentPendingInviteActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/SentPendingInviteActivity;->q:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/SentPendingInviteActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method