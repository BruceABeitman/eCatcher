.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "SourceFile"
.implements Lcom/sun/mail/iap/ResponseHandler;
.implements Ljavax/mail/UIDFolder;
.field static final synthetic $assertionsDisabled:Z = false
.field private static final ABORTING:I = 0x2
.field private static final IDLE:I = 0x1
.field private static final RUNNING:I = 0x0
.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'
.field protected attributes:[Ljava/lang/String;
.field protected availableFlags:Ljavax/mail/Flags;
.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;
.field private cachedStatusTime:J
.field private connectionPoolDebug:Z
.field private debug:Z
.field private doExpungeNotification:Z
.field protected exists:Z
.field protected fullName:Ljava/lang/String;
.field private idleState:I
.field protected isNamespace:Z
.field protected messageCache:Ljava/util/Vector;
.field protected messageCacheLock:Ljava/lang/Object;
.field protected name:Ljava/lang/String;
.field private opened:Z
.field private out:Ljava/io/PrintStream;
.field protected permanentFlags:Ljavax/mail/Flags;
.field protected protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
.field private realTotal:I
.field private reallyClosed:Z
.field private recent:I
.field protected separator:C
.field private total:I
.field protected type:I
.field protected uidTable:Ljava/util/Hashtable;
.field private uidnext:J
.field private uidvalidity:J
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/sun/mail/imap/IMAPFolder;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
.registers 5
iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C
invoke-direct {p0, v0, v1, p2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z
if-eqz v0, :cond_11
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
:cond_11
iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
if-eqz v0, :cond_1b
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
:cond_1b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
.registers 10
const-wide/16 v4, -0x1
const/4 v3, 0x1
const/4 v0, -0x1
const/4 v2, 0x0
invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V
iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z
iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z
iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z
if-nez p1, :cond_31
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Folder name is null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;
move-result-object v0
invoke-virtual {v0}, Ljavax/mail/Session;->getDebug()Z
move-result v0
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z
invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolDebug()Z
move-result v0
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z
invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;
move-result-object v0
invoke-virtual {v0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
if-nez v0, :cond_5e
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
:cond_5e
iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z
const v0, 0xffff
if-eq p2, v0, :cond_83
if-eqz p2, :cond_83
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-lez v0, :cond_83
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_83
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z
:cond_83
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z
return-void
.end method
.method static synthetic access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;
.registers 2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1(Lcom/sun/mail/imap/IMAPFolder;)I
.registers 2
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
return v0
.end method
.method static synthetic access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
.registers 2
iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
return-void
.end method
.method private checkClosed()V
.registers 3
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This operation is not allowed on an open folder"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method private checkExists()V
.registers 4
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
if-nez v0, :cond_25
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Ljavax/mail/FolderNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, " not found"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method private checkFlags(Ljavax/mail/Flags;)V
.registers 5
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_10
invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
const/4 v1, 0x2
if-eq v0, v1, :cond_2c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cannot change flags on READ_ONLY folder: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
return-void
.end method
.method private checkOpened()V
.registers 3
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_10
invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_28
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z
if-eqz v0, :cond_20
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This operation is not allowed on a closed folder"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
new-instance v0, Ljavax/mail/FolderClosedException;
const-string v1, "Lost folder connection to server"
invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v0
:cond_28
return-void
.end method
.method private checkRange(I)V
.registers 6
const/4 v0, 0x1
if-ge p1, v0, :cond_9
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_9
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
if-gt p1, v0, :cond_e
:cond_d
return-void
:cond_e
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_12
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
:try_start_15
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_2b
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_12 .. :try_end_15} :catch_20
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_15} :catch_2e
monitor-exit v1
:try_end_16
.catchall {:try_start_15 .. :try_end_16} :catchall_2b
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
if-le p1, v0, :cond_d
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:catch_20
move-exception v0
:try_start_21
new-instance v2, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:catchall_2b
move-exception v0
monitor-exit v1
:try_end_2d
.catchall {:try_start_21 .. :try_end_2d} :catchall_2b
throw v0
:catch_2e
move-exception v0
:try_start_2f
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_39
.catchall {:try_start_2f .. :try_end_39} :catchall_2b
.end method
.method private cleanup(Z)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
return-void
.end method
.method private close(ZZ)V
.registers 7
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_10
invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_start_13
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_26
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z
if-eqz v0, :cond_26
new-instance v0, Ljava/lang/IllegalStateException;
const-string v2, "This operation is not allowed on a closed folder"
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_23
move-exception v0
monitor-exit v1
:try_end_25
.catchall {:try_start_13 .. :try_end_25} :catchall_23
throw v0
:cond_26
const/4 v0, 0x1
:try_start_27
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_2f
monitor-exit v1
:goto_2e
:try_end_2e
.catchall {:try_start_27 .. :try_end_2e} :catchall_23
return-void
:try_start_2f
:cond_2f
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V
if-eqz p2, :cond_67
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "DEBUG: forcing folder "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " to close"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_54
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
:try_end_5d
.catchall {:try_start_2f .. :try_end_5d} :catchall_98
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2f .. :try_end_5d} :catch_8d
:goto_5d
:try_start_5d
:cond_5d
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_65
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V
:cond_65
monitor-exit v1
:try_end_66
.catchall {:try_start_5d .. :try_end_66} :catchall_23
goto :goto_2e
:cond_67
:try_start_67
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z
move-result v0
if-eqz v0, :cond_a2
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
const-string v2, "DEBUG: pool is full, not adding an Authenticated connection"
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_7c
if-eqz p1, :cond_83
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
:cond_83
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
:try_end_8c
.catchall {:try_start_67 .. :try_end_8c} :catchall_98
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_67 .. :try_end_8c} :catch_8d
goto :goto_5d
:catch_8d
move-exception v0
:try_start_8e
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_98
.catchall {:try_start_8e .. :try_end_98} :catchall_98
:catchall_98
move-exception v0
:try_start_99
iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v2, :cond_a1
const/4 v2, 0x1
invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V
:cond_a1
throw v0
:try_end_a2
.catchall {:try_start_99 .. :try_end_a2} :catchall_23
:cond_a2
if-nez p1, :cond_b0
:try_start_a4
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
:try_end_a6
.catchall {:try_start_a4 .. :try_end_a6} :catchall_98
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a4 .. :try_end_a6} :catch_8d
const/4 v2, 0x2
if-ne v0, v2, :cond_b0
:try_start_a9
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
:cond_b0
:try_end_b0
.catchall {:try_start_a9 .. :try_end_b0} :catchall_98
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a9 .. :try_end_b0} :catch_ba
:goto_b0
:try_start_b0
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
goto :goto_5d
:catch_ba
move-exception v0
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v0, :cond_b0
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
:try_end_c4
.catchall {:try_start_b0 .. :try_end_c4} :catchall_98
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b0 .. :try_end_c4} :catch_8d
goto :goto_b0
.end method
.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
.registers 11
const/4 v4, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x0
new-array v0, v0, [Ljavax/mail/Folder;
:goto_e
:try_end_e
.catchall {:try_start_2 .. :try_end_e} :catchall_64
monitor-exit p0
return-object v0
:cond_10
:try_start_10
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C
move-result v1
new-instance v0, Lcom/sun/mail/imap/IMAPFolder$2;
invoke-direct {v0, p0, p2, v1, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
if-nez v0, :cond_25
const/4 v0, 0x0
new-array v0, v0, [Ljavax/mail/Folder;
goto :goto_e
:cond_25
array-length v2, v0
if-lez v2, :cond_47
const/4 v2, 0x0
aget-object v2, v0, v2
iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_47
const/4 v4, 0x1
:cond_47
array-length v1, v0
sub-int/2addr v1, v4
new-array v2, v1, [Lcom/sun/mail/imap/IMAPFolder;
move v3, v4
:goto_4c
array-length v1, v0
if-lt v3, v1, :cond_51
move-object v0, v2
goto :goto_e
:cond_51
sub-int v5, v3, v4
new-instance v6, Lcom/sun/mail/imap/IMAPFolder;
aget-object v7, v0, v3
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v1, Lcom/sun/mail/imap/IMAPStore;
invoke-direct {v6, v7, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
aput-object v6, v2, v5
:try_end_60
.catchall {:try_start_10 .. :try_end_60} :catchall_64
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_4c
:catchall_64
move-exception v0
monitor-exit p0
throw v0
.end method
.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
.registers 6
const/4 v1, 0x0
move v0, v1
:goto_2
array-length v2, p1
if-lt v0, v2, :cond_9
:cond_5
array-length v2, p1
if-lt v0, v2, :cond_16
:goto_8
return v1
:cond_9
aget-object v2, p1, v0
iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_16
move v1, v0
goto :goto_8
.end method
.method private getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
.registers 2
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_12
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_12
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
return-object v0
.end method
.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I
move-result v2
if-lez v2, :cond_1e
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;
if-eqz v0, :cond_1e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
sub-long/2addr v3, v5
int-to-long v5, v2
cmp-long v0, v3, v5
if-gez v0, :cond_1e
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;
:goto_1d
return-object v0
:try_start_1e
:cond_1e
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v1, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
move-result-object v0
if-lez v2, :cond_33
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
:cond_33
:try_end_33
.catchall {:try_start_1e .. :try_end_33} :catchall_37
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
goto :goto_1d
:catchall_37
move-exception v0
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v0
.end method
.method private isDirectory()Z
.registers 2
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private keepConnectionAlive(Z)V
.registers 10
const-wide/16 v6, 0x3e8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J
move-result-wide v2
sub-long/2addr v0, v2
cmp-long v0, v0, v6
if-lez v0, :cond_19
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
:cond_19
if-eqz p1, :cond_45
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z
move-result v0
if-eqz v0, :cond_45
const/4 v1, 0x0
:try_start_26
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
:try_end_2d
.catchall {:try_start_26 .. :try_end_2d} :catchall_46
move-result-object v1
:try_start_2e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J
move-result-wide v4
sub-long/2addr v2, v4
cmp-long v0, v2, v6
if-lez v0, :cond_3e
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
:try_end_3e
.catchall {:try_start_2e .. :try_end_3e} :catchall_51
:cond_3e
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:cond_45
return-void
:catchall_46
move-exception v0
move-object v2, v1
move-object v1, v0
:goto_49
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v1
:catchall_51
move-exception v0
move-object v2, v1
move-object v1, v0
goto :goto_49
.end method
.method private releaseProtocol(Z)V
.registers 4
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
const/4 v1, 0x0
invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
goto :goto_14
.end method
.method private setACL(Lcom/sun/mail/imap/ACL;C)V
.registers 5
const-string v0, "ACL not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$18;
invoke-direct {v1, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
return-void
.end method
.method private declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v0, :cond_d
invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;
move-result-object v0
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eq v0, v1, :cond_15
:cond_d
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-nez v0, :cond_22
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z
if-nez v0, :cond_22
:cond_15
new-instance v0, Ljavax/mail/FolderClosedException;
invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v0
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_1f
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
:cond_22
:try_start_22
new-instance v0, Ljavax/mail/StoreClosedException;
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V
throw v0
:try_end_2e
.catchall {:try_start_22 .. :try_end_2e} :catchall_1f
.end method
.method public addACL(Lcom/sun/mail/imap/ACL;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V
return-void
.end method
.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
.registers 10
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
array-length v0, p1
new-array v1, v0, [Ljavax/mail/internet/MimeMessage;
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
move-result-object v2
const/4 v0, 0x0
:goto_c
array-length v3, v2
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_28
if-lt v0, v3, :cond_11
monitor-exit p0
return-object v1
:cond_11
:try_start_11
aget-object v3, v2, v0
if-eqz v3, :cond_25
iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J
iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
:try_end_19
.catchall {:try_start_11 .. :try_end_19} :catchall_28
cmp-long v4, v4, v6
if-nez v4, :cond_25
:try_start_1d
iget-wide v3, v3, Lcom/sun/mail/imap/AppendUID;->uid:J
invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;
move-result-object v3
aput-object v3, v1, v0
:goto_25
:cond_25
:try_end_25
.catchall {:try_start_1d .. :try_end_25} :catchall_28
.catch Ljavax/mail/MessagingException; {:try_start_1d .. :try_end_25} :catch_2b
add-int/lit8 v0, v0, 0x1
goto :goto_c
:catchall_28
move-exception v0
monitor-exit p0
throw v0
:catch_2b
move-exception v3
goto :goto_25
.end method
.method public addRights(Lcom/sun/mail/imap/ACL;)V
.registers 3
const/16 v0, 0x2b
invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V
return-void
.end method
.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
.registers 9
const/4 v1, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I
move-result v2
move v3, v1
:goto_e
array-length v0, p1
:try_end_f
.catchall {:try_start_2 .. :try_end_f} :catchall_46
if-lt v3, v0, :cond_13
monitor-exit p0
return-void
:cond_13
:try_start_13
aget-object v4, p1, v3
:try_start_15
:try_end_15
.catchall {:try_start_13 .. :try_end_15} :catchall_46
new-instance v5, Lcom/sun/mail/imap/MessageLiteral;
invoke-virtual {v4}, Ljavax/mail/Message;->getSize()I
move-result v0
if-le v0, v2, :cond_3b
move v0, v1
:goto_1e
invoke-direct {v5, v4, v0}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
:try_start_21
:try_end_21
.catchall {:try_start_15 .. :try_end_21} :catchall_46
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_3d
.catch Ljavax/mail/MessageRemovedException; {:try_start_15 .. :try_end_21} :catch_49
invoke-virtual {v4}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;
move-result-object v0
if-nez v0, :cond_2b
invoke-virtual {v4}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;
move-result-object v0
:cond_2b
invoke-virtual {v4}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;
move-result-object v4
new-instance v6, Lcom/sun/mail/imap/IMAPFolder$10;
invoke-direct {v6, p0, v4, v0, v5}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V
invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:goto_37
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_e
:cond_3b
move v0, v2
goto :goto_1e
:catch_3d
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "IOException while appending messages"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:catchall_46
:try_end_46
.catchall {:try_start_21 .. :try_end_46} :catchall_46
move-exception v0
monitor-exit p0
throw v0
:catch_49
move-exception v0
goto :goto_37
.end method
.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
.registers 10
const/4 v1, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I
move-result v2
array-length v0, p1
new-array v4, v0, [Lcom/sun/mail/imap/AppendUID;
move v3, v1
:goto_11
array-length v0, p1
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_4e
if-lt v3, v0, :cond_16
monitor-exit p0
return-object v4
:cond_16
:try_start_16
aget-object v5, p1, v3
:try_end_18
.catchall {:try_start_16 .. :try_end_18} :catchall_4e
:try_start_18
new-instance v6, Lcom/sun/mail/imap/MessageLiteral;
invoke-virtual {v5}, Ljavax/mail/Message;->getSize()I
move-result v0
if-le v0, v2, :cond_43
move v0, v1
:goto_21
invoke-direct {v6, v5, v0}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
:try_start_24
:try_end_24
.catchall {:try_start_18 .. :try_end_24} :catchall_4e
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_45
.catch Ljavax/mail/MessageRemovedException; {:try_start_18 .. :try_end_24} :catch_51
invoke-virtual {v5}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;
move-result-object v0
if-nez v0, :cond_2e
invoke-virtual {v5}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;
move-result-object v0
:cond_2e
invoke-virtual {v5}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;
move-result-object v5
new-instance v7, Lcom/sun/mail/imap/IMAPFolder$11;
invoke-direct {v7, p0, v5, v0, v6}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V
invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/AppendUID;
aput-object v0, v4, v3
:goto_3f
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_11
:cond_43
move v0, v2
goto :goto_21
:catch_45
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "IOException while appending messages"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_4e
.catchall {:try_start_24 .. :try_end_4e} :catchall_4e
:catchall_4e
move-exception v0
monitor-exit p0
throw v0
:catch_51
move-exception v0
goto :goto_3f
.end method
.method public declared-synchronized close(Z)V
.registers 3
monitor-enter p0
const/4 v0, 0x0
:try_start_2
invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_7
monitor-exit p0
return-void
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
.registers 7
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
array-length v0, p1
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_55
if-nez v0, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;
move-result-object v0
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
if-ne v0, v1, :cond_81
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_start_14
:try_end_14
.catchall {:try_start_9 .. :try_end_14} :catchall_55
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v0
const/4 v2, 0x0
invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
move-result-object v2
if-nez v2, :cond_58
new-instance v0, Ljavax/mail/MessageRemovedException;
const-string v2, "Messages have been removed"
invoke-direct {v0, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_27
.catchall {:try_start_14 .. :try_end_27} :catchall_52
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_14 .. :try_end_27} :catch_27
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_14 .. :try_end_27} :catch_6b
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_14 .. :try_end_27} :catch_76
:catch_27
move-exception v0
:try_start_28
invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;
move-result-object v2
const-string v3, "TRYCREATE"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_61
new-instance v0, Ljavax/mail/FolderNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, " does not exist"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p2, v2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v0
:catchall_52
move-exception v0
monitor-exit v1
:try_start_54
:try_end_54
.catchall {:try_start_28 .. :try_end_54} :catchall_52
throw v0
:catchall_55
:try_end_55
.catchall {:try_start_54 .. :try_end_55} :catchall_55
move-exception v0
monitor-exit p0
throw v0
:cond_58
:try_start_58
invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
:try_end_5f
.catchall {:try_start_58 .. :try_end_5f} :catchall_52
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_58 .. :try_end_5f} :catch_27
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_58 .. :try_end_5f} :catch_6b
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_58 .. :try_end_5f} :catch_76
:try_start_5f
monitor-exit v1
goto :goto_7
:cond_61
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:catch_6b
move-exception v0
new-instance v2, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:catch_76
move-exception v0
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_81
.catchall {:try_start_5f .. :try_end_81} :catchall_52
:try_start_81
:cond_81
invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
:try_end_84
.catchall {:try_start_81 .. :try_end_84} :catchall_55
goto :goto_7
.end method
.method public declared-synchronized create(I)Z
.registers 5
const/4 v0, 0x0
monitor-enter p0
and-int/lit8 v1, p1, 0x1
if-nez v1, :cond_25
:try_start_6
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C
move-result v1
:goto_a
new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;
invoke-direct {v2, p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_12
.catchall {:try_start_6 .. :try_end_12} :catchall_22
move-result-object v1
if-nez v1, :cond_17
:cond_15
:goto_15
monitor-exit p0
return v0
:cond_17
:try_start_17
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z
move-result v0
if-eqz v0, :cond_15
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
:try_end_21
.catchall {:try_start_17 .. :try_end_21} :catchall_22
goto :goto_15
:catchall_22
move-exception v0
monitor-exit p0
throw v0
:cond_25
move v1, v0
goto :goto_a
.end method
.method public declared-synchronized delete(Z)Z
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V
if-eqz p1, :cond_f
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;
move-result-object v2
move v1, v0
:goto_c
array-length v3, v2
if-lt v1, v3, :cond_1c
:cond_f
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$8;
invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_17
.catchall {:try_start_2 .. :try_end_17} :catchall_30
move-result-object v1
if-nez v1, :cond_24
:goto_1a
monitor-exit p0
return v0
:try_start_1c
:cond_1c
aget-object v3, v2, v1
invoke-virtual {v3, p1}, Ljavax/mail/Folder;->delete(Z)Z
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_24
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
:try_end_2e
.catchall {:try_start_1c .. :try_end_2e} :catchall_30
const/4 v0, 0x1
goto :goto_1a
:catchall_30
move-exception v0
monitor-exit p0
throw v0
.end method
.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
.registers 5
:try_start_0
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_3
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_3} :catch_5
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_3} :catch_b
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
const/4 v0, 0x0
goto :goto_4
:catch_b
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_4
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_4} :catch_16
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_4} :catch_6
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_4} :catch_b
move-result-object v0
:goto_5
return-object v0
:catch_6
move-exception v1
invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
goto :goto_5
:catch_b
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:catch_16
move-exception v1
goto :goto_5
.end method
.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
.registers 6
:try_start_0
invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_3
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_3} :catch_5
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_3} :catch_c
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_3} :catch_12
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-direct {v1, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:catch_c
move-exception v0
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
const/4 v0, 0x0
goto :goto_4
:catch_12
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z
move-result v0
if-nez v0, :cond_23
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_start_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_20
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v0
invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
move-result-object v0
monitor-exit v1
:try_end_1b
.catchall {:try_start_12 .. :try_end_1b} :catchall_1d
:try_start_1b
monitor-exit p0
:try_end_1c
.catchall {:try_start_1b .. :try_end_1c} :catchall_20
:goto_1c
return-object v0
:catchall_1d
move-exception v0
:try_start_1e
monitor-exit v1
:try_start_1f
:try_end_1f
.catchall {:try_start_1e .. :try_end_1f} :catchall_1d
throw v0
:catchall_20
move-exception v0
monitor-exit p0
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_20
throw v0
:cond_23
:try_start_23
monitor-exit p0
:try_end_24
.catchall {:try_start_23 .. :try_end_24} :catchall_20
const/4 v1, 0x0
:try_start_25
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
:try_end_2c
.catchall {:try_start_25 .. :try_end_2c} :catchall_31
move-result-object v0
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
goto :goto_1c
:catchall_31
move-exception v0
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v0
.end method
.method public declared-synchronized exists()Z
.registers 6
monitor-enter p0
const/4 v0, 0x0
:try_start_2
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z
if-eqz v0, :cond_8a
iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
if-eqz v0, :cond_8a
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_22
new-instance v0, Lcom/sun/mail/imap/IMAPFolder$1;
invoke-direct {v0, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
if-eqz v0, :cond_8e
invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
move-result v1
aget-object v2, v0, v1
iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;
iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
aget-object v2, v0, v1
iget-char v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C
iput-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
iget-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
if-eqz v3, :cond_62
if-lez v2, :cond_62
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
add-int/lit8 v4, v2, -0x1
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
if-ne v3, v4, :cond_62
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
const/4 v4, 0x0
add-int/lit8 v2, v2, -0x1
invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
:cond_62
const/4 v2, 0x0
iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
aget-object v2, v0, v1
iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z
if-eqz v2, :cond_71
iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
or-int/lit8 v2, v2, 0x2
iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
:cond_71
aget-object v2, v0, v1
iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
if-eqz v2, :cond_7d
iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
or-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
:cond_7d
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
aget-object v0, v0, v1
iget-object v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
:goto_86
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
:try_end_88
.catchall {:try_start_2 .. :try_end_88} :catchall_96
monitor-exit p0
return v0
:cond_8a
:try_start_8a
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
move-object v1, v0
goto :goto_22
:cond_8e
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
:try_end_95
.catchall {:try_start_8a .. :try_end_95} :catchall_96
goto :goto_86
:catchall_96
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized expunge()[Ljavax/mail/Message;
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_8
move-result-object v0
monitor-exit p0
return-object v0
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
.registers 10
const/4 v0, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
if-eqz p1, :cond_19
new-instance v1, Ljavax/mail/FetchProfile;
invoke-direct {v1}, Ljavax/mail/FetchProfile;-><init>()V
sget-object v3, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;
invoke-virtual {v1, v3}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V
invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
:cond_19
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v3
:try_end_1c
.catchall {:try_start_2 .. :try_end_1c} :catchall_7c
const/4 v1, 0x0
:try_start_1d
iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
:try_start_1f
:try_end_1f
.catchall {:try_start_1d .. :try_end_1f} :catchall_79
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
if-eqz p1, :cond_53
invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
:goto_2c
:try_end_2c
.catchall {:try_start_1f .. :try_end_2c} :catchall_74
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1f .. :try_end_2c} :catch_57
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1f .. :try_end_2c} :catch_89
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1f .. :try_end_2c} :catch_94
const/4 v1, 0x1
:try_start_2d
iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
move v1, v0
:goto_30
:cond_30
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-lt v1, v0, :cond_9f
monitor-exit v3
:try_start_39
:try_end_39
.catchall {:try_start_2d .. :try_end_39} :catchall_79
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v0
new-array v0, v0, [Ljavax/mail/Message;
invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
array-length v1, v0
if-lez v1, :cond_51
const/4 v1, 0x1
invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
:cond_51
:try_end_51
.catchall {:try_start_39 .. :try_end_51} :catchall_7c
monitor-exit p0
return-object v0
:cond_53
:try_start_53
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
:try_end_56
.catchall {:try_start_53 .. :try_end_56} :catchall_74
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_53 .. :try_end_56} :catch_57
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_53 .. :try_end_56} :catch_89
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_53 .. :try_end_56} :catch_94
goto :goto_2c
:catch_57
move-exception v0
:try_start_58
iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
const/4 v2, 0x2
if-eq v1, v2, :cond_7f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cannot expunge READ_ONLY folder: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_74
:try_end_74
.catchall {:try_start_58 .. :try_end_74} :catchall_74
move-exception v0
const/4 v1, 0x1
:try_start_76
iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
throw v0
:catchall_79
move-exception v0
monitor-exit v3
:try_end_7b
.catchall {:try_start_76 .. :try_end_7b} :catchall_79
:try_start_7b
throw v0
:try_end_7c
.catchall {:try_start_7b .. :try_end_7c} :catchall_7c
:catchall_7c
move-exception v0
monitor-exit p0
throw v0
:cond_7f
:try_start_7f
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:catch_89
move-exception v0
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catch_94
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_9f
.catchall {:try_start_7f .. :try_end_9f} :catchall_74
:try_start_9f
:cond_9f
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z
move-result v4
if-eqz v4, :cond_cf
invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v4, v1}, Ljava/util/Vector;->removeElementAt(I)V
iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
if-eqz v4, :cond_30
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
move-result-wide v4
const-wide/16 v6, -0x1
cmp-long v0, v4, v6
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
new-instance v6, Ljava/lang/Long;
invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_30
:cond_cf
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v4
invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V
:try_end_d6
.catchall {:try_start_9f .. :try_end_d6} :catchall_79
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_30
.end method
.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized forceClose()V
.registers 3
monitor-enter p0
const/4 v0, 0x0
const/4 v1, 0x1
:try_start_3
invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getACL()[Lcom/sun/mail/imap/ACL;
.registers 3
const-string v0, "ACL not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$14;
invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/sun/mail/imap/ACL;
return-object v0
.end method
.method public getAttributes()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
if-nez v0, :cond_7
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z
:cond_7
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method public declared-synchronized getDeletedMessageCount()I
.registers 6
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_b
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_37
const/4 v0, -0x1
:goto_9
monitor-exit p0
return v0
:cond_b
:try_start_b
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
:try_start_15
:try_end_15
.catchall {:try_start_b .. :try_end_15} :catchall_37
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_18
.catchall {:try_start_15 .. :try_end_18} :catchall_37
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_15 .. :try_end_18} :catch_2c
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_15 .. :try_end_18} :catch_3a
:try_start_18
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v2
new-instance v3, Ljavax/mail/search/FlagTerm;
const/4 v4, 0x1
invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V
invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I
move-result-object v0
array-length v0, v0
monitor-exit v1
goto :goto_9
:catchall_29
move-exception v0
monitor-exit v1
:try_end_2b
.catchall {:try_start_18 .. :try_end_2b} :catchall_29
:try_start_2b
throw v0
:try_end_2c
.catchall {:try_start_2b .. :try_end_2c} :catchall_37
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_2c} :catch_2c
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_2c} :catch_3a
:catch_2c
move-exception v0
:try_start_2d
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catchall_37
:try_end_37
.catchall {:try_start_2d .. :try_end_37} :catchall_37
move-exception v0
monitor-exit p0
throw v0
:catch_3a
move-exception v0
:try_start_3b
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_45
.catchall {:try_start_3b .. :try_end_45} :catchall_37
.end method
.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
.registers 6
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
if-eqz v0, :cond_12
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z
move-result v0
if-nez v0, :cond_12
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "Cannot contain subfolders"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C
move-result v1
new-instance v2, Lcom/sun/mail/imap/IMAPFolder;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-direct {v2, v3, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
return-object v2
.end method
.method public declared-synchronized getFullName()Ljava/lang/String;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Message;
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-object v0
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method  getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
.registers 5
add-int/lit8 v0, p1, -0x1
move v1, v0
:goto_3
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
if-lt v1, v0, :cond_9
const/4 v0, 0x0
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v2
if-eq v2, p1, :cond_8
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3
.end method
.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
.registers 9
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_55
const/4 v0, 0x0
:try_start_5
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_55
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_8} :catch_4a
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_8} :catch_58
:try_start_8
new-instance v2, Ljava/lang/Long;
invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
if-eqz v3, :cond_1e
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
if-eqz v0, :cond_25
monitor-exit v1
:try_end_1c
.catchall {:try_start_8 .. :try_end_1c} :catchall_47
:goto_1c
monitor-exit p0
return-object v0
:try_start_1e
:cond_1e
new-instance v3, Ljava/util/Hashtable;
invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V
iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
:cond_25
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v3
invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;
move-result-object v3
if-eqz v3, :cond_45
iget v4, v3, Lcom/sun/mail/imap/protocol/UID;->seqnum:I
iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
if-gt v4, v5, :cond_45
iget v0, v3, Lcom/sun/mail/imap/protocol/UID;->seqnum:I
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v0
iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J
invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_45
monitor-exit v1
goto :goto_1c
:catchall_47
move-exception v0
monitor-exit v1
:try_end_49
.catchall {:try_start_1e .. :try_end_49} :catchall_47
:try_start_49
throw v0
:try_end_4a
.catchall {:try_start_49 .. :try_end_4a} :catchall_55
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_49 .. :try_end_4a} :catch_4a
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_49 .. :try_end_4a} :catch_58
:catch_4a
move-exception v0
:try_start_4b
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catchall_55
:try_end_55
.catchall {:try_start_4b .. :try_end_55} :catchall_55
move-exception v0
monitor-exit p0
throw v0
:catch_58
move-exception v0
:try_start_59
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_63
.catchall {:try_start_59 .. :try_end_63} :catchall_55
.end method
.method public declared-synchronized getMessageCount()I
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_50
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_25
:try_start_8
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;
move-result-object v0
iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->total:I
:try_end_e
.catchall {:try_start_8 .. :try_end_e} :catchall_25
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_10
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_38
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_45
:goto_e
monitor-exit p0
return v0
:catch_10
move-exception v0
const/4 v1, 0x0
:try_start_12
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
move-result-object v0
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
iget v0, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
:try_end_21
.catchall {:try_start_12 .. :try_end_21} :catchall_33
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_21} :catch_28
:try_start_21
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_25
goto :goto_e
:catchall_25
move-exception v0
monitor-exit p0
throw v0
:catch_28
move-exception v0
:try_start_29
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:catchall_33
:try_end_33
.catchall {:try_start_29 .. :try_end_33} :catchall_33
move-exception v0
:try_start_34
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v0
:catch_38
move-exception v0
new-instance v1, Ljavax/mail/StoreClosedException;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V
throw v1
:catch_45
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_50
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_53
.catchall {:try_start_34 .. :try_end_53} :catchall_25
const/4 v0, 0x1
:try_start_54
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
:try_start_59
:try_end_59
.catchall {:try_start_54 .. :try_end_59} :catchall_5b
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_54 .. :try_end_59} :catch_5e
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_54 .. :try_end_59} :catch_69
monitor-exit v1
goto :goto_e
:catchall_5b
move-exception v0
monitor-exit v1
:try_end_5d
.catchall {:try_start_59 .. :try_end_5d} :catchall_5b
:try_start_5d
throw v0
:try_end_5e
.catchall {:try_start_5d .. :try_end_5e} :catchall_25
:catch_5e
move-exception v0
:try_start_5f
new-instance v2, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:catch_69
move-exception v0
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_74
.catchall {:try_start_5f .. :try_end_74} :catchall_5b
.end method
.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
.registers 14
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
:try_start_4
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_54
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_start_7
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_54
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_49
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_57
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
if-nez v0, :cond_12
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
:cond_12
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v0
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;
move-result-object v2
array-length v0, v2
new-array v3, v0, [Ljavax/mail/Message;
const/4 v0, 0x0
:goto_1e
array-length v4, v2
if-lt v0, v4, :cond_24
monitor-exit v1
:try_end_22
.catchall {:try_start_7 .. :try_end_22} :catchall_46
monitor-exit p0
return-object v3
:cond_24
:try_start_24
aget-object v4, v2, v0
iget v4, v4, Lcom/sun/mail/imap/protocol/UID;->seqnum:I
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v4
aget-object v5, v2, v0
iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J
invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V
aput-object v4, v3, v0
iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
new-instance v6, Ljava/lang/Long;
aget-object v7, v2, v0
iget-wide v7, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J
invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:catchall_46
move-exception v0
monitor-exit v1
:try_end_48
.catchall {:try_start_24 .. :try_end_48} :catchall_46
:try_start_48
throw v0
:catch_49
:try_end_49
.catchall {:try_start_48 .. :try_end_49} :catchall_54
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_48 .. :try_end_49} :catch_49
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_48 .. :try_end_49} :catch_57
move-exception v0
:try_start_4a
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catchall_54
:try_end_54
.catchall {:try_start_4a .. :try_end_54} :catchall_54
move-exception v0
monitor-exit p0
throw v0
:catch_57
move-exception v0
:try_start_58
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_62
.catchall {:try_start_58 .. :try_end_62} :catchall_54
.end method
.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
.registers 11
const/4 v1, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
:try_start_5
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_a8
iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v4
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_a8
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_8} :catch_9d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_8} :catch_ab
:try_start_8
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
if-eqz v0, :cond_5c
new-instance v5, Ljava/util/Vector;
invoke-direct {v5}, Ljava/util/Vector;-><init>()V
move v0, v1
:goto_12
array-length v2, p1
if-lt v0, v2, :cond_37
invoke-virtual {v5}, Ljava/util/Vector;->size()I
move-result v6
new-array v2, v6, [J
move v3, v1
:goto_1c
if-lt v3, v6, :cond_4c
move-object v0, v2
:goto_1f
array-length v2, v0
if-lez v2, :cond_2e
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;
move-result-object v2
move v0, v1
:goto_2b
array-length v3, v2
if-lt v0, v3, :cond_65
:cond_2e
array-length v0, p1
new-array v2, v0, [Ljavax/mail/Message;
:goto_31
array-length v0, p1
if-lt v1, v0, :cond_85
monitor-exit v4
:try_end_35
.catchall {:try_start_8 .. :try_end_35} :catchall_9a
monitor-exit p0
return-object v2
:cond_37
:try_start_37
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
new-instance v3, Ljava/lang/Long;
aget-wide v6, p1, v0
invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_49
invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_49
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_4c
invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v7
aput-wide v7, v2, v3
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_1c
:cond_5c
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
move-object v0, p1
goto :goto_1f
:cond_65
aget-object v3, v2, v0
iget v3, v3, Lcom/sun/mail/imap/protocol/UID;->seqnum:I
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v3
aget-object v5, v2, v0
iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J
invoke-virtual {v3, v5, v6}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V
iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
new-instance v6, Ljava/lang/Long;
aget-object v7, v2, v0
iget-wide v7, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J
invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v5, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_85
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
new-instance v3, Ljava/lang/Long;
aget-wide v5, p1, v1
invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Message;
aput-object v0, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_31
:catchall_9a
move-exception v0
monitor-exit v4
:try_end_9c
.catchall {:try_start_37 .. :try_end_9c} :catchall_9a
:try_start_9c
throw v0
:try_end_9d
.catchall {:try_start_9c .. :try_end_9d} :catchall_a8
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9c .. :try_end_9d} :catch_9d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9c .. :try_end_9d} :catch_ab
:catch_9d
move-exception v0
:try_start_9e
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:try_end_a8
.catchall {:try_start_9e .. :try_end_a8} :catchall_a8
:catchall_a8
move-exception v0
monitor-exit p0
throw v0
:catch_ab
move-exception v0
:try_start_ac
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_b6
.catchall {:try_start_ac .. :try_end_b6} :catchall_a8
.end method
.method public declared-synchronized getName()Ljava/lang/String;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1d
if-nez v0, :cond_19
:try_start_5
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
:try_end_19
.catchall {:try_start_5 .. :try_end_19} :catchall_1d
.catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_19} :catch_20
:goto_19
:cond_19
:try_start_19
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
:try_end_1b
.catchall {:try_start_19 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-object v0
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
:catch_20
move-exception v0
goto :goto_19
.end method
.method public declared-synchronized getNewMessageCount()I
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_50
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_25
:try_start_8
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;
move-result-object v0
iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
:try_end_e
.catchall {:try_start_8 .. :try_end_e} :catchall_25
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_10
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_38
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_45
:goto_e
monitor-exit p0
return v0
:catch_10
move-exception v0
const/4 v1, 0x0
:try_start_12
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
move-result-object v0
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
iget v0, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
:try_end_21
.catchall {:try_start_12 .. :try_end_21} :catchall_33
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_21} :catch_28
:try_start_21
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_25
goto :goto_e
:catchall_25
move-exception v0
monitor-exit p0
throw v0
:catch_28
move-exception v0
:try_start_29
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:catchall_33
:try_end_33
.catchall {:try_start_29 .. :try_end_33} :catchall_33
move-exception v0
:try_start_34
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v0
:catch_38
move-exception v0
new-instance v1, Ljavax/mail/StoreClosedException;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V
throw v1
:catch_45
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_50
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_53
.catchall {:try_start_34 .. :try_end_53} :catchall_25
const/4 v0, 0x1
:try_start_54
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
:try_start_59
:try_end_59
.catchall {:try_start_54 .. :try_end_59} :catchall_5b
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_54 .. :try_end_59} :catch_5e
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_54 .. :try_end_59} :catch_69
monitor-exit v1
goto :goto_e
:catchall_5b
move-exception v0
monitor-exit v1
:try_end_5d
.catchall {:try_start_59 .. :try_end_5d} :catchall_5b
:try_start_5d
throw v0
:try_end_5e
.catchall {:try_start_5d .. :try_end_5e} :catchall_25
:catch_5e
move-exception v0
:try_start_5f
new-instance v2, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:catch_69
move-exception v0
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_74
.catchall {:try_start_5f .. :try_end_74} :catchall_5b
.end method
.method public declared-synchronized getParent()Ljavax/mail/Folder;
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C
move-result v2
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_21
new-instance v1, Lcom/sun/mail/imap/IMAPFolder;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-direct {v1, v3, v2, v0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_2c
move-object v0, v1
:goto_1f
monitor-exit p0
return-object v0
:cond_21
:try_start_21
new-instance v1, Lcom/sun/mail/imap/DefaultFolder;
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-direct {v1, v0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
:try_end_2a
.catchall {:try_start_21 .. :try_end_2a} :catchall_2c
move-object v0, v1
goto :goto_1f
:catchall_2c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-object v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getQuota()[Ljavax/mail/Quota;
.registers 3
const-string v0, "QUOTA not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$12;
invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljavax/mail/Quota;
return-object v0
.end method
.method public declared-synchronized getSeparator()C
.registers 3
monitor-enter p0
:try_start_1
iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
const v1, 0xffff
if-ne v0, v1, :cond_1f
const/4 v0, 0x0
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
new-instance v0, Lcom/sun/mail/imap/IMAPFolder$3;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
if-eqz v0, :cond_23
const/4 v1, 0x0
aget-object v0, v0, v1
iget-char v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C
iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
:goto_1f
:cond_1f
iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
:try_end_21
.catchall {:try_start_1 .. :try_end_21} :catchall_28
monitor-exit p0
return v0
:cond_23
const/16 v0, 0x2f
:try_start_25
iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
:try_end_27
.catchall {:try_start_25 .. :try_end_27} :catchall_28
goto :goto_1f
:catchall_28
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
const-string v1, "DEBUG: getStoreProtocol() - borrowing a connection"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_c
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_16
move-result-object v0
monitor-exit p0
return-object v0
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getType()I
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z
:cond_c
:goto_c
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_14
monitor-exit p0
return v0
:cond_10
:try_start_10
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
:try_end_13
.catchall {:try_start_10 .. :try_end_13} :catchall_14
goto :goto_c
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getUID(Ljavax/mail/Message;)J
.registers 7
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;
move-result-object v0
if-eq v0, p0, :cond_12
new-instance v0, Ljava/util/NoSuchElementException;
const-string v1, "Message does not belong to this folder"
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_f
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_f
move-exception v0
monitor-exit p0
throw v0
:cond_12
:try_start_12
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
check-cast p1, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
:try_end_1a
.catchall {:try_start_12 .. :try_end_1a} :catchall_f
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v2, v0, v2
if-eqz v2, :cond_23
:goto_21
monitor-exit p0
return-wide v0
:cond_23
:try_start_23
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v2
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_f
:try_start_26
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v3
invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V
invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v4
invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
move-result-object v3
if-eqz v3, :cond_51
iget-wide v0, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
if-nez v3, :cond_47
new-instance v3, Ljava/util/Hashtable;
invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V
iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
:cond_47
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
new-instance v4, Ljava/lang/Long;
invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_51
:try_start_51
:try_end_51
.catchall {:try_start_26 .. :try_end_51} :catchall_53
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_26 .. :try_end_51} :catch_56
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_26 .. :try_end_51} :catch_61
monitor-exit v2
goto :goto_21
:catchall_53
move-exception v0
monitor-exit v2
:try_start_55
:try_end_55
.catchall {:try_start_51 .. :try_end_55} :catchall_53
throw v0
:try_end_56
.catchall {:try_start_55 .. :try_end_56} :catchall_f
:catch_56
move-exception v0
:try_start_57
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catch_61
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_6c
.catchall {:try_start_57 .. :try_end_6c} :catchall_53
.end method
.method public declared-synchronized getUIDNext()J
.registers 6
const/4 v2, 0x0
monitor-enter p0
:try_start_2
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_a
iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_31
:goto_8
monitor-exit p0
return-wide v0
:cond_a
:try_start_a
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
:try_end_d
.catchall {:try_start_a .. :try_end_d} :catchall_49
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_d} :catch_22
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_d} :catch_34
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_3d
move-result-object v1
const/4 v0, 0x1
:try_start_f
new-array v0, v0, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "UIDNEXT"
aput-object v4, v0, v3
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
:try_end_1b
.catchall {:try_start_f .. :try_end_1b} :catchall_2c
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_f .. :try_end_1b} :catch_50
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_1b} :catch_4e
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_1b} :catch_4c
move-result-object v2
:try_start_1c
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:goto_1f
iget-wide v0, v2, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
:try_end_21
.catchall {:try_start_1c .. :try_end_21} :catchall_31
goto :goto_8
:catch_22
move-exception v0
move-object v1, v2
:goto_24
:try_start_24
new-instance v2, Ljavax/mail/MessagingException;
const-string v3, "Cannot obtain UIDNext"
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:catchall_2c
:try_end_2c
.catchall {:try_start_24 .. :try_end_2c} :catchall_2c
move-exception v0
:try_start_2d
:goto_2d
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v0
:catchall_31
:try_end_31
.catchall {:try_start_2d .. :try_end_31} :catchall_31
move-exception v0
monitor-exit p0
throw v0
:catch_34
move-exception v0
move-object v1, v2
:goto_36
:try_start_36
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
:try_start_39
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_2c
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_31
goto :goto_1f
:catch_3d
move-exception v0
move-object v1, v2
:try_start_3f
:goto_3f
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_49
.catchall {:try_start_3f .. :try_end_49} :catchall_2c
:catchall_49
move-exception v0
move-object v1, v2
goto :goto_2d
:catch_4c
move-exception v0
goto :goto_3f
:catch_4e
move-exception v0
goto :goto_36
:catch_50
move-exception v0
goto :goto_24
.end method
.method public declared-synchronized getUIDValidity()J
.registers 6
const/4 v2, 0x0
monitor-enter p0
:try_start_2
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_a
iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_31
:goto_8
monitor-exit p0
return-wide v0
:cond_a
:try_start_a
invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
:try_end_d
.catchall {:try_start_a .. :try_end_d} :catchall_49
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_d} :catch_22
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_d} :catch_34
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_3d
move-result-object v1
const/4 v0, 0x1
:try_start_f
new-array v0, v0, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "UIDVALIDITY"
aput-object v4, v0, v3
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v1, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
:try_end_1b
.catchall {:try_start_f .. :try_end_1b} :catchall_2c
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_f .. :try_end_1b} :catch_50
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_1b} :catch_4e
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_1b} :catch_4c
move-result-object v2
:try_start_1c
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:goto_1f
iget-wide v0, v2, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
:try_end_21
.catchall {:try_start_1c .. :try_end_21} :catchall_31
goto :goto_8
:catch_22
move-exception v0
move-object v1, v2
:goto_24
:try_start_24
new-instance v2, Ljavax/mail/MessagingException;
const-string v3, "Cannot obtain UIDValidity"
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:catchall_2c
:try_end_2c
.catchall {:try_start_24 .. :try_end_2c} :catchall_2c
move-exception v0
:try_start_2d
:goto_2d
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
throw v0
:catchall_31
:try_end_31
.catchall {:try_start_2d .. :try_end_31} :catchall_31
move-exception v0
monitor-exit p0
throw v0
:catch_34
move-exception v0
move-object v1, v2
:goto_36
:try_start_36
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
:try_start_39
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_2c
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_31
goto :goto_1f
:catch_3d
move-exception v0
move-object v1, v2
:try_start_3f
:goto_3f
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_49
.catchall {:try_start_3f .. :try_end_49} :catchall_2c
:catchall_49
move-exception v0
move-object v1, v2
goto :goto_2d
:catch_4c
move-exception v0
goto :goto_3f
:catch_4e
move-exception v0
goto :goto_36
:catch_50
move-exception v0
goto :goto_24
.end method
.method public declared-synchronized getUnreadMessageCount()I
.registers 6
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-nez v0, :cond_2e
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_20
:try_start_8
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;
move-result-object v0
iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I
:try_end_e
.catchall {:try_start_8 .. :try_end_e} :catchall_20
.catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_10
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_13
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_23
:goto_e
monitor-exit p0
return v0
:catch_10
move-exception v0
const/4 v0, -0x1
goto :goto_e
:catch_13
move-exception v0
:try_start_14
new-instance v1, Ljavax/mail/StoreClosedException;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V
throw v1
:try_end_20
.catchall {:try_start_14 .. :try_end_20} :catchall_20
:catchall_20
move-exception v0
monitor-exit p0
throw v0
:catch_23
move-exception v0
:try_start_24
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_2e
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;
invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
:try_start_38
:try_end_38
.catchall {:try_start_24 .. :try_end_38} :catchall_20
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_20
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_38 .. :try_end_3b} :catch_4f
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_38 .. :try_end_3b} :catch_5a
:try_start_3b
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v2
new-instance v3, Ljavax/mail/search/FlagTerm;
const/4 v4, 0x0
invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V
invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I
move-result-object v0
array-length v0, v0
monitor-exit v1
goto :goto_e
:catchall_4c
move-exception v0
monitor-exit v1
:try_start_4e
:try_end_4e
.catchall {:try_start_3b .. :try_end_4e} :catchall_4c
throw v0
:try_end_4f
.catchall {:try_start_4e .. :try_end_4f} :catchall_20
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4e .. :try_end_4f} :catch_4f
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4e .. :try_end_4f} :catch_5a
:catch_4f
move-exception v0
:try_start_50
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catch_5a
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_65
.catchall {:try_start_50 .. :try_end_65} :catchall_20
.end method
.method public handleResponse(Lcom/sun/mail/iap/Response;)V
.registers 8
const/4 v5, 0x1
const/4 v2, 0x0
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_14
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_14
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_14
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-nez v0, :cond_2c
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z
move-result v0
if-nez v0, :cond_2c
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z
move-result v0
if-nez v0, :cond_2c
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v0
if-eqz v0, :cond_33
:cond_2c
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V
:cond_33
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z
move-result v0
if-eqz v0, :cond_41
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v0, :cond_40
invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V
:cond_40
:goto_40
return-void
:cond_41
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z
move-result v0
if-nez v0, :cond_40
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z
move-result v0
if-eqz v0, :cond_40
instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;
if-nez v0, :cond_71
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "UNEXPECTED RESPONSE : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;
const-string v1, "CONTACT javamail@sun.com"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_40
:cond_71
check-cast p1, Lcom/sun/mail/imap/protocol/IMAPResponse;
const-string v0, "EXISTS"
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ab
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I
move-result v0
iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
if-le v0, v1, :cond_40
iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
sub-int v1, v0, v1
new-array v3, v1, [Ljavax/mail/Message;
move v0, v2
:goto_8a
if-lt v0, v1, :cond_90
invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V
goto :goto_40
:cond_90
new-instance v2, Lcom/sun/mail/imap/IMAPMessage;
iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
invoke-direct {v2, p0, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V
aput-object v2, v3, v0
iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_8a
:cond_ab
const-string v0, "EXPUNGE"
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f6
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I
move-result v0
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v3
invoke-virtual {v3, v5}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V
invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getMessageNumber()I
move-result v0
move v1, v0
:goto_c3
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
if-lt v1, v0, :cond_da
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
if-eqz v0, :cond_40
new-array v0, v5, [Ljavax/mail/Message;
aput-object v3, v0, v2
invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
goto/16 :goto_40
:cond_da
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/IMAPMessage;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z
move-result v4
if-eqz v4, :cond_ec
:goto_e8
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c3
:cond_ec
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPMessage;->setSequenceNumber(I)V
goto :goto_e8
:cond_f6
const-string v0, "FETCH"
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12c
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_10e
instance-of v0, p1, Lcom/sun/mail/imap/protocol/FetchResponse;
if-nez v0, :cond_10e
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "!ir instanceof FetchResponse"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_10e
check-cast p1, Lcom/sun/mail/imap/protocol/FetchResponse;
const-class v0, Ljavax/mail/Flags;
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
move-result-object v0
check-cast v0, Ljavax/mail/Flags;
if-eqz v0, :cond_40
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I
move-result v1
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v1
if-eqz v1, :cond_40
invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V
invoke-virtual {p0, v5, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V
goto/16 :goto_40
:cond_12c
const-string v0, "RECENT"
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_40
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I
move-result v0
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
goto/16 :goto_40
.end method
.method  handleResponses([Lcom/sun/mail/iap/Response;)V
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p1
if-lt v0, v1, :cond_5
return-void
:cond_5
aget-object v1, p1, v0
if-eqz v1, :cond_e
aget-object v1, p1, v0
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V
:cond_e
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public declared-synchronized hasNewMessages()Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
monitor-enter p0
:try_start_3
iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
if-eqz v2, :cond_33
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v2
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_23
const/4 v3, 0x1
:try_start_b
invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
:try_end_e
.catchall {:try_start_b .. :try_end_e} :catchall_20
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_e} :catch_15
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_e} :catch_26
:try_start_e
iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
if-lez v3, :cond_31
:goto_12
monitor-exit v2
:goto_13
:try_end_13
.catchall {:try_start_e .. :try_end_13} :catchall_20
monitor-exit p0
return v0
:catch_15
move-exception v0
:try_start_16
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catchall_20
move-exception v0
monitor-exit v2
:try_start_22
:try_end_22
.catchall {:try_start_16 .. :try_end_22} :catchall_20
throw v0
:try_end_23
.catchall {:try_start_22 .. :try_end_23} :catchall_23
:catchall_23
move-exception v0
monitor-exit p0
throw v0
:catch_26
move-exception v0
:try_start_27
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_31
:try_end_31
.catchall {:try_start_27 .. :try_end_31} :catchall_20
move v0, v1
goto :goto_12
:cond_33
:try_start_33
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
new-instance v0, Lcom/sun/mail/imap/IMAPFolder$7;
invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_45
move v0, v1
goto :goto_13
:cond_45
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_48
.catchall {:try_start_33 .. :try_end_48} :catchall_23
move-result v0
goto :goto_13
.end method
.method public idle()V
.registers 4
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_10
invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
monitor-enter p0
:try_start_11
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
const-string v0, "IDLE not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$19;
invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_29
monitor-exit p0
:cond_28
:goto_28
return-void
:cond_29
monitor-exit p0
:goto_2a
:try_end_2a
.catchall {:try_start_11 .. :try_end_2a} :catchall_5b
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;
move-result-object v0
:try_start_30
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_33
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_30 .. :try_end_33} :catch_63
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_30 .. :try_end_33} :catch_68
if-eqz v0, :cond_41
:try_start_35
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eqz v2, :cond_41
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z
move-result v0
if-nez v0, :cond_5e
:cond_41
const/4 v0, 0x0
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_4a
.catchall {:try_start_35 .. :try_end_4a} :catchall_60
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I
move-result v0
if-lez v0, :cond_28
int-to-long v0, v0
:try_start_55
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_58
.catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_59
goto :goto_28
:catch_59
move-exception v0
goto :goto_28
:catchall_5b
move-exception v0
:try_start_5c
monitor-exit p0
:try_end_5d
.catchall {:try_start_5c .. :try_end_5d} :catchall_5b
throw v0
:cond_5e
:try_start_5e
monitor-exit v1
goto :goto_2a
:catchall_60
move-exception v0
monitor-exit v1
:try_end_62
.catchall {:try_start_5e .. :try_end_62} :catchall_60
:try_start_62
throw v0
:try_end_63
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_62 .. :try_end_63} :catch_63
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_62 .. :try_end_63} :catch_68
:catch_63
move-exception v0
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
goto :goto_2a
:catch_68
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public declared-synchronized isOpen()Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_start_4
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_14
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_11
if-eqz v0, :cond_c
const/4 v0, 0x0
:try_start_9
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_11
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_17
:cond_c
:goto_c
:try_start_c
monitor-exit v1
:try_end_d
.catchall {:try_start_c .. :try_end_d} :catchall_11
:try_start_d
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
:try_end_f
.catchall {:try_start_d .. :try_end_f} :catchall_14
monitor-exit p0
return v0
:catchall_11
move-exception v0
:try_start_12
monitor-exit v1
:try_start_13
:try_end_13
.catchall {:try_start_12 .. :try_end_13} :catchall_11
throw v0
:try_end_14
.catchall {:try_start_13 .. :try_end_14} :catchall_14
:catchall_14
move-exception v0
monitor-exit p0
throw v0
:catch_17
move-exception v0
goto :goto_c
.end method
.method public declared-synchronized isSubscribed()Z
.registers 5
monitor-enter p0
const/4 v1, 0x0
:try_start_2
check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;
iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z
if-eqz v2, :cond_3b
iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
if-eqz v2, :cond_3b
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_20
.catchall {:try_start_2 .. :try_end_20} :catchall_41
move-result-object v2
move-object v3, v2
:goto_22
:try_start_22
new-instance v2, Lcom/sun/mail/imap/IMAPFolder$4;
invoke-direct {v2, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v2
move-object v0, v2
check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;
move-object v1, v0
:try_end_2f
.catchall {:try_start_22 .. :try_end_2f} :catchall_41
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_22 .. :try_end_2f} :catch_44
:goto_2f
if-eqz v1, :cond_3f
:try_start_31
invoke-direct {p0, v1, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
move-result v2
aget-object v1, v1, v2
iget-boolean v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
:goto_39
:try_end_39
.catchall {:try_start_31 .. :try_end_39} :catchall_41
monitor-exit p0
return v1
:try_start_3b
:cond_3b
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
:try_end_3d
.catchall {:try_start_3b .. :try_end_3d} :catchall_41
move-object v3, v2
goto :goto_22
:cond_3f
const/4 v1, 0x0
goto :goto_39
:catchall_41
move-exception v1
monitor-exit p0
throw v1
:catch_44
move-exception v2
goto :goto_2f
.end method
.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
move-result-object v0
return-object v0
.end method
.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
.registers 4
const-string v0, "ACL not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$16;
invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/sun/mail/imap/Rights;
return-object v0
.end method
.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
move-result-object v0
return-object v0
.end method
.method public myRights()Lcom/sun/mail/imap/Rights;
.registers 3
const-string v0, "ACL not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$17;
invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/sun/mail/imap/Rights;
return-object v0
.end method
.method public declared-synchronized open(I)V
.registers 9
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v5, 0x1
monitor-enter p0
:try_start_4
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v4
:try_start_14
:try_end_14
.catchall {:try_start_4 .. :try_end_14} :catchall_80
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
:try_end_19
.catchall {:try_start_14 .. :try_end_19} :catchall_97
if-ne p1, v5, :cond_83
:try_start_1b
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
:try_end_22
.catchall {:try_start_1b .. :try_end_22} :catchall_97
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1b .. :try_end_22} :catch_8d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1b .. :try_end_22} :catch_9a
move-result-object v0
move-object v3, v0
:goto_24
:try_start_24
iget v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
if-eq v0, p1, :cond_39
const/4 v0, 0x2
if-ne p1, v0, :cond_b1
iget v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
if-ne v0, v5, :cond_b1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z
move-result v0
if-eqz v0, :cond_b1
:cond_39
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z
iget v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
iget-object v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;
iget-object v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
iget v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
iget v0, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
iget-wide v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J
iput-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
iget-wide v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J
iput-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
new-instance v0, Ljava/util/Vector;
iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
move v0, v2
:goto_67
iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
if-lt v0, v2, :cond_de
monitor-exit v4
:try_end_6c
.catchall {:try_start_24 .. :try_end_6c} :catchall_97
move-object v0, v1
:goto_6d
if-eqz v0, :cond_fa
:try_start_6f
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
and-int/lit8 v1, v1, 0x1
if-nez v1, :cond_f0
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "folder cannot contain messages"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_80
.catchall {:try_start_6f .. :try_end_80} :catchall_80
:catchall_80
move-exception v0
monitor-exit p0
throw v0
:cond_83
:try_start_83
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
:try_end_8a
.catchall {:try_start_83 .. :try_end_8a} :catchall_97
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_83 .. :try_end_8a} :catch_8d
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_83 .. :try_end_8a} :catch_9a
move-result-object v0
move-object v3, v0
goto :goto_24
:catch_8d
move-exception v0
const/4 v1, 0x1
:try_start_8f
invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
monitor-exit v4
goto :goto_6d
:catchall_97
move-exception v0
monitor-exit v4
:try_start_99
:try_end_99
.catchall {:try_start_8f .. :try_end_99} :catchall_97
throw v0
:try_end_9a
.catchall {:try_start_99 .. :try_end_9a} :catchall_80
:catch_9a
move-exception v0
:try_start_9b
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
:try_end_a0
.catchall {:try_start_9b .. :try_end_a0} :catchall_109
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9b .. :try_end_a0} :catch_10b
:goto_a0
const/4 v1, 0x0
:try_start_a1
invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_b1
:try_end_b1
.catchall {:try_start_a1 .. :try_end_b1} :catchall_97
:try_start_b1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
:goto_ba
:try_end_ba
.catchall {:try_start_b1 .. :try_end_ba} :catchall_d0
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b1 .. :try_end_ba} :catch_c5
const/4 v0, 0x0
:try_start_bb
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
new-instance v0, Ljavax/mail/ReadOnlyFolderException;
const-string v1, "Cannot open in desired mode"
invoke-direct {v0, p0, v1}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v0
:try_end_c5
.catchall {:try_start_bb .. :try_end_c5} :catchall_97
:catch_c5
move-exception v0
:try_start_c6
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
:try_end_cb
.catchall {:try_start_c6 .. :try_end_cb} :catchall_d8
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c6 .. :try_end_cb} :catch_d2
const/4 v0, 0x0
:try_start_cc
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
goto :goto_ba
:catchall_d0
move-exception v0
goto :goto_ba
:catch_d2
move-exception v0
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
goto :goto_ba
:catchall_d8
move-exception v0
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
throw v0
:try_end_de
.catchall {:try_start_cc .. :try_end_de} :catchall_d0
:cond_de
:try_start_de
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;
new-instance v3, Lcom/sun/mail/imap/IMAPMessage;
add-int/lit8 v5, v0, 0x1
add-int/lit8 v6, v0, 0x1
invoke-direct {v3, p0, v5, v6}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V
invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_ec
.catchall {:try_start_de .. :try_end_ec} :catchall_97
add-int/lit8 v0, v0, 0x1
goto/16 :goto_67
:cond_f0
:try_start_f0
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_fa
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
const/4 v0, 0x1
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
:try_end_107
.catchall {:try_start_f0 .. :try_end_107} :catchall_80
monitor-exit p0
return-void
:catchall_109
move-exception v1
goto :goto_a0
:catch_10b
move-exception v1
goto :goto_a0
.end method
.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
if-eq p1, v0, :cond_c
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
check-cast v0, Lcom/sun/mail/imap/IMAPStore;
invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
:cond_c
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-void
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public removeACL(Ljava/lang/String;)V
.registers 4
const-string v0, "ACL not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$15;
invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
return-void
.end method
.method public removeRights(Lcom/sun/mail/imap/ACL;)V
.registers 3
const/16 v0, 0x2d
invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V
return-void
.end method
.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
.registers 5
const/4 v0, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;
move-result-object v1
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;
if-eq v1, v2, :cond_1b
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "Can\'t rename across Stores"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_18
.catchall {:try_start_2 .. :try_end_18} :catchall_18
:catchall_18
move-exception v0
monitor-exit p0
throw v0
:try_start_1b
:cond_1b
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$9;
invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V
invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_23
.catchall {:try_start_1b .. :try_end_23} :catchall_18
move-result-object v1
if-nez v1, :cond_28
:goto_26
monitor-exit p0
return v0
:cond_28
const/4 v0, 0x0
:try_start_29
iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
:try_end_31
.catchall {:try_start_29 .. :try_end_31} :catchall_18
const/4 v0, 0x1
goto :goto_26
.end method
.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
.registers 7
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_43
const/4 v0, 0x0
:try_start_5
check-cast v0, [Ljavax/mail/Message;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v2
:try_start_a
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_43
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_a} :catch_2c
.catch Ljavax/mail/search/SearchException; {:try_start_5 .. :try_end_a} :catch_32
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_a} :catch_38
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_a} :catch_46
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I
move-result-object v3
if-eqz v3, :cond_1b
array-length v0, v3
new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;
const/4 v1, 0x0
:goto_18
array-length v4, v3
if-lt v1, v4, :cond_1e
:cond_1b
monitor-exit v2
:try_end_1c
.catchall {:try_start_a .. :try_end_1c} :catchall_29
:goto_1c
monitor-exit p0
return-object v0
:try_start_1e
:cond_1e
aget v4, v3, v1
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v4
aput-object v4, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_18
:catchall_29
move-exception v0
monitor-exit v2
:try_start_2b
:try_end_2b
.catchall {:try_start_1e .. :try_end_2b} :catchall_29
throw v0
:catch_2c
:try_end_2c
.catchall {:try_start_2b .. :try_end_2c} :catchall_43
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2b .. :try_end_2c} :catch_2c
.catch Ljavax/mail/search/SearchException; {:try_start_2b .. :try_end_2c} :catch_32
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_2c} :catch_38
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_2c} :catch_46
move-exception v0
:try_start_2d
invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
move-result-object v0
goto :goto_1c
:catch_32
move-exception v0
invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
move-result-object v0
goto :goto_1c
:catch_38
move-exception v0
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:try_end_43
.catchall {:try_start_2d .. :try_end_43} :catchall_43
:catchall_43
move-exception v0
monitor-exit p0
throw v0
:catch_46
move-exception v0
:try_start_47
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_51
.catchall {:try_start_47 .. :try_end_51} :catchall_43
.end method
.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
.registers 8
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
array-length v0, p2
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_57
if-nez v0, :cond_9
:goto_7
monitor-exit p0
return-object p2
:cond_9
const/4 v0, 0x0
:try_start_a
check-cast v0, [Ljavax/mail/Message;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v2
:try_start_f
:try_end_f
.catchall {:try_start_a .. :try_end_f} :catchall_57
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_a .. :try_end_f} :catch_25
.catch Ljavax/mail/search/SearchException; {:try_start_a .. :try_end_f} :catch_46
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_f} :catch_4c
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_f} :catch_5a
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v1
const/4 v3, 0x0
invoke-static {p2, v3}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
move-result-object v3
if-nez v3, :cond_2b
new-instance v0, Ljavax/mail/MessageRemovedException;
const-string v1, "Messages have been removed"
invoke-direct {v0, v1}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_22
move-exception v0
monitor-exit v2
:try_end_24
.catchall {:try_start_f .. :try_end_24} :catchall_22
:try_start_24
throw v0
:try_end_25
.catchall {:try_start_24 .. :try_end_25} :catchall_57
.catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_24 .. :try_end_25} :catch_25
.catch Ljavax/mail/search/SearchException; {:try_start_24 .. :try_end_25} :catch_46
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_24 .. :try_end_25} :catch_4c
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_24 .. :try_end_25} :catch_5a
:catch_25
move-exception v0
:try_start_26
invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
:try_end_29
.catchall {:try_start_26 .. :try_end_29} :catchall_57
move-result-object p2
goto :goto_7
:try_start_2b
:cond_2b
invoke-virtual {v1, v3, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
move-result-object v3
if-eqz v3, :cond_38
array-length v0, v3
new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;
const/4 v1, 0x0
:goto_35
array-length v4, v3
if-lt v1, v4, :cond_3b
:cond_38
monitor-exit v2
move-object p2, v0
goto :goto_7
:cond_3b
aget v4, v3, v1
invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
move-result-object v4
aput-object v4, v0, v1
:try_end_43
.catchall {:try_start_2b .. :try_end_43} :catchall_22
add-int/lit8 v1, v1, 0x1
goto :goto_35
:catch_46
move-exception v0
:try_start_47
invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
move-result-object p2
goto :goto_7
:catch_4c
move-exception v0
new-instance v1, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v1
:catchall_57
:try_end_57
.catchall {:try_start_47 .. :try_end_57} :catchall_57
move-exception v0
monitor-exit p0
throw v0
:catch_5a
move-exception v0
:try_start_5b
new-instance v1, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_end_65
.catchall {:try_start_5b .. :try_end_65} :catchall_57
.end method
.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
.registers 8
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V
array-length v0, p1
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_30
if-nez v0, :cond_c
:goto_a
monitor-exit p0
return-void
:cond_c
:try_start_c
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
monitor-enter v1
:try_end_f
.catchall {:try_start_c .. :try_end_f} :catchall_30
:try_start_f
invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
move-result-object v0
const/4 v2, 0x0
invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
move-result-object v2
if-nez v2, :cond_33
new-instance v0, Ljavax/mail/MessageRemovedException;
const-string v2, "Messages have been removed"
invoke-direct {v0, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_22
.catchall {:try_start_f .. :try_end_22} :catchall_2d
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_22} :catch_22
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_22} :catch_38
:catch_22
move-exception v0
:try_start_23
new-instance v2, Ljavax/mail/FolderClosedException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V
throw v2
:catchall_2d
move-exception v0
monitor-exit v1
:try_end_2f
.catchall {:try_start_23 .. :try_end_2f} :catchall_2d
:try_start_2f
throw v0
:catchall_30
:try_end_30
.catchall {:try_start_2f .. :try_end_30} :catchall_30
move-exception v0
monitor-exit p0
throw v0
:cond_33
:try_start_33
invoke-virtual {v0, v2, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_2d
.catch Lcom/sun/mail/iap/ConnectionException; {:try_start_33 .. :try_end_36} :catch_22
.catch Lcom/sun/mail/iap/ProtocolException; {:try_start_33 .. :try_end_36} :catch_38
:try_start_36
monitor-exit v1
goto :goto_a
:catch_38
move-exception v0
new-instance v2, Ljavax/mail/MessagingException;
invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
:try_end_43
.catchall {:try_start_36 .. :try_end_43} :catchall_2d
.end method
.method public setQuota(Ljavax/mail/Quota;)V
.registers 4
const-string v0, "QUOTA not supported"
new-instance v1, Lcom/sun/mail/imap/IMAPFolder$13;
invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
return-void
.end method
.method public declared-synchronized setSubscribed(Z)V
.registers 3
monitor-enter p0
:try_start_1
new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;
invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V
invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method  waitIfIdle()V
.registers 3
sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z
if-nez v0, :cond_24
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_12
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1f
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V
const/4 v0, 0x2
iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
:try_start_1f
:cond_1f
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:goto_24
:cond_24
:try_end_24
.catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_29
iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
if-nez v0, :cond_12
return-void
:catch_29
move-exception v0
goto :goto_24
.end method