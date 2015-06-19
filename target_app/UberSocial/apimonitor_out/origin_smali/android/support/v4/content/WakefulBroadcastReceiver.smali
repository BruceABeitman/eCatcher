.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "android.support.content.wakelockid"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    :goto_a
    return v0

    :cond_b
    sget-object v3, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_e
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3

    move v0, v1

    goto :goto_a

    :cond_23
    const-string v0, "WakefulBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No active wake lock id #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    move v0, v1

    goto :goto_a

    :catchall_3e
    move-exception v0

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 9

    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    sget v3, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    sget v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    sget v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    :cond_12
    const-string v0, "android.support.content.wakelockid"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_20

    const/4 v0, 0x0

    monitor-exit v2

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wake:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_1f

    :catchall_56
    move-exception v0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v0
.end method
