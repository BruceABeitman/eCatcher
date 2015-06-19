.class Lcom/glympse/android/lib/bn;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GExtensionListener;
.implements Lcom/glympse/android/lib/GExtensionManager;


# instance fields
.field private cI:Lcom/glympse/android/api/GGlympse;

.field private kH:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GExtension;",
            ">;"
        }
    .end annotation
.end field

.field private kI:Ljava/lang/String;

.field private kJ:Z

.field private kK:Lcom/glympse/android/lib/GExtension;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/bn;->kJ:Z

    return-void
.end method

.method private bc()Lcom/glympse/android/lib/GExtensionListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GExtensionListener;

    return-object v0
.end method


# virtual methods
.method public activated(Lcom/glympse/android/lib/GExtension;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    if-eq v0, p1, :cond_35

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ExtensionManager.activated] Attempting to activate extension "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    invoke-interface {v2}, Lcom/glympse/android/lib/GExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_35
    iput-object p1, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    iget-object v1, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    invoke-interface {v1}, Lcom/glympse/android/lib/GExtension;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->setBrand(Ljava/lang/String;)V

    return-void
.end method

.method public add(Lcom/glympse/android/lib/GExtension;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-direct {p0}, Lcom/glympse/android/lib/bn;->bc()Lcom/glympse/android/lib/GExtensionListener;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/lib/GExtension;->start(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/lib/GExtensionListener;)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/bn;->kJ:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GExtension;->setActive(Z)V

    :cond_1a
    return-void
.end method

.method public deactivated(Lcom/glympse/android/lib/GExtension;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    if-eq v0, p1, :cond_36

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ExtensionManager:deactivated] Attempting to deactivate extension "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    invoke-interface {v2}, Lcom/glympse/android/lib/GExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :goto_35
    return-void

    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    iget-object v1, p0, Lcom/glympse/android/lib/bn;->kI:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->setBrand(Ljava/lang/String;)V

    goto :goto_35
.end method

.method public enable(Lcom/glympse/android/lib/GExtension;Z)V
    .registers 3

    return-void
.end method

.method public getExtensions()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GExtension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public setActive(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/glympse/android/lib/bn;->kJ:Z

    if-ne v0, p1, :cond_5

    :cond_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/glympse/android/lib/bn;->kJ:Z

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GExtension;

    iget-boolean v3, p0, Lcom/glympse/android/lib/bn;->kJ:Z

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GExtension;->setActive(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public setBrand(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/bn;->kI:Ljava/lang/String;

    return-void
.end method

.method public start(Lcom/glympse/android/api/GGlympse;)V
    .registers 7

    iput-object p1, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-direct {p0}, Lcom/glympse/android/lib/bn;->bc()Lcom/glympse/android/lib/GExtensionListener;

    move-result-object v2

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_21

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GExtension;

    iget-object v4, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, v4, v2}, Lcom/glympse/android/lib/GExtension;->start(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/lib/GExtensionListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_21
    return-void
.end method

.method public stop()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GExtension;

    invoke-interface {v0}, Lcom/glympse/android/lib/GExtension;->stop()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/bn;->kH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iput-object v3, p0, Lcom/glympse/android/lib/bn;->cI:Lcom/glympse/android/api/GGlympse;

    iput-object v3, p0, Lcom/glympse/android/lib/bn;->kK:Lcom/glympse/android/lib/GExtension;

    return-void
.end method
