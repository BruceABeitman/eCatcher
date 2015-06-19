.class public final Lcom/bbm/setup/s;
.super Lcom/bbm/ui/activities/ajz;
.source "SetupActivityLifeCycleListener.java"
.field public static a:Ljava/lang/String;
.field private b:Landroid/app/Activity;
.field private c:Z
.field private final d:Lcom/bbm/j/k;
.method static constructor <clinit>()V
.registers 1
const-string v0, "com.bbm.check_if_setup_is_required"
sput-object v0, Lcom/bbm/setup/s;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/setup/s;->c:Z
new-instance v0, Lcom/bbm/setup/t;
invoke-direct {v0, p0}, Lcom/bbm/setup/t;-><init>(Lcom/bbm/setup/s;)V
iput-object v0, p0, Lcom/bbm/setup/s;->d:Lcom/bbm/j/k;
iput-object p1, p0, Lcom/bbm/setup/s;->b:Landroid/app/Activity;
return-void
.end method
.method static synthetic a(Lcom/bbm/setup/s;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/bbm/setup/s;->b:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/setup/s;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/setup/s;->c:Z
return v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/setup/s;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
return-void
.end method
.method public final a(Lcom/bbm/ui/activities/ajy;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/s;->b:Landroid/app/Activity;
return-void
.end method
.method public final a(Lcom/bbm/ui/activities/ajy;II)V
.registers 7
const/4 v2, 0x0
const-string v0, "SALCL onActivityResult"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/16 v0, 0xffd
if-ne p2, v0, :cond_2f
const-string v0, "SALCL REQUEST_CODE_NEXT_ACTIVITY"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-boolean v2, p0, Lcom/bbm/setup/s;->c:Z
const/16 v0, 0xca
if-eq p3, v0, :cond_30
const-string v0, "SALCL RESULT_SUCCESS"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "Exiting activity, triggered by setup"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p1}, Lcom/bbm/ui/activities/ajy;->finish()V
invoke-virtual {p1, v2, v2}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V
:goto_2f
:cond_2f
return-void
:cond_30
const-string v0, "SALCL failure case"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "Returning to lifecycle listener from setup"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/setup/s;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
goto :goto_2f
.end method
.method public final a(Lcom/bbm/ui/activities/ajy;Landroid/os/Bundle;)V
.registers 6
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/bbm/ui/activities/ajz;->a(Lcom/bbm/ui/activities/ajy;Landroid/os/Bundle;)V
const-string v0, "SALCL onRestoreInstanceState"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "SetupActivityLifeCycleListenerWaitingToOpen"
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/setup/s;->c:Z
return-void
.end method
.method public final b(Lcom/bbm/ui/activities/ajy;)V
.registers 5
const/4 v2, 0x0
const-string v0, "SALCL onActivityResumed"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/bbm/setup/s;->c:Z
if-nez v0, :cond_18
const-string v0, "SALCL activating monitor"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/setup/s;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
:cond_18
return-void
.end method
.method public final b(Lcom/bbm/ui/activities/ajy;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/bbm/ui/activities/ajz;->b(Lcom/bbm/ui/activities/ajy;Landroid/os/Bundle;)V
const-string v0, "SALCL onSaveInstanceState"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "SetupActivityLifeCycleListenerWaitingToOpen"
iget-boolean v1, p0, Lcom/bbm/setup/s;->c:Z
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method