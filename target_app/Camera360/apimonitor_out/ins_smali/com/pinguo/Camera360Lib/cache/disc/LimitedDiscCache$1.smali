.class  Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;
.super Ljava/lang/Object;
.source "LimitedDiscCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
.method constructor <init>(Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;->this$0:Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;->this$0:Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
iget-object v3, v3, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->cacheDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_f
array-length v4, v1
const/4 v3, 0x0
:goto_d
if-lt v3, v4, :cond_19
:cond_f
iget-object v3, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;->this$0:Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
#getter for: Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v3}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->access$1(Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
return-void
:cond_19
aget-object v0, v1, v3
iget-object v5, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;->this$0:Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
invoke-virtual {v5, v0}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I
move-result v5
add-int/2addr v2, v5
iget-object v5, p0, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache$1;->this$0:Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;
#getter for: Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;
invoke-static {v5}, Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;->access$0(Lcom/pinguo/Camera360Lib/cache/disc/LimitedDiscCache;)Ljava/util/Map;
move-result-object v5
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v3, v3, 0x1
goto :goto_d
.end method