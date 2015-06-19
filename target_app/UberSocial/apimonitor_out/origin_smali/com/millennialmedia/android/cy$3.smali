.class Lcom/millennialmedia/android/cy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/cy;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/cy;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy$3;->a:Lcom/millennialmedia/android/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nuance/nmdp/speechkit/GenericCommand;Lcom/nuance/nmdp/speechkit/GenericResult;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 7

    if-eqz p3, :cond_24

    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericCommand listener. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    iget-object v0, p0, Lcom/millennialmedia/android/cy$3;->a:Lcom/millennialmedia/android/cy;

    invoke-static {v0}, Lcom/millennialmedia/android/cy;->g(Lcom/millennialmedia/android/cy;)V

    return-void

    :cond_24
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericCommand listener. Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/GenericResult;->getQueryResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
