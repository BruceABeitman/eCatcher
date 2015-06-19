.class  Lcom/glympse/android/lib/de;
.super Ljava/lang/Object;
.source "GroupManager.java"
.implements Lcom/glympse/android/lib/GGroupManagerPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private jO:Lcom/glympse/android/lib/hw;
.field private lf:Lcom/glympse/android/lib/GServerPost;
.field private mF:Lcom/glympse/android/lib/GGroupPrivate;
.field private mG:Lcom/glympse/android/hal/GVector;
.field private mH:Lcom/glympse/android/hal/GVector;
.field private mI:Lcom/glympse/android/lib/gz;
.field private mJ:Z
.field private mK:Z
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/lib/gz;
invoke-direct {v0}, Lcom/glympse/android/lib/gz;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/de;->jO:Lcom/glympse/android/lib/hw;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "GroupManager"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
iput-boolean v2, p0, Lcom/glympse/android/lib/de;->mJ:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/de;->mK:Z
return-void
.end method
.method private a(IILcom/glympse/android/core/GCommon;)V
.registers 9
new-instance v1, Lcom/glympse/android/lib/bj;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-direct {v1, v0, p1, p2, p3}, Lcom/glympse/android/lib/bj;-><init>(Lcom/glympse/android/api/GEventListener;IILcom/glympse/android/core/GCommon;)V
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v2
new-instance v3, Lcom/glympse/android/lib/df;
iget-object v4, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/de;
invoke-direct {v3, v4, v0, v1}, Lcom/glympse/android/lib/df;-><init>(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/lib/de;Lcom/glympse/android/lib/GEvent;)V
invoke-interface {v2, v3}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
return-void
.end method
.method private a(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 5
new-instance v0, Lcom/glympse/android/lib/ct;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/ct;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method private a(Ljava/util/Enumeration;)Z
.registers 5
:cond_0
invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
const/4 v1, 0x4
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getState()I
move-result v2
if-ne v1, v2, :cond_0
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_0
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public static b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
.registers 3
const-string v0, "groups_v2"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z
return-void
.end method
.method private b(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 5
new-instance v0, Lcom/glympse/android/lib/dc;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/dc;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method private bM()Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->arePrivateGroupsEnabled()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->areAccountsLinked()Z
move-result v2
if-nez v2, :cond_1b
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->hasPrivateGroups()Z
move-result v1
if-eqz v1, :cond_1c
:cond_1b
const/4 v0, 0x1
:cond_1c
return v0
.end method
.method private bN()V
.registers 4
new-instance v0, Lcom/glympse/android/lib/jn;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1}, Lcom/glympse/android/lib/jn;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method private bd()V
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/de;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_a
:cond_9
return-void
:cond_a
const-string v2, "groups"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_9
invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v3
move v0, v1
:goto_1b
if-ge v0, v3, :cond_9
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
new-instance v5, Lcom/glympse/android/lib/cq;
const/4 v6, 0x1
invoke-direct {v5, v6}, Lcom/glympse/android/lib/cq;-><init>(Z)V
invoke-interface {v5, v4}, Lcom/glympse/android/lib/GGroupPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v5}, Lcom/glympse/android/lib/GGroupPrivate;->isPublic()Z
move-result v4
if-eqz v4, :cond_37
invoke-interface {v5}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4, v1}, Lcom/glympse/android/lib/de;->e(Ljava/lang/String;Z)Lcom/glympse/android/api/GGroup;
:cond_37
add-int/lit8 v0, v0, 0x1
goto :goto_1b
.end method
.method private clear()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cw()V
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
:goto_b
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGroupPrivate;
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/de;->b(Lcom/glympse/android/lib/GGroupPrivate;Z)V
goto :goto_b
:cond_1f
return-void
.end method
.method private save()V
.registers 9
const/4 v7, 0x2
const/4 v0, 0x1
new-instance v2, Lcom/glympse/android/lib/Primitive;
invoke-direct {v2, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I
move-result v3
if-lez v3, :cond_3e
new-instance v4, Lcom/glympse/android/lib/Primitive;
invoke-direct {v4, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
move v1, v0
:goto_15
if-ge v1, v3, :cond_35
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGroupPrivate;->isPublic()Z
move-result v5
if-eqz v5, :cond_31
new-instance v5, Lcom/glympse/android/lib/Primitive;
invoke-direct {v5, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const/4 v6, 0x0
invoke-interface {v0, v5, v6}, Lcom/glympse/android/lib/GGroupPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
invoke-interface {v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_31
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_15
:cond_35
const-string v0, "groups"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_3e
iget-object v0, p0, Lcom/glympse/android/lib/de;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0, v2}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public a(Lcom/glympse/android/lib/GGroupPrivate;Z)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
if-eqz p2, :cond_f
invoke-direct {p0}, Lcom/glympse/android/lib/de;->save()V
:cond_f
iget-object v0, p0, Lcom/glympse/android/lib/de;->mF:Lcom/glympse/android/lib/GGroupPrivate;
if-eq p1, v0, :cond_16
invoke-virtual {p0}, Lcom/glympse/android/lib/de;->checkServerSyncComplete()V
:cond_16
invoke-interface {p1}, Lcom/glympse/android/lib/GGroupPrivate;->isPublic()Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->hasPrivateGroups()Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->setPrivateGroups(Z)V
:cond_32
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v1, 0x9
const/4 v2, 0x4
invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/de;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public acceptRequest(Lcom/glympse/android/api/GGroup;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v2, :cond_e
iget-object v2, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->arePrivateGroupsEnabled()Z
move-result v2
if-nez v2, :cond_f
:cond_e
:goto_e
return v0
:cond_f
if-eqz p1, :cond_e
invoke-interface {p1}, Lcom/glympse/android/api/GGroup;->getId()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_e
const/4 v2, 0x3
invoke-interface {p1}, Lcom/glympse/android/api/GGroup;->getState()I
move-result v3
if-ne v2, v3, :cond_e
iget-object v2, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_e
check-cast p1, Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/glympse/android/lib/de;->findGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
move-result-object v2
if-eqz v2, :cond_46
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/de;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
invoke-interface {p1, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v2, 0xa
const/high16 v3, 0x4
invoke-interface {p1, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_e
:cond_46
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/de;->addGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
invoke-direct {p0, p1}, Lcom/glympse/android/lib/de;->b(Lcom/glympse/android/lib/GGroupPrivate;)V
move v0, v1
goto :goto_e
.end method
.method public addGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/de;->a(Lcom/glympse/android/lib/GGroupPrivate;Z)V
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public addPendingGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
return-void
.end method
.method public anyActive()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/lib/de;->a(Ljava/util/Enumeration;)Z
move-result v0
return v0
.end method
.method public anyActiveTracked()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cx()Ljava/util/Enumeration;
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/lib/de;->a(Ljava/util/Enumeration;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public b(Lcom/glympse/android/lib/GGroupPrivate;Z)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
move-result v0
iget-object v1, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
invoke-virtual {v1, p1}, Lcom/glympse/android/lib/gz;->j(Ljava/lang/Object;)I
if-eqz v0, :cond_27
if-eqz p2, :cond_17
invoke-direct {p0}, Lcom/glympse/android/lib/de;->save()V
:cond_17
const/4 v0, 0x0
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/de;->checkServerSyncComplete()V
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v1, 0x9
const/16 v2, 0x8
invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/de;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_27
return-void
.end method
.method public bO()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/de;->mK:Z
return-void
.end method
.method public checkServerSyncComplete()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->d(Z)V
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public createGroup(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->arePrivateGroupsEnabled()Z
move-result v0
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
new-instance v0, Lcom/glympse/android/lib/cq;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/lib/cq;-><init>(Z)V
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GGroupPrivate;->setName(Ljava/lang/String;)V
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->addGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
new-instance v1, Lcom/glympse/android/lib/dg;
invoke-direct {v1}, Lcom/glympse/android/lib/dg;-><init>()V
iget-object v2, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUserId(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
invoke-direct {p0, v0}, Lcom/glympse/android/lib/de;->a(Lcom/glympse/android/lib/GGroupPrivate;)V
goto :goto_d
.end method
.method public createInvite(Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBrand()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, v0}, Lcom/glympse/android/lib/GInvitePrivate;->applyBrand(Ljava/lang/String;)V
new-instance v0, Lcom/glympse/android/lib/db;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1, p1, p2}, Lcom/glympse/android/lib/db;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public d(Z)V
.registers 10
const/4 v7, 0x0
const/16 v6, 0x20
const/4 v2, 0x1
const/16 v5, 0x9
iget-boolean v0, p0, Lcom/glympse/android/lib/de;->mJ:Z
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
move v1, v2
:goto_12
if-ge v1, v3, :cond_29
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getState()I
move-result v0
const/4 v4, 0x4
if-eq v0, v4, :cond_25
if-ne v0, v5, :cond_a
:cond_25
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_12
:cond_29
iput-boolean v2, p0, Lcom/glympse/android/lib/de;->mJ:Z
if-eqz p1, :cond_31
invoke-direct {p0, v5, v6, v7}, Lcom/glympse/android/lib/de;->a(IILcom/glympse/android/core/GCommon;)V
goto :goto_a
:cond_31
invoke-virtual {p0}, Lcom/glympse/android/lib/de;->bO()V
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-virtual {p0, v0, v5, v6, v7}, Lcom/glympse/android/lib/de;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_a
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public discardRequest(Lcom/glympse/android/api/GGroup;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v2, :cond_e
iget-object v2, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->arePrivateGroupsEnabled()Z
move-result v2
if-nez v2, :cond_10
:cond_e
move v0, v1
:goto_f
return v0
:cond_10
if-eqz p1, :cond_2b
invoke-interface {p1}, Lcom/glympse/android/api/GGroup;->getId()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2b
const/4 v2, 0x3
invoke-interface {p1}, Lcom/glympse/android/api/GGroup;->getState()I
move-result v3
if-ne v2, v3, :cond_2b
iget-object v2, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
:cond_2b
move v0, v1
goto :goto_f
:cond_2d
check-cast p1, Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/de;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
goto :goto_f
.end method
.method public e(Ljava/lang/String;Z)Lcom/glympse/android/api/GGroup;
.registers 6
const/4 v0, 0x0
const/4 v2, 0x1
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v1, :cond_7
:goto_6
:cond_6
return-object v0
:cond_7
invoke-static {p1, v2}, Lcom/glympse/android/lib/ej;->f(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_6
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/de;->findGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGroupPrivate;
if-nez v0, :cond_6
new-instance v0, Lcom/glympse/android/lib/cq;
invoke-direct {v0, v2}, Lcom/glympse/android/lib/cq;-><init>(Z)V
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setId(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setName(Ljava/lang/String;)V
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
invoke-virtual {p0, v0, p2}, Lcom/glympse/android/lib/de;->a(Lcom/glympse/android/lib/GGroupPrivate;Z)V
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->viewGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
goto :goto_6
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/api/GEventSink;
move-object v2, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public findGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.registers 8
const/4 v1, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
move-object v0, v1
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_11
if-ge v2, v3, :cond_2f
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getId()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2b
invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_8
:cond_2b
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_11
:cond_2f
move-object v0, v1
goto :goto_8
.end method
.method public findPendingGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.registers 8
const/4 v1, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
move-object v0, v1
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_11
if-ge v2, v3, :cond_2f
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getId()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2b
invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_8
:cond_2b
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_11
:cond_2f
move-object v0, v1
goto :goto_8
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getGroups()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getPendingGroups()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->mG:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getTracking()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
invoke-virtual {v0}, Lcom/glympse/android/lib/gz;->cx()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public groupEvents(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 5
new-instance v0, Lcom/glympse/android/lib/cv;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/cv;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public isSynced()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/de;->mJ:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/glympse/android/lib/de;->mK:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isValidGroup(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/de;->validateGroupName(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public leaveGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 5
new-instance v0, Lcom/glympse/android/lib/dd;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/dd;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/de;->b(Lcom/glympse/android/lib/GGroupPrivate;Z)V
return-void
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 5
iput-object p1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
iget-object v0, p0, Lcom/glympse/android/lib/de;->jO:Lcom/glympse/android/lib/hw;
const/4 v1, 0x0
const-string v2, "groups_v2"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/glympse/android/lib/gi;
invoke-direct {v0}, Lcom/glympse/android/lib/gi;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/de;->mF:Lcom/glympse/android/lib/GGroupPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/de;->mF:Lcom/glympse/android/lib/GGroupPrivate;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/de;->a(Lcom/glympse/android/lib/GGroupPrivate;Z)V
invoke-direct {p0}, Lcom/glympse/android/lib/de;->bd()V
invoke-direct {p0}, Lcom/glympse/android/lib/de;->bM()Z
move-result v0
if-eqz v0, :cond_30
invoke-direct {p0}, Lcom/glympse/android/lib/de;->bN()V
:goto_2f
return-void
:cond_30
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->d(Z)V
goto :goto_2f
.end method
.method public startTracking(Lcom/glympse/android/api/GGroup;)I
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/gz;->i(Ljava/lang/Object;)I
move-result v1
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->startTracking(I)V
const/4 v0, 0x1
if-ne v0, v1, :cond_24
iget-object v0, p0, Lcom/glympse/android/lib/de;->mF:Lcom/glympse/android/lib/GGroupPrivate;
if-eq p1, v0, :cond_24
iget-object v0, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/16 v2, 0x1388
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GServerPost;->doPost(I)V
:cond_24
move v0, v1
goto :goto_5
.end method
.method public startTrackingAll()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_19
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->startTracking(Lcom/glympse/android/api/GGroup;)I
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_19
return-void
.end method
.method public stop()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/de;->clear()V
iget-object v0, p0, Lcom/glympse/android/lib/de;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
iget-object v0, p0, Lcom/glympse/android/lib/de;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z
iput-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
iput-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public stopTracking(Lcom/glympse/android/api/GGroup;)I
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/de;->mI:Lcom/glympse/android/lib/gz;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/gz;->j(Ljava/lang/Object;)I
move-result v0
check-cast p1, Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->stopTracking(I)V
goto :goto_5
.end method
.method public stopTrackingAll(Z)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_22
iget-object v0, p0, Lcom/glympse/android/lib/de;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
if-eqz p1, :cond_1e
:cond_14
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->stopTracking(Lcom/glympse/android/api/GGroup;)I
move-result v3
if-gtz v3, :cond_14
:goto_1a
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_1e
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/de;->stopTracking(Lcom/glympse/android/api/GGroup;)I
goto :goto_1a
:cond_22
return-void
.end method
.method public validateGroupName(Ljava/lang/String;)I
.registers 3
invoke-static {p1}, Lcom/glympse/android/lib/ej;->validateGroupName(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public viewGroup(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/de;->e(Ljava/lang/String;Z)Lcom/glympse/android/api/GGroup;
move-result-object v0
return-object v0
.end method
.method public viewGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 5
new-instance v0, Lcom/glympse/android/lib/dm;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/dm;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public viewTicket(Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)Lcom/glympse/android/lib/GTicketPrivate;
.registers 11
const/4 v6, 0x1
invoke-interface {p2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUser()Lcom/glympse/android/api/GUser;
move-result-object v4
check-cast v4, Lcom/glympse/android/lib/GUserPrivate;
new-instance v5, Lcom/glympse/android/lib/hz;
invoke-direct {v5, v6}, Lcom/glympse/android/lib/hz;-><init>(Z)V
const/4 v0, 0x0
invoke-interface {v5, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setStandalone(Z)V
invoke-interface {v5, p3}, Lcom/glympse/android/lib/GTicketPrivate;->setCode(Ljava/lang/String;)V
const/4 v0, 0x2
invoke-interface {v5, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z
invoke-interface {v4, v5}, Lcom/glympse/android/lib/GUserPrivate;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
new-instance v0, Lcom/glympse/android/lib/ep;
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ep;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/de;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v1
invoke-interface {v1, v0, v6}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-object v5
.end method