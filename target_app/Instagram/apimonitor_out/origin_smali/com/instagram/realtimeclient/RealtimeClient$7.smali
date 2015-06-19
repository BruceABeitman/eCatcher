.class Lcom/instagram/realtimeclient/RealtimeClient$7;
.super Ljava/lang/Object;
.source "RealtimeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeClient;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$7;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    iput-object p2, p0, Lcom/instagram/realtimeclient/RealtimeClient$7;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/instagram/realtimeclient/RealtimeClient;->access$300()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient$7;->val$message:Ljava/lang/String;

    const-class v2, Lcom/instagram/realtimeclient/RealtimeEvent;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeEvent;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient$7;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    #getter for: Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/instagram/realtimeclient/RealtimeClient;->access$500(Lcom/instagram/realtimeclient/RealtimeClient;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/realtimeclient/RealtimeClient$7$1;

    invoke-direct {v2, p0, v0}, Lcom/instagram/realtimeclient/RealtimeClient$7$1;-><init>(Lcom/instagram/realtimeclient/RealtimeClient$7;Lcom/instagram/realtimeclient/RealtimeEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Could not parse message"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method
