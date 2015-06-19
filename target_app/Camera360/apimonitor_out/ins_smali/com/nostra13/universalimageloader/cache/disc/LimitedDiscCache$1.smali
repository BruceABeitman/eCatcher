.class  Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;
.super Ljava/lang/Object;
.source "LimitedDiscCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
.method constructor <init>(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)V
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 10
const/4 v5, 0x0
iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
iget-object v6, v6, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheDir:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_36
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_e
if-ge v3, v4, :cond_2d
aget-object v1, v0, v3
iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
invoke-virtual {v6, v1}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I
move-result v6
add-int/2addr v5, v6
iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
#getter for: Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;
invoke-static {v6}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->access$000(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
move-result-object v6
invoke-virtual {v1}, Ljava/io/File;->lastModified()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v3, v3, 0x1
goto :goto_e
:cond_2d
iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
#getter for: Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v6}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->access$100(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
:cond_36
return-void
.end method