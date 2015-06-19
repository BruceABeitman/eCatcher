.class  Lcom/facebook/internal/FileLruCache$1;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.implements Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;
.field final synthetic val$buffer:Ljava/io/File;
.field final synthetic val$key:Ljava/lang/String;
.method constructor <init>(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
.registers 4
iput-object p1, p0, Lcom/facebook/internal/FileLruCache$1;->this$0:Lcom/facebook/internal/FileLruCache;
iput-object p2, p0, Lcom/facebook/internal/FileLruCache$1;->val$key:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClose()V
.registers 4
iget-object v0, p0, Lcom/facebook/internal/FileLruCache$1;->this$0:Lcom/facebook/internal/FileLruCache;
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$1;->val$key:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/internal/FileLruCache$1;->val$buffer:Ljava/io/File;
#calls: Lcom/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
invoke-static {v0, v1, v2}, Lcom/facebook/internal/FileLruCache;->access$000(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
return-void
.end method