.class Lcom/glympse/android/lib/e;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GAccountImportListener;
.implements Lcom/glympse/android/lib/GAccountListener;
.implements Lcom/glympse/android/lib/GAccountManager;
.implements Lcom/glympse/android/lib/GBatchListener;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private gF:Lcom/glympse/android/lib/GAccountListener;

.field private gW:Lcom/glympse/android/lib/GAccountProvider;

.field private gX:Lcom/glympse/android/lib/HttpJob;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    new-instance v0, Lcom/glympse/android/lib/a;

    iget-object v1, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->ah()Lcom/glympse/android/lib/GAccountListener;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/glympse/android/lib/a;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GAccountListener;Lcom/glympse/android/core/GPrimitive;)V

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/e;->a(Lcom/glympse/android/lib/GApiEndpoint;)V

    return-void
.end method

.method private a(Lcom/glympse/android/lib/GApiEndpoint;)V
    .registers 6

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/glympse/android/lib/f;

    iget-object v2, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->ai()Lcom/glympse/android/lib/GBatchListener;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/glympse/android/lib/f;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Lcom/glympse/android/lib/a;

    iget-object v1, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->ah()Lcom/glympse/android/lib/GAccountListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/a;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GAccountListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/e;->a(Lcom/glympse/android/lib/GApiEndpoint;)V

    return-void
.end method

.method private af()V
    .registers 4

    new-instance v0, Lcom/glympse/android/lib/a;

    iget-object v1, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->ah()Lcom/glympse/android/lib/GAccountListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/a;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GAccountListener;)V

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/e;->a(Lcom/glympse/android/lib/GApiEndpoint;)V

    return-void
.end method

.method private ag()Lcom/glympse/android/lib/GAccountImportListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GAccountImportListener;

    return-object v0
.end method

.method private ah()Lcom/glympse/android/lib/GAccountListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GAccountListener;

    return-object v0
.end method

.method private ai()Lcom/glympse/android/lib/GBatchListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GBatchListener;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/glympse/android/lib/c;

    iget-object v1, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->ah()Lcom/glympse/android/lib/GAccountListener;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/glympse/android/lib/c;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/lib/GAccountListener;)V

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/e;->a(Lcom/glympse/android/lib/GApiEndpoint;)V

    return-void
.end method


# virtual methods
.method public accountCreated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-object v1, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    invoke-interface {v0, p1, p2}, Lcom/glympse/android/lib/GAccountListener;->accountCreated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public accountImported(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-object v1, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/e;->a(Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_5
.end method

.method public accountImported(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/e;->accountCreated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public accountImported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-object v1, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/lib/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public batchCompleted(Lcom/glympse/android/hal/GVector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public batchFailed(Lcom/glympse/android/hal/GVector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public cancel()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    invoke-interface {v0}, Lcom/glympse/android/lib/GAccountProvider;->cancel()V

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    :cond_c
    iput-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    return-void
.end method

.method public create(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    if-eqz v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAccountProfile()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v1, Lcom/glympse/android/lib/i;

    iget-object v2, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/glympse/android/lib/i;-><init>(Lcom/glympse/android/core/GHandler;Lcom/glympse/android/core/GPrimitive;)V

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    :goto_20
    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->ag()Lcom/glympse/android/lib/GAccountImportListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAccountProvider;->setAccountListener(Lcom/glympse/android/lib/GAccountImportListener;)V

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GAccountProvider;->create(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    iput-object v3, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->af()V

    :cond_36
    const/4 v0, 0x1

    goto :goto_a

    :cond_38
    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isAccountSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/HalFactory;->createAccountImporter(Landroid/content/Context;Lcom/glympse/android/core/GHandler;Ljava/lang/String;)Lcom/glympse/android/lib/GAccountProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    goto :goto_20

    :cond_5d
    new-instance v0, Lcom/glympse/android/lib/g;

    invoke-direct {v0, v3}, Lcom/glympse/android/lib/g;-><init>(Lcom/glympse/android/lib/e$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    goto :goto_20
.end method

.method public failedToCreate(ZILcom/glympse/android/api/GServerError;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_b
    iput-object v1, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    iput-object v1, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    invoke-direct {p0}, Lcom/glympse/android/lib/e;->af()V

    goto :goto_5

    :cond_17
    const/4 v0, 0x0

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/glympse/android/lib/GAccountListener;->failedToCreate(ZILcom/glympse/android/api/GServerError;)V

    goto :goto_5
.end method

.method public failedToImport(ZI)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/glympse/android/lib/e;->failedToCreate(ZILcom/glympse/android/api/GServerError;)V

    return-void
.end method

.method public failedToLogin(ILcom/glympse/android/api/GServerError;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    invoke-interface {v0, p1, p2}, Lcom/glympse/android/lib/GAccountListener;->failedToLogin(ILcom/glympse/android/api/GServerError;)V

    goto :goto_4
.end method

.method public loggedIn(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/glympse/android/lib/GAccountListener;->loggedIn(Ljava/lang/String;J)V

    goto :goto_4
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gW:Lcom/glympse/android/lib/GAccountProvider;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/e;->gX:Lcom/glympse/android/lib/HttpJob;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/glympse/android/lib/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public sessionFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setAccountListener(Lcom/glympse/android/lib/GAccountListener;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/glympse/android/lib/e;->cancel()V

    iput-object v0, p0, Lcom/glympse/android/lib/e;->gF:Lcom/glympse/android/lib/GAccountListener;

    iput-object v0, p0, Lcom/glympse/android/lib/e;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method
