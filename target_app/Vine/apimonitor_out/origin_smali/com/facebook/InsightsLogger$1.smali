.class Lcom/facebook/InsightsLogger$1;
.super Ljava/lang/Object;
.source "InsightsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/InsightsLogger;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$parameters:Landroid/os/Bundle;

.field final synthetic val$valueToSum:D


# direct methods
.method constructor <init>(Lcom/facebook/InsightsLogger;Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/InsightsLogger$1;->this$0:Lcom/facebook/InsightsLogger;

    iput-object p2, p0, Lcom/facebook/InsightsLogger$1;->val$eventName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/InsightsLogger$1;->val$valueToSum:D

    iput-object p5, p0, Lcom/facebook/InsightsLogger$1;->val$parameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/facebook/InsightsLogger$1;->val$eventName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/facebook/InsightsLogger$1;->val$valueToSum:D

    iget-object v11, p0, Lcom/facebook/InsightsLogger$1;->val$parameters:Landroid/os/Bundle;

    #calls: Lcom/facebook/InsightsLogger;->buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v11}, Lcom/facebook/InsightsLogger;->access$000(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v5

    const-string v8, "event"

    const-string v9, "CUSTOM_APP_EVENTS"

    invoke-interface {v5, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "custom_events"

    invoke-interface {v5, v8, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/facebook/InsightsLogger$1;->this$0:Lcom/facebook/InsightsLogger;

    #getter for: Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;
    invoke-static {v8}, Lcom/facebook/InsightsLogger;->access$100(Lcom/facebook/InsightsLogger;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->queryAppAttributionSupportAndWait(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_40

    iget-object v8, p0, Lcom/facebook/InsightsLogger$1;->this$0:Lcom/facebook/InsightsLogger;

    #getter for: Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/facebook/InsightsLogger;->access$200(Lcom/facebook/InsightsLogger;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v8, "attribution"

    invoke-interface {v5, v8, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    const-string v8, "%s/activities"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/facebook/InsightsLogger$1;->this$0:Lcom/facebook/InsightsLogger;

    #getter for: Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;
    invoke-static {v10}, Lcom/facebook/InsightsLogger;->access$100(Lcom/facebook/InsightsLogger;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_50
    iget-object v8, p0, Lcom/facebook/InsightsLogger$1;->this$0:Lcom/facebook/InsightsLogger;

    #calls: Lcom/facebook/InsightsLogger;->sessionToLogTo()Lcom/facebook/Session;
    invoke-static {v8}, Lcom/facebook/InsightsLogger;->access$300(Lcom/facebook/InsightsLogger;)Lcom/facebook/Session;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v5, v9}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v7

    const/4 v0, -0x1

    invoke-virtual {v7}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v7}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    const-string v8, "Error publishing Insights event \'%s\'\n  Response: %s\n  Error: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v7}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/facebook/InsightsLogger;->access$400(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_92} :catch_94

    goto/16 :goto_e

    :catch_94
    move-exception v2

    const-string v8, "Insights-exception: "

    invoke-static {v8, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_e
.end method
