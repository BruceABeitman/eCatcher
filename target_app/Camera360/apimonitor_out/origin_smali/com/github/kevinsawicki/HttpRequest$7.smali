.class Lcom/github/kevinsawicki/HttpRequest$7;
.super Lcom/github/kevinsawicki/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kevinsawicki/HttpRequest;->receive(Ljava/io/Writer;)Lcom/github/kevinsawicki/HttpRequest;
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

.field private final synthetic val$reader:Ljava/io/BufferedReader;

.field private final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .registers 6

    iput-object p1, p0, Lcom/github/kevinsawicki/HttpRequest$7;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    iput-object p4, p0, Lcom/github/kevinsawicki/HttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/github/kevinsawicki/HttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$7;->this$0:Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$7;->run()Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method
