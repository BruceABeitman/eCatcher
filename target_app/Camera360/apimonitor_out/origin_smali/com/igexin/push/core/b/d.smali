.class Lcom/igexin/push/core/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/b/c;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/b/d;->a:Lcom/igexin/push/core/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    invoke-static {}, Lcom/igexin/push/core/b/b;->a()Lcom/igexin/push/core/b/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/b/b;->a(Ljava/lang/String;)Lcom/igexin/push/core/b/a;

    move-result-object v0

    invoke-static {p2}, Lcom/igexin/sdk/aidl/a;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/ICACallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/b/a;->a(Lcom/igexin/sdk/aidl/ICACallback;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "pkgname"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/igexin/push/core/b/d;->a:Lcom/igexin/push/core/b/c;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/igexin/push/core/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "connected"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4a
    sget v2, Lcom/igexin/push/core/a;->d:I

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z

    return-void

    :cond_58
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "disconnected"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4a

    :cond_62
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "disconnected"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/b/b;->a()Lcom/igexin/push/core/b/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/b/b;->a(Ljava/lang/String;)Lcom/igexin/push/core/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/b/a;->a(Lcom/igexin/sdk/aidl/ICACallback;)V

    return-void
.end method
