.class  Lcom/github/kevinsawicki/HttpRequest$9;
.super Lcom/github/kevinsawicki/HttpRequest$CloseOperation;
.source "HttpRequest.java"
.field final synthetic this$0:Lcom/github/kevinsawicki/HttpRequest;
.field private final synthetic val$input:Ljava/io/Reader;
.field private final synthetic val$output:Ljava/io/Writer;
.method constructor <init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V
.registers 6
iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$9;->this$0:Lcom/github/kevinsawicki/HttpRequest;
iput-object p4, p0, Lcom/github/kevinsawicki/HttpRequest$9;->val$input:Ljava/io/Reader;
iput-object p5, p0, Lcom/github/kevinsawicki/HttpRequest$9;->val$output:Ljava/io/Writer;
invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V
return-void
.end method
.method public run()Lcom/github/kevinsawicki/HttpRequest;
.registers 5
iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$9;->this$0:Lcom/github/kevinsawicki/HttpRequest;
#getter for: Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I
invoke-static {v2}, Lcom/github/kevinsawicki/HttpRequest;->access$1(Lcom/github/kevinsawicki/HttpRequest;)I
move-result v2
new-array v0, v2, [C
:goto_8
iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$9;->val$input:Ljava/io/Reader;
invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_14
iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$9;->this$0:Lcom/github/kevinsawicki/HttpRequest;
return-object v2
:cond_14
iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$9;->val$output:Ljava/io/Writer;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V
goto :goto_8
.end method
.method public bridge synthetic run()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$9;->run()Lcom/github/kevinsawicki/HttpRequest;
move-result-object v0
return-object v0
.end method