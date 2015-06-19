.class public Lcom/glympse/android/lib/CommonSink;
.super Ljava/lang/Object;
.source "CommonSink.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# instance fields
.field private is:Ljava/lang/String;

.field private it:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private iu:Z

.field private iv:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private ix:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/CommonSink;->is:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iv:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iw:Lcom/glympse/android/hal/GVector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Lcom/glympse/android/api/GEventListener;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v4

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_4b

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v5, v3, :cond_47

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommonSink.addListenerCore] Trying to subscribe the same listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/glympse/android/lib/CommonSink;->is:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    move v0, v1

    :goto_46
    return v0

    :cond_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_4b
    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_46
.end method

.method public static removeAllListeners(Lcom/glympse/android/api/GEventSink;)V
    .registers 5

    invoke-interface {p0}, Lcom/glympse/android/api/GEventSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->clone()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_1d

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p0, v0}, Lcom/glympse/android/api/GEventSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_1d
    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/CommonSink;->a(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    goto :goto_3
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearContext(J)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 7

    invoke-interface {p1}, Lcom/glympse/android/api/GEventSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/glympse/android/api/GEventSink;->getContext(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 13

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-interface {p2}, Lcom/glympse/android/api/GGlympse;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GHandler;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CommonSink.eventsOccurred] Listener fired event on background "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, p3

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-interface {p2}, Lcom/glympse/android/api/GGlympse;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v6

    new-instance v0, Lcom/glympse/android/lib/ae;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ae;-><init>(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-interface {v6, v0}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_3d
    iget-boolean v0, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    if-eqz v0, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CommonSink.eventsOccurred] Reentrant event was detected on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/CommonSink;->is:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v1, p4

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-interface {p2}, Lcom/glympse/android/api/GGlympse;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v6

    new-instance v0, Lcom/glympse/android/lib/ae;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ae;-><init>(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-interface {v6, v0}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_85
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_9
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 10

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    :try_start_15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/glympse/android/api/GEventListener;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommonSink.eventsOccurred] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".eventsOccurred trown an exception"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_9

    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_5d

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/CommonSink;->a(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_48

    :cond_58
    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    :cond_5d
    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iw:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iw:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    iget-object v2, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_7d
    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iw:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    :cond_82
    return-void
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->ix:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllListeners()Z
    .registers 6

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_25

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    iget-object v3, p0, Lcom/glympse/android/lib/CommonSink;->iw:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_20
    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    :cond_25
    return v4
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/glympse/android/lib/CommonSink;->iu:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->iw:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/glympse/android/lib/CommonSink;->it:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method
