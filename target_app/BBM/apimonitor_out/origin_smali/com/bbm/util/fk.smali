.class public final Lcom/bbm/util/fk;
.super Ljava/lang/Object;
.source "WifiStatusMonitor.java"


# instance fields
.field final a:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:Z

.field public final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/util/fl;

    invoke-direct {v0, p0}, Lcom/bbm/util/fl;-><init>(Lcom/bbm/util/fk;)V

    iput-object v0, p0, Lcom/bbm/util/fk;->d:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/bbm/util/fk;->b:Landroid/content/Context;

    new-instance v0, Lcom/bbm/j/t;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/util/fk;->a:Lcom/bbm/j/t;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/fk;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/util/fk;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
