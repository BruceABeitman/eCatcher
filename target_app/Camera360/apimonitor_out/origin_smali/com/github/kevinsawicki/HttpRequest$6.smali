.class Lcom/github/kevinsawicki/HttpRequest$6;
.super Lcom/github/kevinsawicki/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kevinsawicki/HttpRequest;->receive(Ljava/lang/Appendable;)Lcom/github/kevinsawicki/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/kevinsawicki/HttpRequest$CloseOperation",
        "<",
        "Lcom/github/kevinsawicki/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/kevinsawicki/HttpRequest;

.field private final synthetic val$appendable:Ljava/lang/Appendable;

.field private final synthetic val$reader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
    .registers 6

    iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$6;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    iput-object p4, p0, Lcom/github/kevinsawicki/HttpRequest$6;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/github/kevinsawicki/HttpRequest$6;->val$appendable:Ljava/lang/Appendable;

    invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$6;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    #getter for: Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I
    invoke-static {v2}, Lcom/github/kevinsawicki/HttpRequest;->access$1(Lcom/github/kevinsawicki/HttpRequest;)I

    move-result v2

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_a
    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$6;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$6;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    return-object v2

    :cond_16
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$6;->val$appendable:Ljava/lang/Appendable;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_a
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$6;->run()Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method
