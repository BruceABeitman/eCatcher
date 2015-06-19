.class final Lcom/blackberry/ids/ManageIdentityListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ManageIdentityListener.java"


# instance fields
.field final synthetic a:Lcom/blackberry/ids/IManageIdentityCallback;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/blackberry/ids/IFailureCallback;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/IManageIdentityCallback;Ljava/lang/Runnable;Lcom/blackberry/ids/IFailureCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->a:Lcom/blackberry/ids/IManageIdentityCallback;

    iput-object p2, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->c:Lcom/blackberry/ids/IFailureCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.blackberry.ids.MANAGE_IDENTITY_SUCCEEDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "ManageIdentityListener received MANAGE_IDENTITY_SUCCEEDED request_id=%d"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "com.blackberry.ids.REQUEST_ID"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->a:Lcom/blackberry/ids/IManageIdentityCallback;

    const-string v2, "com.blackberry.ids.REQUEST_ID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.blackberry.ids.LEVEL"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/blackberry/ids/IManageIdentityCallback;->call(II)V

    iget-object v1, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_38
    const-string v1, "com.blackberry.ids.MANAGE_IDENTITY_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "ManageIdentityListener received MANAGE_IDENTITY_FAILED request_id=%d"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "com.blackberry.ids.REQUEST_ID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->c:Lcom/blackberry/ids/IFailureCallback;

    const-string v1, "com.blackberry.ids.REQUEST_ID"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.blackberry.ids.RESULT"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.blackberry.ids.INFO"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/blackberry/ids/ManageIdentityListener$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6f
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "ManageIdentityListener unregistered"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
