.class Lcom/spotify/mobile/android/core/internal/HttpConnection$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/core/internal/HttpConnection;->openUrl(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/core/internal/HttpConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    #getter for: Lcom/spotify/mobile/android/core/internal/HttpConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v1}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->access$200(Lcom/spotify/mobile/android/core/internal/HttpConnection;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    #getter for: Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->access$100(Lcom/spotify/mobile/android/core/internal/HttpConnection;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    #setter for: Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;
    invoke-static {v0, v1}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->access$002(Lcom/spotify/mobile/android/core/internal/HttpConnection;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->getResultData()[B

    move-result-object v1

    iput-object v1, v0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResultData:[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_25

    :goto_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    #calls: Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V
    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->access$400(Lcom/spotify/mobile/android/core/internal/HttpConnection;)V

    return-void

    :catch_25
    move-exception v0

    const-string v1, "Exception on getting result data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    const/16 v1, 0x135

    #setter for: Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I
    invoke-static {v0, v1}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->access$302(Lcom/spotify/mobile/android/core/internal/HttpConnection;I)I

    goto :goto_1f
.end method
