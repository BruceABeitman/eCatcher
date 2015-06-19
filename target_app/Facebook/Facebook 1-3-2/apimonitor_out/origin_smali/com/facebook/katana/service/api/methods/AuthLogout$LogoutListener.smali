.class Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;
.super Ljava/lang/Object;
.source "AuthLogout.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/AuthLogout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/AuthLogout;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/AuthLogout;Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogout;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    new-instance v0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$LogoutListener;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogout;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->execute()V

    return-void
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 6

    return-void
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    return-void
.end method
