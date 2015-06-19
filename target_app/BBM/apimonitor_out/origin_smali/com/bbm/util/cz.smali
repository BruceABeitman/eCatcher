.class public final Lcom/bbm/util/cz;
.super Ljava/lang/Object;
.source "ProximitySensorUtil.java"

# interfaces
.implements Lcom/bbm/util/cy;


# instance fields
.field private final a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/util/cz;->a:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/cz;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bbm/util/cz;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_d
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/cz;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/util/cz;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    return-void
.end method
