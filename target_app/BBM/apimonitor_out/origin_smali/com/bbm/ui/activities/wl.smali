.class final Lcom/bbm/ui/activities/wl;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/eu;

.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/activities/eu;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/wl;->b:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/wl;->a:Lcom/bbm/ui/activities/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const v2, 0x7f0a007b

    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->a:Lcom/bbm/ui/activities/eu;

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->a:Lcom/bbm/ui/activities/eu;

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-boolean v0, v0, Lcom/bbm/d/es;->k:Z

    if-eqz v0, :cond_21

    :cond_17
    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->a:Lcom/bbm/ui/activities/eu;

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v3, :cond_4b

    :cond_21
    packed-switch p2, :pswitch_data_56

    :goto_24
    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->b:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :pswitch_2e
    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->a:Lcom/bbm/ui/activities/eu;

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->b:Lcom/bbm/ui/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V

    goto :goto_24

    :cond_3f
    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->b:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v2, v3}, Lcom/bbm/ui/activities/MainActivity;->a(II)V

    goto :goto_24

    :pswitch_45
    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->b:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V

    goto :goto_24

    :cond_4b
    packed-switch p2, :pswitch_data_5e

    goto :goto_24

    :pswitch_4f
    iget-object v0, p0, Lcom/bbm/ui/activities/wl;->b:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(II)V

    goto :goto_24

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_45
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4f
    .end packed-switch
.end method
