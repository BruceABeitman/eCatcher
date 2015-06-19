.class Lcom/glympse/android/hal/d;
.super Ljava/lang/Object;
.source "AccountImporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic m:Lcom/glympse/android/hal/a;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/a;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/d;->m:Lcom/glympse/android/hal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/a;Lcom/glympse/android/hal/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/d;-><init>(Lcom/glympse/android/hal/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/d;->m:Lcom/glympse/android/hal/a;

    invoke-static {v0}, Lcom/glympse/android/hal/a;->c(Lcom/glympse/android/hal/a;)Lcom/glympse/android/lib/GAccountImportListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/glympse/android/hal/d;->m:Lcom/glympse/android/hal/a;

    invoke-static {v0}, Lcom/glympse/android/hal/a;->c(Lcom/glympse/android/hal/a;)Lcom/glympse/android/lib/GAccountImportListener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/glympse/android/lib/GAccountImportListener;->failedToImport(ZI)V

    :cond_12
    iget-object v0, p0, Lcom/glympse/android/hal/d;->m:Lcom/glympse/android/hal/a;

    invoke-virtual {v0}, Lcom/glympse/android/hal/a;->cancel()V

    return-void
.end method
