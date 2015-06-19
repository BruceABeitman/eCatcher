.class Lcom/github/kevinsawicki/HttpRequest$5;
.super Lcom/github/kevinsawicki/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kevinsawicki/HttpRequest;->receive(Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;
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

.field private final synthetic val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .registers 5

    iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$5;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    iput-object p4, p0, Lcom/github/kevinsawicki/HttpRequest$5;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method protected run()Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$5;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest$5;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$5;->run()Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method
