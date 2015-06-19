.class public final Lcom/facebook/g/q;
.super Ljava/lang/Object;
.source "SessionTracker.java"
.field private a:Lcom/facebook/bo;
.field private final b:Lcom/facebook/cc;
.field private final c:Landroid/content/BroadcastReceiver;
.field private final d:Landroid/support/v4/a/e;
.field private e:Z
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/cc;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/facebook/g/q;->e:Z
new-instance v0, Lcom/facebook/g/s;
invoke-direct {v0, p0, p2}, Lcom/facebook/g/s;-><init>(Lcom/facebook/g/q;Lcom/facebook/cc;)V
iput-object v0, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
new-instance v0, Lcom/facebook/g/r;
invoke-direct {v0, p0, v1}, Lcom/facebook/g/r;-><init>(Lcom/facebook/g/q;B)V
iput-object v0, p0, Lcom/facebook/g/q;->c:Landroid/content/BroadcastReceiver;
invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iput-object v0, p0, Lcom/facebook/g/q;->d:Landroid/support/v4/a/e;
return-void
.end method
.method static synthetic a(Lcom/facebook/g/q;)Lcom/facebook/cc;
.registers 2
iget-object v0, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/g/q;)Lcom/facebook/bo;
.registers 2
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
return-object v0
.end method
.method private f()V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/g/q;->d:Landroid/support/v4/a/e;
iget-object v2, p0, Lcom/facebook/g/q;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final a()Lcom/facebook/bo;
.registers 2
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
if-nez v0, :cond_9
invoke-static {}, Lcom/facebook/bo;->g()Lcom/facebook/bo;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
goto :goto_8
.end method
.method public final a(Lcom/facebook/bo;)V
.registers 4
if-nez p1, :cond_23
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->b(Lcom/facebook/cc;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
invoke-direct {p0}, Lcom/facebook/g/q;->f()V
invoke-virtual {p0}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v0
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V
:goto_22
:cond_22
return-void
:cond_23
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
if-nez v0, :cond_43
invoke-static {}, Lcom/facebook/bo;->g()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_32
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->b(Lcom/facebook/cc;)V
:cond_32
iget-object v0, p0, Lcom/facebook/g/q;->d:Landroid/support/v4/a/e;
iget-object v1, p0, Lcom/facebook/g/q;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
:goto_39
iput-object p1, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V
goto :goto_22
:cond_43
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->b(Lcom/facebook/cc;)V
goto :goto_39
.end method
.method public final b()Lcom/facebook/bo;
.registers 3
invoke-virtual {p0}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/facebook/bo;->a()Z
move-result v1
if-eqz v1, :cond_d
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public final c()V
.registers 3
iget-boolean v0, p0, Lcom/facebook/g/q;->e:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/facebook/g/q;->a:Lcom/facebook/bo;
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/facebook/g/q;->f()V
:cond_c
invoke-virtual {p0}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v0
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V
:cond_1b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/g/q;->e:Z
goto :goto_4
.end method
.method public final d()V
.registers 3
iget-boolean v0, p0, Lcom/facebook/g/q;->e:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/facebook/g/q;->a()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_10
iget-object v1, p0, Lcom/facebook/g/q;->b:Lcom/facebook/cc;
invoke-virtual {v0, v1}, Lcom/facebook/bo;->b(Lcom/facebook/cc;)V
:cond_10
iget-object v0, p0, Lcom/facebook/g/q;->d:Landroid/support/v4/a/e;
iget-object v1, p0, Lcom/facebook/g/q;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/g/q;->e:Z
goto :goto_4
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/g/q;->e:Z
return v0
.end method