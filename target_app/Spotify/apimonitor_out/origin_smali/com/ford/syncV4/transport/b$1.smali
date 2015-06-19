.class final Lcom/ford/syncV4/transport/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ford/syncV4/transport/b;-><init>(Lcom/ford/syncV4/transport/a;Landroid/bluetooth/BluetoothAdapter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/transport/a;

.field final synthetic b:Lcom/ford/syncV4/transport/b;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/transport/b;Lcom/ford/syncV4/transport/a;)V
    .registers 3

    iput-object p1, p0, Lcom/ford/syncV4/transport/b$1;->b:Lcom/ford/syncV4/transport/b;

    iput-object p2, p0, Lcom/ford/syncV4/transport/b$1;->a:Lcom/ford/syncV4/transport/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/ford/syncV4/transport/b$1;->b:Lcom/ford/syncV4/transport/b;

    invoke-static {v0}, Lcom/ford/syncV4/transport/b;->a(Lcom/ford/syncV4/transport/b;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ford/syncV4/transport/b$1;->b:Lcom/ford/syncV4/transport/b;

    invoke-static {v0}, Lcom/ford/syncV4/transport/b;->b(Lcom/ford/syncV4/transport/b;)V

    const-wide/16 v0, 0x3a98

    :try_start_f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_0

    :catch_13
    move-exception v0

    :cond_14
    return-void
.end method
