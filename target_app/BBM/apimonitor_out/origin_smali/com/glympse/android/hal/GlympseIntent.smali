.class public Lcom/glympse/android/hal/GlympseIntent;
.super Ljava/lang/Object;
.source "GlympseIntent.java"

# interfaces
.implements Lcom/glympse/android/hal/GIntent;


# instance fields
.field private x:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;D)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    return-void
.end method

.method public putExtra(Ljava/lang/String;F)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    return-void
.end method

.method public putExtra(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public putExtra(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public putExtra(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method protected s()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method public setFlags(I)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/GlympseIntent;->x:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
