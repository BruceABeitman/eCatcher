.class Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;
.super Landroid/os/Handler;
.source "FacebookSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

.field private final synthetic val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

.field private final synthetic val$syncResult:Landroid/content/SyncResult;


# direct methods
.method constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    iput-object p2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->val$syncResult:Landroid/content/SyncResult;

    iput-object p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v1}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->val$syncResult:Landroid/content/SyncResult;

    iget-object v5, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;->val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

    move-object v1, p0

    move-object v3, p1

    #calls: Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->messageHandler(Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->access$0(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V

    return-void
.end method
