.class public Lcom/ford/syncV4/exception/SyncException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5230eb5c59f24e4fL


# instance fields
.field private _syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

.field protected detail:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    iput-object p2, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " --- Check inner exception for diagnostic details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    iput-object v2, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    iput-object p2, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    iput-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    iput-object p1, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ford/syncV4/exception/SyncExceptionCause;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ford/syncV4/exception/SyncException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSyncExceptionCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->_syncExceptionCause:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-virtual {v1}, Lcom/ford/syncV4/exception/SyncExceptionCause;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_44
    iget-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    if-eqz v1, :cond_6a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nnested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ford/syncV4/exception/SyncException;->detail:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6a
    return-object v0
.end method
