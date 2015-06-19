.class public abstract Lcom/facebook/internal/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field private final a:Landroid/content/Context;
.field private final b:Landroid/os/Handler;
.field private c:Lcom/facebook/internal/ac;
.field private d:Z
.field private e:Landroid/os/Messenger;
.field private f:I
.field private g:I
.field private final h:Ljava/lang/String;
.field private final i:I
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_a
move-object p1, v0
:cond_a
iput-object p1, p0, Lcom/facebook/internal/ab;->a:Landroid/content/Context;
const/high16 v0, 0x1
iput v0, p0, Lcom/facebook/internal/ab;->f:I
const v0, 0x10001
iput v0, p0, Lcom/facebook/internal/ab;->g:I
iput-object p2, p0, Lcom/facebook/internal/ab;->h:Ljava/lang/String;
const v0, 0x133060d
iput v0, p0, Lcom/facebook/internal/ab;->i:I
new-instance v0, Lcom/facebook/internal/ab$1;
invoke-direct {v0, p0}, Lcom/facebook/internal/ab$1;-><init>(Lcom/facebook/internal/ab;)V
iput-object v0, p0, Lcom/facebook/internal/ab;->b:Landroid/os/Handler;
return-void
.end method
.method private a(Landroid/os/Bundle;)V
.registers 3
iget-boolean v0, p0, Lcom/facebook/internal/ab;->d:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/internal/ab;->d:Z
iget-object v0, p0, Lcom/facebook/internal/ab;->c:Lcom/facebook/internal/ac;
if-eqz v0, :cond_4
invoke-interface {v0, p1}, Lcom/facebook/internal/ac;->a(Landroid/os/Bundle;)V
goto :goto_4
.end method
.method protected final a(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
iget v1, p0, Lcom/facebook/internal/ab;->g:I
if-ne v0, v1, :cond_1b
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.facebook.platform.status.ERROR_TYPE"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1c
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/facebook/internal/ab;->a(Landroid/os/Bundle;)V
:goto_16
iget-object v0, p0, Lcom/facebook/internal/ab;->a:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_1b
return-void
:cond_1c
invoke-direct {p0, v0}, Lcom/facebook/internal/ab;->a(Landroid/os/Bundle;)V
goto :goto_16
.end method
.method public final a(Lcom/facebook/internal/ac;)V
.registers 2
iput-object p1, p0, Lcom/facebook/internal/ab;->c:Lcom/facebook/internal/ac;
return-void
.end method
.method public final a()Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/facebook/internal/ab;->d:Z
if-eqz v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/facebook/internal/ab;->a:Landroid/content/Context;
iget v3, p0, Lcom/facebook/internal/ab;->i:I
invoke-static {v2, v3}, Lcom/facebook/internal/w;->a(Landroid/content/Context;I)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_6
iget-object v2, p0, Lcom/facebook/internal/ab;->a:Landroid/content/Context;
invoke-static {v2}, Lcom/facebook/internal/w;->b(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v2
if-eqz v2, :cond_6
iput-boolean v1, p0, Lcom/facebook/internal/ab;->d:Z
iget-object v0, p0, Lcom/facebook/internal/ab;->a:Landroid/content/Context;
invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move v0, v1
goto :goto_6
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/internal/ab;->d:Z
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 7
const/4 v3, 0x0
new-instance v0, Landroid/os/Messenger;
invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
iput-object v0, p0, Lcom/facebook/internal/ab;->e:Landroid/os/Messenger;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "com.facebook.platform.extra.APPLICATION_ID"
iget-object v2, p0, Lcom/facebook/internal/ab;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p0, Lcom/facebook/internal/ab;->f:I
invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
iget v2, p0, Lcom/facebook/internal/ab;->i:I
iput v2, v1, Landroid/os/Message;->arg1:I
invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Messenger;
iget-object v2, p0, Lcom/facebook/internal/ab;->b:Landroid/os/Handler;
invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
:try_start_2a
iget-object v0, p0, Lcom/facebook/internal/ab;->e:Landroid/os/Messenger;
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_2f
:try_end_2f
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_30
return-void
:catch_30
move-exception v0
invoke-direct {p0, v3}, Lcom/facebook/internal/ab;->a(Landroid/os/Bundle;)V
goto :goto_2f
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/internal/ab;->e:Landroid/os/Messenger;
iget-object v0, p0, Lcom/facebook/internal/ab;->a:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
invoke-direct {p0, v1}, Lcom/facebook/internal/ab;->a(Landroid/os/Bundle;)V
return-void
.end method