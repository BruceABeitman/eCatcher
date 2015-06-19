.class public final Lcom/bbm/ui/a;
.super Lcom/bbm/ui/activities/ajz;
.source "ActivityTransitionLifeCycleListener.java"


# instance fields
.field public a:Lcom/bbm/ui/c;

.field public b:Lcom/bbm/ui/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/activities/ajy;)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0a00be

    invoke-virtual {p1, v0}, Lcom/bbm/ui/activities/ajy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;

    if-nez v0, :cond_16

    sget-object v0, Lcom/bbm/ui/c;->a:Lcom/bbm/ui/c;

    iput-object v0, p0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;

    sget-object v0, Lcom/bbm/ui/c;->a:Lcom/bbm/ui/c;

    iput-object v0, p0, Lcom/bbm/ui/a;->a:Lcom/bbm/ui/c;

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;

    if-nez v0, :cond_1e

    sget-object v0, Lcom/bbm/ui/c;->c:Lcom/bbm/ui/c;

    iput-object v0, p0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;

    :cond_1e
    sget-object v0, Lcom/bbm/ui/b;->a:[I

    iget-object v1, p0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;

    invoke-virtual {v1}, Lcom/bbm/ui/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    :goto_2b
    return-void

    :pswitch_2c
    const/high16 v0, 0x7f04

    const v1, 0x7f040016

    invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    goto :goto_2b

    :pswitch_35
    const v0, 0x7f04000d

    const v1, 0x7f04000f

    invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    goto :goto_2b

    :pswitch_3f
    invoke-virtual {p1, v2, v2}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    goto :goto_2b

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_35
        :pswitch_3f
    .end packed-switch
.end method

.method public final c(Lcom/bbm/ui/activities/ajy;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/a;->a:Lcom/bbm/ui/c;

    if-nez v0, :cond_9

    sget-object v0, Lcom/bbm/ui/c;->c:Lcom/bbm/ui/c;

    iput-object v0, p0, Lcom/bbm/ui/a;->a:Lcom/bbm/ui/c;

    :cond_9
    sget-object v0, Lcom/bbm/ui/b;->a:[I

    iget-object v1, p0, Lcom/bbm/ui/a;->a:Lcom/bbm/ui/c;

    invoke-virtual {v1}, Lcom/bbm/ui/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    :goto_16
    return-void

    :pswitch_17
    const v0, 0x7f040015

    const v1, 0x7f040014

    invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    goto :goto_16

    :pswitch_21
    const v0, 0x7f04000f

    const v1, 0x7f04000e

    invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    goto :goto_16

    :pswitch_2b
    invoke-virtual {p1, v2, v2}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    goto :goto_16

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_17
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method
