.class  Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;
.super Ljava/lang/Object;
.source "PushSimpleBean.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field private final synthetic val$lock:[B
.field private final synthetic val$updateResultArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final synthetic val$updateTagArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
.method constructor <init>([B[Ljava/util/concurrent/atomic/AtomicBoolean;[Ljava/util/concurrent/atomic/AtomicBoolean;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$lock:[B
iput-object p2, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$updateTagArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p3, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$updateResultArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPostExecute(Z)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$lock:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$updateTagArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x0
aget-object v0, v0, v2
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$updateResultArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x0
aget-object v0, v0, v2
invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$updateTagArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x0
aget-object v0, v0, v2
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$updateTagArray:[Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x1
aget-object v0, v0, v2
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_38
const-string/jumbo v0, "push"
const-string/jumbo v2, "update finish notify!"
invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;->val$lock:[B
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
:cond_38
monitor-exit v1
return-void
:catchall_3a
move-exception v0
monitor-exit v1
:try_end_3c
.catchall {:try_start_3 .. :try_end_3c} :catchall_3a
throw v0
.end method
.method public onProgress(I)V
.registers 2
return-void
.end method