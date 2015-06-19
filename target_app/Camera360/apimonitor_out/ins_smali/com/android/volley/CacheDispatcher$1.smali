.class  Lcom/android/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/android/volley/CacheDispatcher;
.field private final synthetic val$request:Lcom/android/volley/Request;
.method constructor <init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V
.registers 3
iput-object p1, p0, Lcom/android/volley/CacheDispatcher$1;->this$0:Lcom/android/volley/CacheDispatcher;
iput-object p2, p0, Lcom/android/volley/CacheDispatcher$1;->val$request:Lcom/android/volley/Request;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/android/volley/CacheDispatcher$1;->this$0:Lcom/android/volley/CacheDispatcher;
#getter for: Lcom/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
invoke-static {v0}, Lcom/android/volley/CacheDispatcher;->access$0(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
move-result-object v0
iget-object v1, p0, Lcom/android/volley/CacheDispatcher$1;->val$request:Lcom/android/volley/Request;
invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
:goto_b
:try_end_b
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
goto :goto_b
.end method