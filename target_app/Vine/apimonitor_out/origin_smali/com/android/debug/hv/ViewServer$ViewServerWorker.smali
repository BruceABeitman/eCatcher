.class Lcom/android/debug/hv/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/debug/hv/ViewServer$WindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/debug/hv/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private final mLock:[Ljava/lang/Object;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/debug/hv/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/debug/hv/ViewServer;Ljava/net/Socket;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    iput-boolean v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    iput-boolean v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    return-void
.end method

.method private findWindow(I)Landroid/view/View;
    .registers 7

    const/4 v3, -0x1

    if-ne p1, v3, :cond_34

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_11
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mFocusedWindow:Landroid/view/View;
    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_25

    move-result-object v2

    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_24
    return-object v2

    :catchall_25
    move-exception v3

    iget-object v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v4}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    :cond_34
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_41
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p1, :cond_4f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_89

    iget-object v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v4}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v2, v3

    goto :goto_24

    :cond_7a
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v2, 0x0

    goto :goto_24

    :catchall_89
    move-exception v3

    iget-object v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v4}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
.end method

.method private getFocusedWindow(Ljava/net/Socket;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_c1

    const/4 v4, 0x0

    :try_start_14
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_95

    :try_start_21
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mFocusedWindow:Landroid/view/View;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_86

    move-result-object v4

    :try_start_27
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v4, :cond_77

    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_95

    :try_start_43
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mFocusedWindow:Landroid/view/View;
    invoke-static {v9}, Lcom/android/debug/hv/ViewServer;->access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_a1

    :try_start_57
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_77
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7f
    .catchall {:try_start_57 .. :try_end_7f} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7f} :catch_95

    if-eqz v6, :cond_c3

    :try_start_81
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_b8

    move-object v5, v6

    :cond_85
    :goto_85
    return v7

    :catchall_86
    move-exception v8

    :try_start_87
    iget-object v9, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v9}, Lcom/android/debug/hv/ViewServer;->access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v8
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_95} :catch_95

    :catch_95
    move-exception v2

    move-object v5, v6

    :goto_97
    const/4 v7, 0x0

    if-eqz v5, :cond_85

    :try_start_9a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_85

    :catch_9e
    move-exception v2

    const/4 v7, 0x0

    goto :goto_85

    :catchall_a1
    move-exception v8

    :try_start_a2
    iget-object v9, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v9}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v8
    :try_end_b0
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b0} :catch_95

    :catchall_b0
    move-exception v8

    move-object v5, v6

    :goto_b2
    if-eqz v5, :cond_b7

    :try_start_b4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_bc

    :cond_b7
    :goto_b7
    throw v8

    :catch_b8
    move-exception v2

    const/4 v7, 0x0

    move-object v5, v6

    goto :goto_85

    :catch_bc
    move-exception v2

    const/4 v7, 0x0

    goto :goto_b7

    :catchall_bf
    move-exception v8

    goto :goto_b2

    :catch_c1
    move-exception v2

    goto :goto_97

    :cond_c3
    move-object v5, v6

    goto :goto_85
.end method

.method private listWindows(Ljava/net/Socket;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v4, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v7}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_af

    :try_start_1f
    iget-object v7, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/debug/hv/ViewServer;->access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5b} :catch_5c

    goto :goto_2d

    :catch_5c
    move-exception v1

    move-object v4, v5

    :goto_5e
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v7}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v4, :cond_71

    :try_start_6e
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_92

    :cond_71
    :goto_71
    return v6

    :cond_72
    :try_start_72
    const-string v7, "DONE.\n"

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_5c

    iget-object v7, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v7}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v5, :cond_b1

    :try_start_89
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8e

    move-object v4, v5

    goto :goto_71

    :catch_8e
    move-exception v1

    const/4 v6, 0x0

    move-object v4, v5

    goto :goto_71

    :catch_92
    move-exception v1

    const/4 v6, 0x0

    goto :goto_71

    :catchall_95
    move-exception v7

    :goto_96
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #getter for: Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v4, :cond_a8

    :try_start_a5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    :cond_a8
    :goto_a8
    throw v7

    :catch_a9
    move-exception v1

    const/4 v6, 0x0

    goto :goto_a8

    :catchall_ac
    move-exception v7

    move-object v4, v5

    goto :goto_96

    :catch_af
    move-exception v1

    goto :goto_5e

    :cond_b1
    move-object v4, v5

    goto :goto_71
