.class Lcom/glympse/android/lib/h;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private g:Lcom/glympse/android/lib/GAccountImportListener;

.field private gG:Lcom/glympse/android/core/GPrimitive;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GAccountImportListener;Lcom/glympse/android/core/GPrimitive;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/h;->g:Lcom/glympse/android/lib/GAccountImportListener;

    iput-object p2, p0, Lcom/glympse/android/lib/h;->gG:Lcom/glympse/android/core/GPrimitive;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/h;->g:Lcom/glympse/android/lib/GAccountImportListener;

    iget-object v1, p0, Lcom/glympse/android/lib/h;->gG:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAccountImportListener;->accountImported(Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method
