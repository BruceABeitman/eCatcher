.class Lcom/glympse/android/lib/ai;
.super Ljava/lang/Object;
.source "ContactsManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GContactsManager;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private _handler:Lcom/glympse/android/core/GHandler;

.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;

.field private bU:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field

.field private iZ:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/hal/GContactsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private ja:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPersonListPrivate;",
            ">;"
        }
    .end annotation
.end field

.field private jb:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPeopleHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->jb:Lcom/glympse/android/hal/GVector;

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/lib/ai;)Lcom/glympse/android/hal/GVector;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method private a(Lcom/glympse/android/hal/GVector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-direct {p0}, Lcom/glympse/android/lib/ai;->aA()V

    invoke-direct {p0}, Lcom/glympse/android/lib/ai;->aB()V

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/lib/ai;Lcom/glympse/android/hal/GVector;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/ai;->a(Lcom/glympse/android/hal/GVector;)V

    return-void
.end method

.method private aA()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GPersonListPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GPersonListPrivate;->search(Lcom/glympse/android/hal/GVector;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_1f
    return-void
.end method

.method private aB()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->jb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v2, :cond_2e

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->jb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GPeopleHolder;

    iget-object v3, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GPeopleHolder;->setPeople(Lcom/glympse/android/hal/GVector;)V

    iget-object v3, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    check-cast v0, Lcom/glympse/android/lib/GJob;

    invoke-interface {v3, v0}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_2e
    invoke-virtual {p0}, Lcom/glympse/android/lib/ai;->clearLookup()V

    :cond_31
    return-void
.end method

.method private aC()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v1, Lcom/glympse/android/lib/am;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/ai;

    iget-object v2, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/glympse/android/lib/am;-><init>(Lcom/glympse/android/lib/ai;Lcom/glympse/android/lib/GImageCache;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/glympse/android/lib/ai;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/ai;->aC()V

    return-void
.end method


# virtual methods
.method public abort(Lcom/glympse/android/lib/GPersonList;)V
    .registers 3

    check-cast p1, Lcom/glympse/android/lib/GPersonListPrivate;

    invoke-interface {p1}, Lcom/glympse/android/lib/GPersonListPrivate;->abort()V

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProvider(Lcom/glympse/android/hal/GContactsProvider;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/glympse/android/lib/ak;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/ai;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/ak;-><init>(Lcom/glympse/android/lib/ai;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/hal/GContactsProvider;->start(Lcom/glympse/android/hal/GContactsListener;Lcom/glympse/android/core/GHandler;)V

    :cond_19
    return-void
.end method

.method public clear()V
    .registers 1

    invoke-virtual {p0}, Lcom/glympse/android/lib/ai;->clearSearch()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/ai;->clearLookup()V

    return-void
.end method

.method public clearLookup()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->jb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    return-void
.end method

.method public clearSearch()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GPersonListPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GPersonListPrivate;->abort()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    return-void
.end method

.method public findPeopleForInvites(Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/GEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;",
            "Lcom/glympse/android/lib/GEvent;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/glympse/android/lib/fa;

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v0, v1, p1, p2}, Lcom/glympse/android/lib/fa;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/GEvent;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GPeopleHolder;->setPeople(Lcom/glympse/android/hal/GVector;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    check-cast v0, Lcom/glympse/android/lib/GJob;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    goto :goto_4

    :cond_25
    iget-object v1, p0, Lcom/glympse/android/lib/ai;->jb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public getPersonList(Ljava/lang/String;I)Lcom/glympse/android/lib/GPersonList;
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/glympse/android/lib/gr;

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/glympse/android/lib/gr;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GJobQueue;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->ja:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GPersonListPrivate;->search(Lcom/glympse/android/hal/GVector;)V

    goto :goto_5
.end method

.method public refresh()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GContactsProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContactsProvider;->refresh()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method

.method public setActive(Z)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GContactsProvider;

    invoke-interface {v0, p1}, Lcom/glympse/android/hal/GContactsProvider;->setActive(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method

.method public start(Lcom/glympse/android/api/GGlympse;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->_handler:Lcom/glympse/android/core/GHandler;

    new-instance v0, Lcom/glympse/android/lib/fc;

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V

    iput-object v0, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->start(I)Z

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_22
    if-ge v2, v3, :cond_40

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GContactsProvider;

    new-instance v4, Lcom/glympse/android/lib/ak;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/ai;

    invoke-direct {v4, v1}, Lcom/glympse/android/lib/ak;-><init>(Lcom/glympse/android/lib/ai;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ai;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {v0, v4, v1}, Lcom/glympse/android/hal/GContactsProvider;->start(Lcom/glympse/android/hal/GContactsListener;Lcom/glympse/android/core/GHandler;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    :cond_40
    return-void
.end method

.method public stop()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/glympse/android/lib/ai;->clear()V

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->stop(Z)V

    iput-object v3, p0, Lcom/glympse/android/lib/ai;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v2, :cond_25

    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GContactsProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContactsProvider;->stop()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_25
    iget-object v0, p0, Lcom/glympse/android/lib/ai;->iZ:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iput-object v3, p0, Lcom/glympse/android/lib/ai;->bU:Lcom/glympse/android/hal/GVector;

    iput-object v3, p0, Lcom/glympse/android/lib/ai;->_handler:Lcom/glympse/android/core/GHandler;

    iput-object v3, p0, Lcom/glympse/android/lib/ai;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method