.end method

.method private windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v10, 0x20

    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    :cond_11
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x10

    invoke-static {v1, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v4, v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_3a

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_2d
    invoke-direct {p0, v4}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->findWindow(I)Landroid/view/View;
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_a6

    move-result-object v9

    if-nez v9, :cond_40

    const/4 v10, 0x0

    if-eqz v6, :cond_39

    :try_start_36
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3d

    :cond_39
    :goto_39
    return v10

    :cond_3a
    :try_start_3a
    const-string p3, ""

    goto :goto_2d

    :catch_3d
    move-exception v3

    const/4 v8, 0x0

    goto :goto_39

    :cond_40
    const-class v10, Landroid/view/ViewDebug;

    const-string v11, "dispatchCommand"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/view/View;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-class v14, Ljava/io/OutputStream;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    const/4 v12, 0x2

    aput-object p3, v11, v12

    const/4 v12, 0x3

    new-instance v13, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v10

    if-nez v10, :cond_9c

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_93
    .catchall {:try_start_3a .. :try_end_93} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_93} :catch_a6

    :try_start_93
    const-string v10, "DONE\n"

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9b} :catch_e4

    move-object v6, v7

    :cond_9c
    if-eqz v6, :cond_a1

    :try_start_9e
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a3

    :cond_a1
    :goto_a1
    move v10, v8

    goto :goto_39

    :catch_a3
    move-exception v3

    const/4 v8, 0x0

    goto :goto_a1

    :catch_a6
    move-exception v3

    :goto_a7
    :try_start_a7
    const-string v10, "ViewServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not send command "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with parameters "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_a7 .. :try_end_cd} :catchall_d7

    const/4 v8, 0x0

    if-eqz v6, :cond_a1

    :try_start_d0
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_a1

    :catch_d4
    move-exception v3

    const/4 v8, 0x0

    goto :goto_a1

    :catchall_d7
    move-exception v10

    :goto_d8
    if-eqz v6, :cond_dd

    :try_start_da
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    :cond_dd
    :goto_dd
    throw v10

    :catch_de
    move-exception v3

    const/4 v8, 0x0

    goto :goto_dd

    :catchall_e1
    move-exception v10

    move-object v6, v7

    goto :goto_d8

    :catch_e4
    move-exception v3

    move-object v6, v7

    goto :goto_a7
.end method

