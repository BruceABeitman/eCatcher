.class Lcom/glympse/android/lib/jn;
.super Lcom/glympse/android/lib/j;
.source "UserGroups.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private ug:Lcom/glympse/android/lib/jo;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/jn;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    new-instance v0, Lcom/glympse/android/lib/jo;

    invoke-direct {v0}, Lcom/glympse/android/lib/jo;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iget-object v0, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iput-object v0, p0, Lcom/glympse/android/lib/jn;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/jo;

    invoke-direct {v0}, Lcom/glympse/android/lib/jo;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iget-object v0, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iput-object v0, p0, Lcom/glympse/android/lib/jn;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iget-object v0, v0, Lcom/glympse/android/lib/jo;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/glympse/android/lib/jn;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iget-object v1, v1, Lcom/glympse/android/lib/jo;->mH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v6

    move v5, v4

    :goto_1f
    if-ge v5, v6, :cond_49

    iget-object v1, p0, Lcom/glympse/android/lib/jn;->ug:Lcom/glympse/android/lib/jo;

    iget-object v1, v1, Lcom/glympse/android/lib/jo;->mH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v5}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->findGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GGroupPrivate;

    if-nez v2, :cond_45

    new-instance v2, Lcom/glympse/android/lib/cq;

    invoke-direct {v2, v4}, Lcom/glympse/android/lib/cq;-><init>(Z)V

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setId(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupManagerPrivate;->addGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupManagerPrivate;->viewGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    :cond_45
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1f

    :cond_49
    iget-object v1, p0, Lcom/glympse/android/lib/jn;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;

    move-result-object v2

    if-lez v6, :cond_5b

    move v1, v3

    :goto_52
    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GConfigPrivate;->setPrivateGroups(Z)V

    if-nez v6, :cond_5a

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupManagerPrivate;->checkServerSyncComplete()V

    :cond_5a
    :goto_5a
    return v3

    :cond_5b
    move v1, v4

    goto :goto_52

    :cond_5d
    move v3, v4

    goto :goto_5a
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "users/self/groups"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method
