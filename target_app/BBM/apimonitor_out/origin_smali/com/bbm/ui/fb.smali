.class public final Lcom/bbm/ui/fb;
.super Lcom/glympse/map/lib/Map;
.source "QuickShareGlympseView.java"


# instance fields
.field a:Lcom/bbm/ui/ez;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/map/lib/Map;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/glympse/map/lib/Map;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/fb;->a:Lcom/bbm/ui/ez;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/fb;->a:Lcom/bbm/ui/ez;

    invoke-interface {v0}, Lcom/bbm/ui/ez;->a()V

    :cond_c
    return-void
.end method
