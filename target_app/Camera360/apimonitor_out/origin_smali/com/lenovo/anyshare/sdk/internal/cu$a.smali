.class Lcom/lenovo/anyshare/sdk/internal/cu$a;
.super Ljava/lang/Thread;
.source "ToneRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/cu;


# direct methods
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cu;)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    const-string/jumbo v0, "ToneRecognizer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_30

    if-eqz v1, :cond_21

    :try_start_7
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cu$a;->interrupted()Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_24

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    :goto_f
    iput-object v3, v1, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;

    return-void

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/cu;->b:Lcom/lenovo/anyshare/sdk/internal/df;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cu;->c()[S

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/df;->a([S)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_24

    goto :goto_1

    :catch_20
    move-exception v0

    :cond_21
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    goto :goto_f

    :catch_24
    move-exception v0

    :try_start_25
    const-string/jumbo v1, "ToneRecognizer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_30

    goto :goto_1

    :catchall_30
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cu$a;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    iput-object v3, v2, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;

    throw v1
.end method
