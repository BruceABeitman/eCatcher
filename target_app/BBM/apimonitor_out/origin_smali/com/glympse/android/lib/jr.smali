.class Lcom/glympse/android/lib/jr;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GUserManagerPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private jO:Lcom/glympse/android/lib/hw;

.field private ml:Z

.field private ng:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation
.end field

.field private uk:Lcom/glympse/android/lib/GUserPrivate;

.field private ul:Lcom/glympse/android/lib/GTicketPrivate;

.field private um:Lcom/glympse/android/lib/GTrackPrivate;

.field private un:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GCommon;",
            ">;"
        }
    .end annotation
.end field

.field private uo:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation
.end field

.field private up:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation
.end field

.field private uq:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation
.end field

.field private ur:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation
.end field

.field private us:Lcom/glympse/android/lib/gz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/gz",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation
.end field

.field private ut:Z

.field private uu:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation
.end field

.field private uv:Z

.field private uw:I

.field private ux:Z

.field private uy:Lcom/glympse/android/lib/jt;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->un:Ljava/util/Hashtable;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->up:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->uq:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->ng:Ljava/util/Hashtable;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/lib/gz;

    invoke-direct {v0}, Lcom/glympse/android/lib/gz;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    iput-boolean v2, p0, Lcom/glympse/android/lib/jr;->ut:Z

    new-instance v0, Lcom/glympse/android/lib/ju;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/ju;-><init>(Lcom/glympse/android/lib/jr$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->uu:Ljava/util/Comparator;

    iput-boolean v2, p0, Lcom/glympse/android/lib/jr;->ml:Z

    iput-boolean v3, p0, Lcom/glympse/android/lib/jr;->uv:Z

    iput v3, p0, Lcom/glympse/android/lib/jr;->uw:I

    new-instance v0, Lcom/glympse/android/lib/hw;

    invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->jO:Lcom/glympse/android/lib/hw;

    iput-boolean v2, p0, Lcom/glympse/android/lib/jr;->ux:Z

    return-void
.end method

.method private L(Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v1, "self"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_2e

    new-instance v2, Lcom/glympse/android/lib/jj;

    invoke-direct {v2}, Lcom/glympse/android/lib/jj;-><init>()V

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GUserPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GUserPrivate;->merge(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V

    :cond_2e
    iget-boolean v1, p0, Lcom/glympse/android/lib/jr;->uv:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v4

    const-string v1, "users"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v7

    const/4 v0, 0x0

    move v3, v0

    :goto_4a
    if-ge v3, v7, :cond_8

    invoke-interface {v6, v3}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    new-instance v8, Lcom/glympse/android/lib/jj;

    invoke-direct {v8}, Lcom/glympse/android/lib/jj;-><init>()V

    invoke-interface {v8, v0}, Lcom/glympse/android/lib/GUserPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v8}, Lcom/glympse/android/lib/GUserPrivate;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v9

    invoke-interface {v9}, Lcom/glympse/android/core/GArray;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_61
    if-ge v1, v2, :cond_96

    invoke-interface {v9, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    const/16 v10, 0x8

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getState()I

    move-result v11

    if-ne v10, v11, :cond_76

    const/16 v10, 0x10

    invoke-interface {v0, v10}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z

    :cond_76
    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/32 v12, 0xa4cb800

    cmp-long v10, v10, v12

    if-lez v10, :cond_a9

    invoke-interface {v8, v0}, Lcom/glympse/android/lib/GUserPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    :goto_8a
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_61

    :cond_8f
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->remove()V

    goto/16 :goto_8

    :cond_96
    invoke-interface {v9}, Lcom/glympse/android/core/GArray;->length()I

    move-result v0

    if-eqz v0, :cond_a5

    invoke-direct {p0, v8}, Lcom/glympse/android/lib/jr;->a(Lcom/glympse/android/lib/GUserPrivate;)V

    invoke-virtual {p0, v8}, Lcom/glympse/android/lib/jr;->addUser(Lcom/glympse/android/lib/GUserPrivate;)V

    invoke-virtual {p0, v8}, Lcom/glympse/android/lib/jr;->addStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_a5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4a

    :cond_a9
    move v0, v1

    move v1, v2

    goto :goto_8a
.end method

.method private M(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uq:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    return-object v0
.end method

.method private a(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImagePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->attachCache(Lcom/glympse/android/lib/GImageCache;)V

    :cond_13
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->un:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/Enumeration;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;)Z"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getActiveStandalone()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
    .registers 3

    const-string v0, "users_v2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private b(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 6

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_1f

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/jr;->addTicketToInviteIndex(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_1f
    return-void
.end method

.method private c(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 6

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_1f

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->removeTicketFromInviteIndex(Lcom/glympse/android/api/GTicket;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_1f
    return-void
.end method

.method private cS()V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/jr;->ml:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/jr;->ml:Z

    iget-boolean v0, p0, Lcom/glympse/android/lib/jr;->ut:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uu:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V

    goto :goto_4
.end method

.method private cT()V
    .registers 9

    const/4 v7, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/glympse/android/lib/jr;->ux:Z

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v3, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v3, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Lcom/glympse/android/lib/GUserPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V

    const-string v1, "self"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/jr;->uv:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v4

    new-instance v5, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v5, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    move v1, v2

    :goto_38
    if-ge v1, v4, :cond_51

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    new-instance v6, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v6, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    invoke-interface {v0, v6, v2}, Lcom/glympse/android/lib/GUserPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V

    invoke-interface {v5, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    :cond_51
    const-string v0, "users"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_5a
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0, v3}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_e
.end method

.method private clear()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->removeUser(Lcom/glympse/android/lib/GUserPrivate;)V

    goto :goto_0

    :cond_15
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cw()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    return-void
.end method

.method private load(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/jr;->ux:Z

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/jr;->L(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/jr;->ux:Z

    return-void
.end method

.method private r(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ng:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    return-object v0
.end method


# virtual methods
.method public addStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->addReference()V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v2, 0x10002

    const/16 v3, 0x20

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cT()V

    return-void
.end method

.method public addTicketToInviteIndex(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    if-eq p2, v0, :cond_14

    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uq:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->ng:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public addUser(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->up:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/jr;->b(Lcom/glympse/android/lib/GUserPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GUserPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x1

    const/16 v3, 0x2000

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->orderChanged()V

    return-void
.end method

.method public anyActive()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->a(Ljava/util/Enumeration;)Z

    move-result v0

    return v0
.end method

.method public anyActiveTracked()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cx()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->a(Ljava/util/Enumeration;)Z

    move-result v0

    return v0
.end method

.method public enablePersistence(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/glympse/android/lib/jr;->uv:Z

    iget-boolean v0, p0, Lcom/glympse/android/lib/jr;->uv:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/glympse/android/lib/jr;->save()V

    :cond_9
    return-void
.end method

.method public enableSorting(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/jr;->ut:Z

    invoke-virtual {p0}, Lcom/glympse/android/lib/jr;->orderChanged()V

    return-void
.end method

.method public extractFromCache(Ljava/lang/String;Z)Lcom/glympse/android/lib/GUserPrivate;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->un:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/glympse/android/lib/jj;

    invoke-direct {v0}, Lcom/glympse/android/lib/jj;-><init>()V

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->a(Lcom/glympse/android/lib/GUserPrivate;)V

    if-eqz p2, :cond_a

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->refreshUser(Lcom/glympse/android/lib/GUserPrivate;)V

    goto :goto_a
.end method

.method public findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->r(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    goto :goto_7
.end method

.method public findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->M(Ljava/lang/String;)Lcom/glympse/android/api/GUser;

    move-result-object v0

    goto :goto_7
.end method

.method public findUserByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->up:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    goto :goto_7
.end method

.method public getNumTrackers(Lcom/glympse/android/api/GUser;)I
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/gz;->k(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSelf()Lcom/glympse/android/api/GUser;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    return-object v0
.end method

.method public getSelfTrack()Lcom/glympse/android/api/GTrack;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->um:Lcom/glympse/android/lib/GTrackPrivate;

    return-object v0
.end method

.method public getStandaloneUsers()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getTracking()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cx()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getUserTrackingMode()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/jr;->uw:I

    return v0
.end method

.method public getUsers()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GUser;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cS()V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public modifyUser(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 5

    new-instance v0, Lcom/glympse/android/lib/ka;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/ka;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;)V

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    return-void
.end method

.method public orderChanged()V
    .registers 6

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/glympse/android/lib/jr;->ml:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-boolean v4, p0, Lcom/glympse/android/lib/jr;->ml:Z

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_5
.end method

.method public postMessage(Ljava/lang/String;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 13

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/glympse/android/lib/GTicketProtocol;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/jw;

    iget-object v2, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v1, v2, p1, v0}, Lcom/glympse/android/lib/jw;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    return-void
.end method

.method public refreshUser(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 5

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNotificationCenter()Lcom/glympse/android/lib/GNotificationCenter;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GNotificationCenter;->skipSync(I)V

    :cond_10
    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Lcom/glympse/android/lib/kb;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/kb;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;)V

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    :cond_2a
    return-void
.end method

.method public removeStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 9

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    new-instance v5, Lcom/glympse/android/hal/GVector;

    invoke-direct {v5, v4}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_24

    invoke-interface {v3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isStandalone()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v5, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_24
    invoke-virtual {v5}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v2

    :goto_28
    if-ge v1, v2, :cond_37

    invoke-virtual {v5, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GUserPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_37
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/gz;->j(Ljava/lang/Object;)I

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->removeReference()V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v2, 0x10002

    const/16 v3, 0x40

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cT()V

    return-void
.end method

.method public removeTicketFromInviteIndex(Lcom/glympse/android/api/GTicket;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    if-eq p1, v0, :cond_14

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uq:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->ng:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public removeUser(Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GUserPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->up:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/jr;->c(Lcom/glympse/android/lib/GUserPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x1

    const/16 v3, 0x4000

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public resolveUser(Lcom/glympse/android/lib/GUserPrivate;)Lcom/glympse/android/lib/GUserPrivate;
    .registers 4

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p1, 0x0

    :goto_b
    return-object p1

    :cond_c
    iget-object v1, p0, Lcom/glympse/android/lib/jr;->un:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/jr;->a(Lcom/glympse/android/lib/GUserPrivate;)V

    goto :goto_b

    :cond_1a
    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, p1, v1}, Lcom/glympse/android/lib/GUserPrivate;->merge(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V

    move-object p1, v0

    goto :goto_b
.end method

.method public save()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cT()V

    goto :goto_4
.end method

.method public setActive(Z)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uo:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->isSelf()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTicketPrivate;->setActive(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_31
    if-nez p1, :cond_36

    invoke-virtual {p0}, Lcom/glympse/android/lib/jr;->save()V

    :cond_36
    return-void
.end method

.method public setSelfLocation(Lcom/glympse/android/core/GLocation;ZZ)V
    .registers 14

    const/16 v9, 0x80

    const/4 v8, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GUserPrivate;->setLocation(Lcom/glympse/android/core/GLocation;)V

    if-eqz p2, :cond_4e

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->um:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0, p1, v3, v4}, Lcom/glympse/android/lib/GTrackPrivate;->add(Lcom/glympse/android/core/GLocation;J)Z

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->um:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0, v3, v4, v2}, Lcom/glympse/android/lib/GTrackPrivate;->trim(JZ)Z

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v5

    invoke-interface {v5}, Lcom/glympse/android/core/GArray;->length()I

    move-result v6

    move v1, v2

    :goto_2a
    if-ge v1, v6, :cond_4e

    invoke-interface {v5, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0, p1, v3, v4}, Lcom/glympse/android/lib/GTrackPrivate;->add(Lcom/glympse/android/core/GLocation;J)Z

    invoke-interface {v0, v3, v4, v2}, Lcom/glympse/android/lib/GTrackPrivate;->trim(JZ)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_4e
    const/16 v0, 0x400

    if-eqz p3, :cond_8a

    const v1, 0x8400

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v4, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v3, v8, v9, v4}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    :goto_6c
    if-ge v2, v4, :cond_89

    invoke-interface {v3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v5, v8, v9, v0}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6c

    :cond_89
    move v0, v1

    :cond_8a
    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public setSelfUserId(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->a(Lcom/glympse/android/lib/GUserPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->up:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->areAccountsLinked()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->refreshUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_22
    if-eqz p2, :cond_27

    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cT()V

    :cond_27
    return-void
.end method

.method public setUserTrackingMode(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/jr;->uw:I

    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->jO:Lcom/glympse/android/lib/hw;

    const-string v2, "users_v2"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/glympse/android/lib/jj;

    invoke-direct {v0}, Lcom/glympse/android/lib/jj;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GUserPrivate;->setSelf(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->addUser(Lcom/glympse/android/lib/GUserPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->addStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V

    new-instance v0, Lcom/glympse/android/lib/hz;

    invoke-direct {v0, v3}, Lcom/glympse/android/lib/hz;-><init>(Z)V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uk:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GUserPrivate;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ul:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->um:Lcom/glympse/android/lib/GTrackPrivate;

    new-instance v0, Lcom/glympse/android/lib/jt;

    iget-object v2, p0, Lcom/glympse/android/lib/jr;->um:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-direct {v0, v2}, Lcom/glympse/android/lib/jt;-><init>(Lcom/glympse/android/lib/GTrackPrivate;)V

    iput-object v0, p0, Lcom/glympse/android/lib/jr;->uy:Lcom/glympse/android/lib/jt;

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->uy:Lcom/glympse/android/lib/jt;

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    if-eqz p2, :cond_5f

    const-string v0, "un"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/jr;->setSelfUserId(Ljava/lang/String;Z)V

    :goto_5b
    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jr;->load(Ljava/lang/String;)V

    return-void

    :cond_5f
    move-object v0, v1

    goto :goto_5b
.end method

.method public startTracking(Lcom/glympse/android/api/GUser;)I
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, -0x1

    :cond_10
    :goto_10
    return v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[User.startTracking] User: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/gz;->i(Ljava/lang/Object;)I

    move-result v0

    if-ne v2, v0, :cond_10

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GServerPost;->doPost(I)V

    goto :goto_10
.end method

.method public startTrackingAll()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x1

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->startTracking(Lcom/glympse/android/api/GUser;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jr;->uy:Lcom/glympse/android/lib/jt;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    iput-object v2, p0, Lcom/glympse/android/lib/jr;->uy:Lcom/glympse/android/lib/jt;

    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cT()V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V

    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->clear()V

    iput-object v2, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public stopTracking(Lcom/glympse/android/api/GUser;)I
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[User.stopTracking] User: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/gz;->j(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public stopTrackingAll(Z)V
    .registers 5

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->us:Lcom/glympse/android/lib/gz;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cw()V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x1

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_7

    iget-object v0, p0, Lcom/glympse/android/lib/jr;->ur:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->stopTracking(Lcom/glympse/android/api/GUser;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method

.method public viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;
    .registers 11

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_8

    move-object v1, v5

    :goto_7
    return-object v1

    :cond_8
    invoke-interface {p1}, Lcom/glympse/android/api/GUserTicket;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {p1}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;

    if-eqz v0, :cond_18

    if-nez v1, :cond_1a

    :cond_18
    move-object v1, v5

    goto :goto_7

    :cond_1a
    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    :cond_34
    move-object v1, v5

    goto :goto_7

    :cond_36
    invoke-virtual {p0, v2}, Lcom/glympse/android/lib/jr;->findUserByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GUser;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GUserPrivate;

    if-nez v2, :cond_5a

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->addUser(Lcom/glympse/android/lib/GUserPrivate;)V

    invoke-interface {v0, v6}, Lcom/glympse/android/lib/GUserPrivate;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v2

    if-nez v2, :cond_58

    move v2, v3

    :goto_48
    if-eqz v2, :cond_4d

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    :cond_4d
    if-nez v4, :cond_6c

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jr;->addStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :goto_52
    iget-object v0, p0, Lcom/glympse/android/lib/jr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v0, v8, v8, v1}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_7

    :cond_58
    move v2, v4

    goto :goto_48

    :cond_5a
    invoke-interface {v2, v6}, Lcom/glympse/android/lib/GUserPrivate;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-eqz v0, :cond_62

    move-object v1, v5

    goto :goto_7

    :cond_62
    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->getActiveStandalone()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-eqz v0, :cond_69

    move v4, v3

    :cond_69
    move-object v0, v2

    move v2, v3

    goto :goto_48

    :cond_6c
    invoke-direct {p0}, Lcom/glympse/android/lib/jr;->cT()V

    goto :goto_52
.end method
