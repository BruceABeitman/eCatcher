.class  Lcom/github/kevinsawicki/HttpRequest$10;
.super Lcom/github/kevinsawicki/HttpRequest$FlushOperation;
.source "HttpRequest.java"
.field final synthetic this$0:Lcom/github/kevinsawicki/HttpRequest;
.field private final synthetic val$input:Ljava/io/Reader;
.field private final synthetic val$writer:Ljava/io/Writer;
.method constructor <init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
.registers 5
iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$10;->this$0:Lcom/github/kevinsawicki/HttpRequest;
iput-object p3, p0, Lcom/github/kevinsawicki/HttpRequest$10;->val$input:Ljava/io/Reader;
iput-object p4, p0, Lcom/github/kevinsawicki/HttpRequest$10;->val$writer:Ljava/io/Writer;
invoke-direct {p0, p2}, Lcom/github/kevinsawicki/HttpRequest$FlushOperation;-><init>(Ljava/io/Flushable;)V
return-void
.end method
.method protected run()Lcom/github/kevinsawicki/HttpRequest;
.registers 4
iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$10;->this$0:Lcom/github/kevinsawicki/HttpRequest;
iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest$10;->val$input:Ljava/io/Reader;
iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$10;->val$writer:Ljava/io/Writer;
invoke-virtual {v0, v1, v2}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/HttpRequest;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic run()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$10;->run()Lcom/github/kevinsawicki/HttpRequest;
move-result-object v0
return-object v0
.end method