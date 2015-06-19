.class public Lcom/bbm/ui/c/ff;
.super Landroid/app/Fragment;
.source "ProfileDetailsFragment.java"
.field protected final a:Lcom/bbm/d/a;
.field private b:Ljava/lang/String;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Lcom/bbm/ui/LocationTimezoneContainer;
.field private final f:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/ff;->a:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/c/fg;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/fg;-><init>(Lcom/bbm/ui/c/ff;)V
iput-object v0, p0, Lcom/bbm/ui/c/ff;->f:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/ff;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ff;->c:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/c/ff;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ff;->d:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/c/ff;)Lcom/bbm/ui/LocationTimezoneContainer;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ff;->e:Lcom/bbm/ui/LocationTimezoneContainer;
return-object v0
.end method
.method protected final a()Lcom/bbm/d/gp;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/c/ff;->a:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/c/ff;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
return-object v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const-string v0, "onCreateView"
const-class v1, Lcom/bbm/ui/c/ff;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0}, Lcom/bbm/ui/c/ff;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/ff;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/c/ff;->b:Ljava/lang/String;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/c/ff;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_27
:cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ProfileActivity invoked without user uri"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
const v0, 0x7f030093
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a03b1
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/c/ff;->c:Landroid/widget/TextView;
const v0, 0x7f0a03b4
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/c/ff;->d:Landroid/widget/TextView;
const v0, 0x7f0a03b5
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/LocationTimezoneContainer;
iput-object v0, p0, Lcom/bbm/ui/c/ff;->e:Lcom/bbm/ui/LocationTimezoneContainer;
return-object v1
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ff; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/ff;->f:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
const-string v0, "onPause"
const-class v1, Lcom/bbm/ui/c/ff;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v1, " - Lcom/bbm/ui/c/ff; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ff; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/ff;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/ff;->f:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/c/ff; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method