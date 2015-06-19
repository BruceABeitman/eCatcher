.class public Lcom/android/debug/hv/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"
.implements Ljava/lang/Runnable;
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"
.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"
.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"
.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"
.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"
.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"
.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"
.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"
.field private static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b
.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa
.field private static sServer:Lcom/android/debug/hv/ViewServer;
.field private final mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.field private mFocusedWindow:Landroid/view/View;
.field private final mListeners:Ljava/util/List;
.field private final mPort:I
.field private mServer:Ljava/net/ServerSocket;
.field private mThread:Ljava/lang/Thread;
.field private mThreadPool:Ljava/util/concurrent/ExecutorService;
.field private final mWindows:Ljava/util/HashMap;
.field private final mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
const/4 v0, -0x1
iput v0, p0, Lcom/android/debug/hv/ViewServer;->mPort:I
return-void
.end method
.method private constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
iput p1, p0, Lcom/android/debug/hv/ViewServer;->mPort:I
return-void
.end method
.method synthetic constructor <init>(Lcom/android/debug/hv/ViewServer$1;)V
.registers 2
invoke-direct {p0}, Lcom/android/debug/hv/ViewServer;-><init>()V
return-void
.end method
.method static synthetic access$200(Ljava/net/Socket;Ljava/lang/String;)Z
.registers 3
invoke-static {p0, p1}, Lcom/android/debug/hv/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
return-object v0
.end method
.method static synthetic access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusedWindow:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
return-object v0
.end method
.method static synthetic access$700(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V
.registers 2
invoke-direct {p0, p1}, Lcom/android/debug/hv/ViewServer;->addWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
return-void
.end method
.method static synthetic access$800(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V
.registers 2
invoke-direct {p0, p1}, Lcom/android/debug/hv/ViewServer;->removeWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
return-void
.end method
.method private addWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
.registers 3
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d
return-void
.end method
.method private fireFocusChangedEvent()V
.registers 4
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/android/debug/hv/ViewServer$WindowListener;
invoke-interface {v1}, Lcom/android/debug/hv/ViewServer$WindowListener;->focusChanged()V
goto :goto_6
:cond_16
return-void
.end method
.method private fireWindowsChangedEvent()V
.registers 4
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/android/debug/hv/ViewServer$WindowListener;
invoke-interface {v1}, Lcom/android/debug/hv/ViewServer$WindowListener;->windowsChanged()V
goto :goto_6
:cond_16
return-void
.end method
.method public static get(Landroid/content/Context;)Lcom/android/debug/hv/ViewServer;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
const-string v2, "user"
sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3a
iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
and-int/lit8 v2, v2, 0x2
if-eqz v2, :cond_3a
sget-object v2, Lcom/android/debug/hv/ViewServer;->sServer:Lcom/android/debug/hv/ViewServer;
if-nez v2, :cond_21
new-instance v2, Lcom/android/debug/hv/ViewServer;
const/16 v3, 0x134b
invoke-direct {v2, v3}, Lcom/android/debug/hv/ViewServer;-><init>(I)V
sput-object v2, Lcom/android/debug/hv/ViewServer;->sServer:Lcom/android/debug/hv/ViewServer;
:cond_21
sget-object v2, Lcom/android/debug/hv/ViewServer;->sServer:Lcom/android/debug/hv/ViewServer;
invoke-virtual {v2}, Lcom/android/debug/hv/ViewServer;->isRunning()Z
move-result v2
if-nez v2, :cond_2e
:try_start_29
sget-object v2, Lcom/android/debug/hv/ViewServer;->sServer:Lcom/android/debug/hv/ViewServer;
invoke-virtual {v2}, Lcom/android/debug/hv/ViewServer;->start()Z
:try_end_2e
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_31
:goto_2e
:cond_2e
sget-object v2, Lcom/android/debug/hv/ViewServer;->sServer:Lcom/android/debug/hv/ViewServer;
return-object v2
:catch_31
move-exception v0
const-string v2, "ViewServer"
const-string v3, "Error:"
invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2e
:cond_3a
new-instance v2, Lcom/android/debug/hv/ViewServer$NoopViewServer;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/android/debug/hv/ViewServer$NoopViewServer;-><init>(Lcom/android/debug/hv/ViewServer$1;)V
sput-object v2, Lcom/android/debug/hv/ViewServer;->sServer:Lcom/android/debug/hv/ViewServer;
goto :goto_2e
.end method
.method private removeWindowListener(Lcom/android/debug/hv/ViewServer$WindowListener;)V
.registers 3
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mListeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
.registers 9
const/4 v2, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
new-instance v3, Ljava/io/BufferedWriter;
new-instance v5, Ljava/io/OutputStreamWriter;
invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
const/16 v6, 0x2000
invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
:try_start_11
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_33
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_28
invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
const-string v5, "\n"
invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
:try_end_1c
.catchall {:try_start_11 .. :try_end_1c} :catchall_3c
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_3f
const/4 v4, 0x1
if-eqz v3, :cond_42
:try_start_1f
invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
:try_end_22
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_24
move-object v2, v3
:goto_23
:cond_23
return v4
:catch_24
move-exception v1
const/4 v4, 0x0
move-object v2, v3
goto :goto_23
:catch_28
move-exception v1
:goto_29
const/4 v4, 0x0
if-eqz v2, :cond_23
:try_start_2c
invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
:try_end_2f
.catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
goto :goto_23
:catch_30
move-exception v1
const/4 v4, 0x0
goto :goto_23
:catchall_33
move-exception v5
:goto_34
if-eqz v2, :cond_39
:try_start_36
invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
:cond_39
:goto_39
:try_end_39
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a
throw v5
:catch_3a
move-exception v1
goto :goto_39
:catchall_3c
move-exception v5
move-object v2, v3
goto :goto_34
:catch_3f
move-exception v1
move-object v2, v3
goto :goto_29
:cond_42
move-object v2, v3
goto :goto_23
.end method
.method public addWindow(Landroid/app/Activity;)V
.registers 5
invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_3d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/0x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_31
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/android/debug/hv/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V
return-void
:cond_3d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_31
.end method
.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_12
.catchall {:try_start_9 .. :try_end_12} :catchall_1f
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
invoke-direct {p0}, Lcom/android/debug/hv/ViewServer;->fireWindowsChangedEvent()V
return-void
:catchall_1f
move-exception v0
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
throw v0
.end method
.method public isRunning()Z
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public removeWindow(Landroid/app/Activity;)V
.registers 3
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/android/debug/hv/ViewServer;->removeWindow(Landroid/view/View;)V
return-void
.end method
.method public removeWindow(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_12
.catchall {:try_start_9 .. :try_end_12} :catchall_1f
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
invoke-direct {p0}, Lcom/android/debug/hv/ViewServer;->fireWindowsChangedEvent()V
return-void
:catchall_1f
move-exception v0
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
throw v0
.end method
.method public run()V
.registers 7
:try_start_0
new-instance v2, Ljava/net/ServerSocket;
iget v3, p0, Lcom/android/debug/hv/ViewServer;->mPort:I
const/16 v4, 0xa
invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
move-result-object v5
invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
iput-object v2, p0, Lcom/android/debug/hv/ViewServer;->mServer:Ljava/net/ServerSocket;
:goto_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_39
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mServer:Ljava/net/ServerSocket;
if-eqz v2, :cond_4b
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
iget-object v3, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
if-ne v2, v3, :cond_4b
:try_start_1b
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mServer:Ljava/net/ServerSocket;
invoke-static {v2}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v0
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
if-eqz v2, :cond_42
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
new-instance v3, Lcom/android/debug/hv/ViewServer$ViewServerWorker;
invoke-direct {v3, p0, v0}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;-><init>(Lcom/android/debug/hv/ViewServer;Ljava/net/Socket;)V
invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_30
goto :goto_f
:catch_30
move-exception v1
const-string v2, "ViewServer"
const-string v3, "Connection error: "
invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
:catch_39
move-exception v1
const-string v2, "ViewServer"
const-string v3, "Starting ServerSocket error: "
invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
:cond_42
:try_start_42
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_45
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_30
goto :goto_f
:catch_46
move-exception v1
:try_start_47
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_30
goto :goto_f
:cond_4b
return-void
.end method
.method public setFocusedWindow(Landroid/app/Activity;)V
.registers 3
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/android/debug/hv/ViewServer;->setFocusedWindow(Landroid/view/View;)V
return-void
.end method
.method public setFocusedWindow(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
if-nez p1, :cond_1b
const/4 v0, 0x0
:goto_c
:try_start_c
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusedWindow:Landroid/view/View;
:try_end_e
.catchall {:try_start_c .. :try_end_e} :catchall_20
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
invoke-direct {p0}, Lcom/android/debug/hv/ViewServer;->fireFocusChangedEvent()V
return-void
:cond_1b
:try_start_1b
invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
:try_end_1e
.catchall {:try_start_1b .. :try_end_1e} :catchall_20
move-result-object v0
goto :goto_c
:catchall_20
move-exception v0
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
throw v0
.end method
.method public start()Z
.registers 4
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
new-instance v0, Ljava/lang/Thread;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Local View Server [port="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/android/debug/hv/ViewServer;->mPort:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
const/16 v0, 0xa
invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/android/debug/hv/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
iget-object v0, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
const/4 v0, 0x1
goto :goto_5
.end method
.method public stop()Z
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
if-eqz v1, :cond_32
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
if-eqz v1, :cond_13
:try_start_e
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
:cond_13
:goto_13
:try_end_13
.catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_13} :catch_21
iput-object v3, p0, Lcom/android/debug/hv/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
iput-object v3, p0, Lcom/android/debug/hv/ViewServer;->mThread:Ljava/lang/Thread;
:try_start_17
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mServer:Ljava/net/ServerSocket;
invoke-static {v1}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/android/debug/hv/ViewServer;->mServer:Ljava/net/ServerSocket;
:try_end_1f
.catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_2a
const/4 v1, 0x1
:goto_20
return v1
:catch_21
move-exception v0
const-string v1, "ViewServer"
const-string v2, "Could not stop all view server threads"
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_13
:catch_2a
move-exception v0
const-string v1, "ViewServer"
const-string v2, "Could not close the view server"
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_32
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
:try_start_3b
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mWindows:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
:try_end_40
.catchall {:try_start_3b .. :try_end_40} :catchall_60
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
const/4 v1, 0x0
:try_start_53
iput-object v1, p0, Lcom/android/debug/hv/ViewServer;->mFocusedWindow:Landroid/view/View;
:try_end_55
.catchall {:try_start_53 .. :try_end_55} :catchall_6b
iget-object v1, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
const/4 v1, 0x0
goto :goto_20
:catchall_60
move-exception v1
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
throw v1
:catchall_6b
move-exception v1
iget-object v2, p0, Lcom/android/debug/hv/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
throw v1
.end method