.class public Lcom/twidroid/fragments/e/ai;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.field public static final d:Ljava/lang/String; = "EXTRA_LIST_URI"
.field public static final e:Ljava/lang/String; = "BROADCAST_LIST_USERS_MODIFIED"
.field private static final f:Ljava/lang/String; = "SingleListFragment"
.field private g:Ljava/lang/String;
.field private h:Lcom/twidroid/model/twitter/d;
.field private i:Z
.field private j:Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
new-instance v0, Lcom/twidroid/fragments/e/ai$1;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ai$1;-><init>(Lcom/twidroid/fragments/e/ai;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/ai;->j:Landroid/content/BroadcastReceiver;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
new-instance v0, Lcom/twidroid/fragments/e/ai$1;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ai$1;-><init>(Lcom/twidroid/fragments/e/ai;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/ai;->j:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lcom/twidroid/fragments/e/ai;->a:Lcom/twidroid/model/twitter/c;
new-instance v0, Lcom/twidroid/model/twitter/d;
const/4 v1, 0x1
invoke-direct {v0, p2, v1}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;Z)V
iput-object v0, p0, Lcom/twidroid/fragments/e/ai;->h:Lcom/twidroid/model/twitter/d;
iput-object p2, p0, Lcom/twidroid/fragments/e/ai;->g:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/ai;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->g:Ljava/lang/String;
return-object v0
.end method
.method private a(Landroid/os/Bundle;)V
.registers 3
if-eqz p1, :cond_a
const-string v0, "mListUri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/ai;->g:Ljava/lang/String;
:cond_a
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/ai;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/ai;->i:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/ai;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/ai;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/ai;->l:Z
return p1
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/ai;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/ai;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private x()V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
if-eqz v0, :cond_b
:try_start_8
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V
:goto_b
:cond_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
goto :goto_b
.end method
.method protected b()V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->d()V
return-void
.end method
.method public b(Z)V
.registers 7
const-wide/16 v1, 0x0
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
new-instance v3, Lcom/twidroid/fragments/e/ak;
invoke-direct {v3, v4}, Lcom/twidroid/fragments/e/ak;-><init>(Lcom/twidroid/fragments/e/ai$1;)V
if-eqz p1, :cond_3b
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->d()Ljava/lang/Long;
move-result-object v0
if-eqz v0, :cond_39
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
:goto_1d
iput-wide v0, v3, Lcom/twidroid/fragments/e/ak;->c:J
:try_start_1f
:goto_1f
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->h:Lcom/twidroid/model/twitter/d;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->h:Lcom/twidroid/model/twitter/d;
:goto_25
iput-object v0, v3, Lcom/twidroid/fragments/e/ak;->a:Lcom/twidroid/model/twitter/d;
iput-boolean p1, v3, Lcom/twidroid/fragments/e/ak;->b:Z
new-instance v0, Lcom/twidroid/fragments/e/aj;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/e/aj;-><init>(Lcom/twidroid/fragments/e/ai;Lcom/twidroid/fragments/e/ai$1;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/fragments/e/ak;
const/4 v2, 0x0
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/aj;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_38
:goto_38
:try_end_38
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_38} :catch_51
return-void
:cond_39
move-wide v0, v1
goto :goto_1d
:cond_3b
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->e()Ljava/lang/Long;
move-result-object v0
if-eqz v0, :cond_45
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v1
:cond_45
iput-wide v1, v3, Lcom/twidroid/fragments/e/ak;->c:J
goto :goto_1f
:cond_48
:try_start_48
new-instance v0, Lcom/twidroid/model/twitter/d;
iget-object v1, p0, Lcom/twidroid/fragments/e/ai;->g:Ljava/lang/String;
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;Z)V
:try_end_50
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_51
goto :goto_25
:catch_51
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_38
const-string v1, "SingleListFragment"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_38
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ai;->b(Z)V
return-void
.end method
.method protected e()V
.registers 5
new-instance v0, Lcom/twidroid/ui/a/am;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ai;->b:Ljava/util/List;
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iget-object v1, p0, Lcom/twidroid/fragments/e/ai;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ai;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->N()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->b()V
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 5
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onAttach(Landroid/app/Activity;)V
const-string v0, "SingleListFragment"
const-string v1, "Register broadcast receiver for single list"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "BROADCAST_LIST_USERS_MODIFIED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ai;->j:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/ai; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_9
:goto_5
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ai;->a(Landroid/os/Bundle;)V
const-string v1, " - Lcom/twidroid/fragments/e/ai; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->getArguments()Landroid/os/Bundle;
move-result-object p1
goto :goto_5
.end method
.method public onDetach()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onDetach()V
const-string v0, "SingleListFragment"
const-string v1, "Unregister broadcast receiver for single list"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/ai;->j:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/ai; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V
iget-boolean v0, p0, Lcom/twidroid/fragments/e/ai;->i:Z
if-eqz v0, :cond_13
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->N()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/ai;->i:Z
invoke-direct {p0}, Lcom/twidroid/fragments/e/ai;->x()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ai;->b()V
:cond_13
const-string v1, " - Lcom/twidroid/fragments/e/ai; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/ai; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ai;->g:Ljava/lang/String;
if-eqz v0, :cond_e
const-string v0, "mListUri"
iget-object v1, p0, Lcom/twidroid/fragments/e/ai;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
const-string v1, " - Lcom/twidroid/fragments/e/ai; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method