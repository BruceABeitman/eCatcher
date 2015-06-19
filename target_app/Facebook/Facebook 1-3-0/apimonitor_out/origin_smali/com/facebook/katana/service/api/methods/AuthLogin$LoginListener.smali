.class Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;
.super Ljava/lang/Object;
.source "AuthLogin.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/AuthLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/AuthLogin;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/AuthLogin;Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogin;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 11

    new-instance v0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;

    iget-object v2, v2, Lcom/facebook/katana/service/api/methods/AuthLogin;->mParams:Ljava/util/Map;

    const-string v3, "email"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->execute()V

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
