.class public final Lcom/facebook/internal/ae;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/facebook/Session;
.field private final b:Lcom/facebook/ae;
.field private final c:Landroid/content/BroadcastReceiver;
.field private final d:Landroid/support/v4/content/n;
.field private e:Z
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ae;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/facebook/internal/ae;->e:Z
new-instance v0, Lcom/facebook/internal/ag;
invoke-direct {v0, p0, p2}, Lcom/facebook/internal/ag;-><init>(Lcom/facebook/internal/ae;Lcom/facebook/ae;)V
iput-object v0, p0, Lcom/facebook/internal/ae;->b:Lcom/facebook/ae;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
new-instance v0, Lcom/facebook/internal/af;
invoke-direct {v0, p0, v1}, Lcom/facebook/internal/af;-><init>(Lcom/facebook/internal/ae;B)V
iput-object v0, p0, Lcom/facebook/internal/ae;->c:Landroid/content/BroadcastReceiver;
invoke-static {p1}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;
move-result-object v0
iput-object v0, p0, Lcom/facebook/internal/ae;->d:Landroid/support/v4/content/n;
return-void
.end method
.method static synthetic a(Lcom/facebook/internal/ae;)Lcom/facebook/ae;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/ae;->b:Lcom/facebook/ae;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/internal/ae;)Lcom/facebook/Session;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
return-object v0
.end method
.method private g()V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/internal/ae;->d:Landroid/support/v4/content/n;
iget-object v2, p0, Lcom/facebook/internal/ae;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final a()Lcom/facebook/Session;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
if-nez v0, :cond_9
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
goto :goto_8
.end method
.method public final b()Lcom/facebook/Session;
.registers 3
invoke-virtual {p0}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/facebook/Session;->a()Z
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
iget-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
iget-object v1, p0, Lcom/facebook/internal/ae;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->b(Lcom/facebook/ae;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
invoke-direct {p0}, Lcom/facebook/internal/ae;->g()V
invoke-virtual {p0}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {p0}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;
move-result-object v0
iget-object v1, p0, Lcom/facebook/internal/ae;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_20
return-void
.end method
.method public final d()V
.registers 3
iget-boolean v0, p0, Lcom/facebook/internal/ae;->e:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/facebook/internal/ae;->a:Lcom/facebook/Session;
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/facebook/internal/ae;->g()V
:cond_c
invoke-virtual {p0}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;
move-result-object v0
iget-object v1, p0, Lcom/facebook/internal/ae;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_1b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/internal/ae;->e:Z
goto :goto_4
.end method
.method public final e()V
.registers 3
iget-boolean v0, p0, Lcom/facebook/internal/ae;->e:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/facebook/internal/ae;->a()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_10
iget-object v1, p0, Lcom/facebook/internal/ae;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->b(Lcom/facebook/ae;)V
:cond_10
iget-object v0, p0, Lcom/facebook/internal/ae;->d:Landroid/support/v4/content/n;
iget-object v1, p0, Lcom/facebook/internal/ae;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/internal/ae;->e:Z
goto :goto_4
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/ae;->e:Z
return v0
.end method