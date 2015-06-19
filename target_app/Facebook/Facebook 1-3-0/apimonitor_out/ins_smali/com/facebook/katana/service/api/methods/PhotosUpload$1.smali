.class  Lcom/facebook/katana/service/api/methods/PhotosUpload$1;
.super Ljava/lang/Object;
.source "PhotosUpload.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/PhotosUpload;
.field private final synthetic val$length:J
.field private final synthetic val$position:J
.method constructor <init>(Lcom/facebook/katana/service/api/methods/PhotosUpload;JJ)V
.registers 6
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->this$0:Lcom/facebook/katana/service/api/methods/PhotosUpload;
iput-wide p2, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->val$position:J
iput-wide p4, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->val$length:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->this$0:Lcom/facebook/katana/service/api/methods/PhotosUpload;
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->this$0:Lcom/facebook/katana/service/api/methods/PhotosUpload;
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->this$0:Lcom/facebook/katana/service/api/methods/PhotosUpload;
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->val$position:J
iget-wide v4, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;->val$length:J
invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
goto :goto_6
.end method