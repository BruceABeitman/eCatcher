.class Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;
.super Lcom/facebook/katana/UserTask;
.source "AuthLogout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/AuthLogout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAccountDataTask"
.end annotation


# instance fields
.field private final mErrorCode:I

.field private final mEx:Ljava/lang/Exception;

.field private final mReasonPhrase:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/api/methods/AuthLogout;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    sget-object v0, Lcom/facebook/katana/service/api/methods/AuthLogout;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V

    iput p2, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->mErrorCode:I

    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->mReasonPhrase:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->mEx:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    #getter for: Lcom/facebook/katana/service/api/methods/AuthLogout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/service/api/methods/AuthLogout;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->clearPrivateData(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    #getter for: Lcom/facebook/katana/service/api/methods/AuthLogout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/service/api/methods/AuthLogout;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    #getter for: Lcom/facebook/katana/service/api/methods/AuthLogout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/service/api/methods/AuthLogout;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogout;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->removeSessionInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method protected onPostExecute()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    #getter for: Lcom/facebook/katana/service/api/methods/AuthLogout;->mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
    invoke-static {v0}, Lcom/facebook/katana/service/api/methods/AuthLogout;->access$1(Lcom/facebook/katana/service/api/methods/AuthLogout;)Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogout;

    iget v2, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->mErrorCode:I

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->mReasonPhrase:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogout$ClearAccountDataTask;->mEx:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