.method private windowManagerAutolistLoop()Z
    .registers 8

    iget-object v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #calls: Lcom/android/debug/hv/ViewServer;->addWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
    invoke-static {v5, p0}, Lcom/android/debug/hv/ViewServer;->access$700(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_8e

    :cond_16
    :goto_16
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_7a

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v6
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_32

    :goto_21
    :try_start_21
    iget-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v5, :cond_47

    iget-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v5, :cond_47

    iget-object v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_21

    :catchall_2f
    move-exception v5

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    move-object v3, v4

    :goto_34
    :try_start_34
    const-string v5, "ViewServer"

    const-string v6, "Connection error: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_8c

    if-eqz v3, :cond_40

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_88

    :cond_40
    :goto_40
    iget-object v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #calls: Lcom/android/debug/hv/ViewServer;->removeWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
    invoke-static {v5, p0}, Lcom/android/debug/hv/ViewServer;->access$800(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    :goto_45
    const/4 v5, 0x1

    return v5

    :cond_47
    :try_start_47
    iget-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v5, :cond_4f

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    const/4 v2, 0x1

    :cond_4f
    iget-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_57

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    const/4 v1, 0x1

    :cond_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_2f

    if-eqz v2, :cond_62

    :try_start_5a
    const-string v5, "LIST UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    :cond_62
    if-eqz v1, :cond_16

    const-string v5, "FOCUS UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6c
    .catchall {:try_start_5a .. :try_end_6c} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_32

    goto :goto_16

    :catchall_6d
    move-exception v5

    move-object v3, v4

    :goto_6f
    if-eqz v3, :cond_74

    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_8a

    :cond_74
    :goto_74
    iget-object v6, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #calls: Lcom/android/debug/hv/ViewServer;->removeWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
    invoke-static {v6, p0}, Lcom/android/debug/hv/ViewServer;->access$800(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    throw v5

    :cond_7a
    if-eqz v4, :cond_7f

    :try_start_7c
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_86

    :cond_7f
    :goto_7f
    iget-object v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    #calls: Lcom/android/debug/hv/ViewServer;->removeWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
    invoke-static {v5, p0}, Lcom/android/debug/hv/ViewServer;->access$800(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    move-object v3, v4

    goto :goto_45

    :catch_86
    move-exception v5

    goto :goto_7f

    :catch_88
    move-exception v5

    goto :goto_40

    :catch_8a
    move-exception v6

    goto :goto_74

    :catchall_8c
    move-exception v5

    goto :goto_6f

    :catch_8e
    move-exception v0

    goto :goto_34
.end method


# virtual methods
.method public focusChanged()V
    .registers 3

    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 12

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_d8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_b7

    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_5d

    move-object v0, v6

    const-string v5, ""

    :goto_23
    const-string v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    #calls: Lcom/android/debug/hv/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/debug/hv/ViewServer;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    :goto_33
    if-nez v7, :cond_4d

    const-string v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An error occurred with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_f2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4d} :catch_f5

    :cond_4d
    if-eqz v3, :cond_52

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_ac

    :cond_52
    :goto_52
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_f8

    :try_start_56
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5b} :catch_b1

    move-object v2, v3

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const/4 v8, 0x0

    :try_start_5e
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_23

    :cond_69
    const-string v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    #calls: Lcom/android/debug/hv/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/debug/hv/ViewServer;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    goto :goto_33

    :cond_7a
    const-string v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_89

    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->listWindows(Ljava/net/Socket;)Z

    move-result v7

    goto :goto_33

    :cond_89
    const-string v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_98

    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->getFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    goto :goto_33

    :cond_98
    const-string v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-direct {p0}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    goto :goto_33

    :cond_a5
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8, v0, v5}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_aa
    .catchall {:try_start_5e .. :try_end_aa} :catchall_f2
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_aa} :catch_f5

    move-result v7

    goto :goto_33

    :catch_ac
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    :catch_b1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_5c

    :catch_b7
    move-exception v1

    :goto_b8
    :try_start_b8
    const-string v8, "ViewServer"

    const-string v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_d8

    if-eqz v2, :cond_c4

    :try_start_c1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_d3

    :cond_c4
    :goto_c4
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_5c

    :try_start_c8
    iget-object v8, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cd} :catch_ce

    goto :goto_5c

    :catch_ce
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catch_d3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catchall_d8
    move-exception v8

    :goto_d9
    if-eqz v2, :cond_de

    :try_start_db
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e8

    :cond_de
    :goto_de
    iget-object v9, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_e7

    :try_start_e2
    iget-object v9, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e7} :catch_ed

    :cond_e7
    :goto_e7
    throw v8

    :catch_e8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_de

    :catch_ed
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e7

    :catchall_f2
    move-exception v8

    move-object v2, v3

    goto :goto_d9

    :catch_f5
    move-exception v1

    move-object v2, v3

    goto :goto_b8

    :cond_f8
    move-object v2, v3

    goto/16 :goto_5c
.end method

.method public windowsChanged()V
    .registers 3

    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method
