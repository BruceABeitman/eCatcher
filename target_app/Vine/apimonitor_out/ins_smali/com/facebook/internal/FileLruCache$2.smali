.class  Lcom/facebook/internal/FileLruCache$2;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;
.method constructor <init>(Lcom/facebook/internal/FileLruCache;)V
.registers 2
iput-object p1, p0, Lcom/facebook/internal/FileLruCache$2;->this$0:Lcom/facebook/internal/FileLruCache;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/facebook/internal/FileLruCache$2;->this$0:Lcom/facebook/internal/FileLruCache;
#calls: Lcom/facebook/internal/FileLruCache;->trim()V
invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->access$100(Lcom/facebook/internal/FileLruCache;)V
return-void
.end method