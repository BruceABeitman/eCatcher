.class public Lcom/bbm/ui/c/cz;
.super Landroid/app/Fragment;
.source "GroupUpdatesFragment.java"
.field private static final a:Lcom/bbm/ui/e/ah;
.field private static final b:Lcom/bbm/ui/e/ai;
.field private static final c:Lcom/bbm/ui/e/ag;
.field private static final d:Lcom/bbm/ui/e/af;
.field private static final e:Lcom/bbm/ui/e/ae;
.field private f:Ljava/lang/String;
.field private final g:Lcom/bbm/g/am;
.field private h:Landroid/widget/ListView;
.field private i:Lcom/bbm/ui/ct;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/ui/e/ah;
invoke-direct {v0}, Lcom/bbm/ui/e/ah;-><init>()V
sput-object v0, Lcom/bbm/ui/c/cz;->a:Lcom/bbm/ui/e/ah;
new-instance v0, Lcom/bbm/ui/e/ai;
invoke-direct {v0}, Lcom/bbm/ui/e/ai;-><init>()V
sput-object v0, Lcom/bbm/ui/c/cz;->b:Lcom/bbm/ui/e/ai;
new-instance v0, Lcom/bbm/ui/e/ag;
invoke-direct {v0}, Lcom/bbm/ui/e/ag;-><init>()V
sput-object v0, Lcom/bbm/ui/c/cz;->c:Lcom/bbm/ui/e/ag;
new-instance v0, Lcom/bbm/ui/e/af;
invoke-direct {v0}, Lcom/bbm/ui/e/af;-><init>()V
sput-object v0, Lcom/bbm/ui/c/cz;->d:Lcom/bbm/ui/e/af;
new-instance v0, Lcom/bbm/ui/e/ae;
invoke-direct {v0}, Lcom/bbm/ui/e/ae;-><init>()V
sput-object v0, Lcom/bbm/ui/c/cz;->e:Lcom/bbm/ui/e/ae;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/c/cz;->f:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/cz;->g:Lcom/bbm/g/am;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/cz;)Lcom/bbm/ui/ct;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
return-object v0
.end method
.method static synthetic a()Lcom/bbm/ui/e/ah;
.registers 1
sget-object v0, Lcom/bbm/ui/c/cz;->a:Lcom/bbm/ui/e/ah;
return-object v0
.end method
.method static synthetic b()Lcom/bbm/ui/e/ai;
.registers 1
sget-object v0, Lcom/bbm/ui/c/cz;->b:Lcom/bbm/ui/e/ai;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/cz;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/cz;->g:Lcom/bbm/g/am;
return-object v0
.end method
.method static synthetic c()Lcom/bbm/ui/e/ag;
.registers 1
sget-object v0, Lcom/bbm/ui/c/cz;->c:Lcom/bbm/ui/e/ag;
return-object v0
.end method
.method static synthetic d()Lcom/bbm/ui/e/af;
.registers 1
sget-object v0, Lcom/bbm/ui/c/cz;->d:Lcom/bbm/ui/e/af;
return-object v0
.end method
.method static synthetic e()Lcom/bbm/ui/e/ae;
.registers 1
sget-object v0, Lcom/bbm/ui/c/cz;->e:Lcom/bbm/ui/e/ae;
return-object v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 11
const v0, 0x7f03008b
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const-string v0, "onCreateView"
const-class v2, Lcom/bbm/ui/c/cz;
invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0}, Lcom/bbm/ui/c/cz;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_35
invoke-virtual {p0}, Lcom/bbm/ui/c/cz;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v2, "groupUri"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_1f
iput-object v0, p0, Lcom/bbm/ui/c/cz;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/c/cz;->f:Ljava/lang/String;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/bbm/ui/c/cz;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_38
:cond_2d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "GroupUpdatesFragment invoked without group uri"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_35
const-string v0, ""
goto :goto_1f
:cond_38
const v0, 0x7f0a0393
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/c/cz;->h:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/ct;
invoke-virtual {p0}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;
move-result-object v2
new-instance v3, Lcom/bbm/ui/c/dc;
invoke-virtual {p0}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;
move-result-object v4
iget-object v5, p0, Lcom/bbm/ui/c/cz;->f:Ljava/lang/String;
iget-object v6, p0, Lcom/bbm/ui/c/cz;->g:Lcom/bbm/g/am;
invoke-virtual {v6, v5}, Lcom/bbm/g/am;->c(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v5
new-instance v6, Lcom/bbm/ui/c/db;
invoke-direct {v6, p0, v5}, Lcom/bbm/ui/c/db;-><init>(Lcom/bbm/ui/c/cz;Lcom/bbm/j/r;)V
invoke-direct {v3, p0, v4, v6}, Lcom/bbm/ui/c/dc;-><init>(Lcom/bbm/ui/c/cz;Landroid/content/Context;Lcom/bbm/j/j;)V
invoke-direct {v0, v2, v3}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
iget-object v0, p0, Lcom/bbm/ui/c/cz;->h:Landroid/widget/ListView;
iget-object v2, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/c/cz;->h:Landroid/widget/ListView;
const v2, 0x7f0a0394
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
iget-object v0, p0, Lcom/bbm/ui/c/cz;->h:Landroid/widget/ListView;
new-instance v2, Lcom/bbm/ui/c/da;
invoke-direct {v2, p0}, Lcom/bbm/ui/c/da;-><init>(Lcom/bbm/ui/c/cz;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-object v1
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/cz; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
:cond_c
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/c/cz; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/cz; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v0, "onPause"
const-class v1, Lcom/bbm/ui/c/cz;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V
const-string v1, " - Lcom/bbm/ui/c/cz; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/cz; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/cz;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/cz;->i:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
const-string v1, " - Lcom/bbm/ui/c/cz; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method