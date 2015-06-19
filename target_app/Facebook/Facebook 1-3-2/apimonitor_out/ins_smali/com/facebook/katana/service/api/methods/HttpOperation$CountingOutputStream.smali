.class  Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpOperation.java"
.field private final mChunk:J
.field private final mLength:J
.field private mNext:J
.field private mTransferred:J
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
.method public constructor <init>(Lcom/facebook/katana/service/api/methods/HttpOperation;Ljava/io/OutputStream;J)V
.registers 9
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
const-wide/16 v0, 0x2
mul-long/2addr v0, p3
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mLength:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mLength:J
const-wide/16 v2, 0x5
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mChunk:J
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mChunk:J
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
return-void
.end method
.method public write(I)V
.registers 8
invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
cmp-long v0, v0, v2
if-ltz v0, :cond_33
invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
#getter for: Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->access$0(Lcom/facebook/katana/service/api/methods/HttpOperation;)Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
move-result-object v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
#getter for: Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->access$0(Lcom/facebook/katana/service/api/methods/HttpOperation;)Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v4, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mLength:J
invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;->onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
:cond_2c
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mChunk:J
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
:cond_33
return-void
.end method
.method public write([BII)V
.registers 10
invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
int-to-long v2, p3
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
cmp-long v0, v0, v2
if-ltz v0, :cond_32
invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
#getter for: Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->access$0(Lcom/facebook/katana/service/api/methods/HttpOperation;)Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
move-result-object v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
#getter for: Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->access$0(Lcom/facebook/katana/service/api/methods/HttpOperation;)Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mTransferred:J
iget-wide v4, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mLength:J
invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;->onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
:cond_2b
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mChunk:J
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;->mNext:J
:cond_32
return-void
.end method