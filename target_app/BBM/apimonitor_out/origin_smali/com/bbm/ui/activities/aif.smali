.class final Lcom/bbm/ui/activities/aif;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/StoreActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/StoreActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aif;->a:Lcom/bbm/ui/activities/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 5

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    packed-switch v0, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/bbm/ui/activities/aif;->a:Lcom/bbm/ui/activities/StoreActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/StoreActivity;->b(Lcom/bbm/ui/activities/StoreActivity;)Lcom/bbm/ui/c/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/c/gz;->a()V

    iget-object v0, p0, Lcom/bbm/ui/activities/aif;->a:Lcom/bbm/ui/activities/StoreActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    goto :goto_5

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
