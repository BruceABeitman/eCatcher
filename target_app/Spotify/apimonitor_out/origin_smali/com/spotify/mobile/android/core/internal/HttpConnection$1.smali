.class Lcom/spotify/mobile/android/core/internal/HttpConnection$1;
.super Lorg/apache/http/client/methods/HttpGet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/core/internal/HttpConnection;->openUrl(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/core/internal/HttpConnection;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection$1;->this$0:Lcom/spotify/mobile/android/core/internal/HttpConnection;

    invoke-direct {p0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "UPDATE"

    return-object v0
.end method
