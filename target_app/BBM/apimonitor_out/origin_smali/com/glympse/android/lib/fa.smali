.class Lcom/glympse/android/lib/fa;
.super Lcom/glympse/android/lib/fb;
.source "InvitesToPeopleJob.java"

# interfaces
.implements Lcom/glympse/android/lib/GPeopleHolder;


# static fields
.field public static final pk:J = 0xaL


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private kA:Lcom/glympse/android/lib/GEvent;

.field private mp:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end field

.field private pl:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end field

.field private pn:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end field

.field private po:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/GEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/GGlympsePrivate;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;",
            "Lcom/glympse/android/lib/GEvent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/fa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/fa;->pm:Lcom/glympse/android/core/GArray;

    iput-object p3, p0, Lcom/glympse/android/lib/fa;->kA:Lcom/glympse/android/lib/GEvent;

    return-void
.end method

.method private a(Lcom/glympse/android/lib/GContact;II)Lcom/glympse/android/api/GInvite;
    .registers 8

    invoke-interface {p1}, Lcom/glympse/android/lib/GContact;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p2, :cond_25

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v3

    if-ne v3, p3, :cond_21

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private cj()V
    .registers 15

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pm:Lcom/glympse/android/core/GArray;

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v2

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0, v2}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/fa;->mp:Lcom/glympse/android/hal/GVector;

    move v1, v4

    :goto_11
    if-ge v1, v2, :cond_32

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pm:Lcom/glympse/android/core/GArray;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getType()I

    move-result v3

    invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getPerson()Lcom/glympse/android/lib/GPerson;

    move-result-object v5

    if-nez v5, :cond_2e

    if-eq v13, v3, :cond_29

    if-ne v12, v3, :cond_2e

    :cond_29
    iget-object v3, p0, Lcom/glympse/android/lib/fa;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_32
    iget-object v0, p0, Lcom/glympse/android/lib/fa;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    return-void

    :cond_3b
    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iput-object v1, p0, Lcom/glympse/android/lib/fa;->pn:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iput-object v1, p0, Lcom/glympse/android/lib/fa;->po:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/fa;->pl:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v7

    move v5, v4

    move v6, v0

    :goto_51
    if-ge v5, v7, :cond_3a

    iget-boolean v0, p0, Lcom/glympse/android/lib/fa;->_aborted:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pl:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v5}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GPerson;

    invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;

    move-result-object v8

    invoke-interface {v8}, Lcom/glympse/android/core/GArray;->length()I

    move-result v9

    move v3, v4

    :goto_68
    if-ge v3, v9, :cond_8d

    invoke-interface {v8, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GContact;

    invoke-interface {v1}, Lcom/glympse/android/lib/GContact;->getType()I

    move-result v10

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-ne v11, v10, :cond_9a

    invoke-direct {p0, v1, v6, v13}, Lcom/glympse/android/lib/fa;->a(Lcom/glympse/android/lib/GContact;II)Lcom/glympse/android/api/GInvite;

    move-result-object v1

    :goto_7c
    if-eqz v1, :cond_a1

    iget-object v2, p0, Lcom/glympse/android/lib/fa;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/glympse/android/lib/fa;->pn:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/lib/fa;->po:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_8d
    iget-object v0, p0, Lcom/glympse/android/lib/fa;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v1

    if-eqz v1, :cond_3a

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_51

    :cond_9a
    if-ne v12, v10, :cond_a5

    invoke-direct {p0, v1, v6, v12}, Lcom/glympse/android/lib/fa;->a(Lcom/glympse/android/lib/GContact;II)Lcom/glympse/android/api/GInvite;

    move-result-object v1

    goto :goto_7c

    :cond_a1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_68

    :cond_a5
    move-object v1, v2

    goto :goto_7c
.end method


# virtual methods
.method public onComplete()V
    .registers 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/glympse/android/lib/fa;->_aborted:Z

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pm:Lcom/glympse/android/core/GArray;

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    move v3, v2

    :goto_16
    if-ge v3, v4, :cond_56

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pm:Lcom/glympse/android/core/GArray;

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getType()I

    move-result v1

    const/16 v5, 0xb

    if-ne v5, v1, :cond_3b

    iget-object v1, p0, Lcom/glympse/android/lib/fa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getApplicationsManager()Lcom/glympse/android/api/GApplicationsManager;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GApplicationsManagerPrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GApplicationsManagerPrivate;->createApplicationPerson(Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/lib/GPerson;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setPerson(Lcom/glympse/android/lib/GPerson;)V

    :cond_37
    :goto_37
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    :cond_3b
    if-ne v6, v1, :cond_37

    iget-object v1, p0, Lcom/glympse/android/lib/fa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Lcom/glympse/android/lib/GUserManagerPrivate;->extractFromCache(Ljava/lang/String;Z)Lcom/glympse/android/lib/GUserPrivate;

    move-result-object v1

    new-instance v5, Lcom/glympse/android/lib/gu;

    invoke-direct {v5, v1}, Lcom/glympse/android/lib/gu;-><init>(Lcom/glympse/android/api/GUser;)V

    invoke-interface {v0, v5}, Lcom/glympse/android/lib/GInvitePrivate;->setPerson(Lcom/glympse/android/lib/GPerson;)V

    goto :goto_37

    :cond_56
    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pn:Lcom/glympse/android/hal/GVector;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pn:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    :goto_60
    if-ge v2, v3, :cond_79

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->pn:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fa;->po:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GPerson;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setPerson(Lcom/glympse/android/lib/GPerson;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_60

    :cond_79
    iget-object v0, p0, Lcom/glympse/android/lib/fa;->kA:Lcom/glympse/android/lib/GEvent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/glympse/android/lib/fa;->kA:Lcom/glympse/android/lib/GEvent;

    iget-object v1, p0, Lcom/glympse/android/lib/fa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GEvent;->send(Lcom/glympse/android/api/GGlympse;)V

    goto :goto_e
.end method

.method public onProcess()V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/fa;->cj()V

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Concurrent;->sleep(J)V

    return-void
.end method

.method public setPeople(Lcom/glympse/android/hal/GVector;)V
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

    iput-object p1, p0, Lcom/glympse/android/lib/fa;->pl:Lcom/glympse/android/hal/GVector;

    return-void
.end method

.method public useHandler()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
