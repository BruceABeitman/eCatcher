.class Lcom/facebook/katana/service/api/methods/UserImageDownload$1;
.super Ljava/lang/Object;
.source "UserImageDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/service/api/methods/UserImageDownload;->onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/UserImageDownload;

.field private final synthetic val$fErrorCode:I

.field private final synthetic val$fReasonPhrase:Ljava/lang/String;

.field private final synthetic val$fex:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/api/methods/UserImageDownload;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->this$0:Lcom/facebook/katana/service/api/methods/UserImageDownload;

    iput p2, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->val$fErrorCode:I

    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->val$fReasonPhrase:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->val$fex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->this$0:Lcom/facebook/katana/service/api/methods/UserImageDownload;

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->this$0:Lcom/facebook/katana/service/api/methods/UserImageDownload;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->this$0:Lcom/facebook/katana/service/api/methods/UserImageDownload;

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->this$0:Lcom/facebook/katana/service/api/methods/UserImageDownload;

    iget v2, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->val$fErrorCode:I

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->val$fReasonPhrase:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;->val$fex:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6
.end method
