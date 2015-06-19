.class final Lcom/bbm/ui/activities/aho;
.super Lcom/bbm/ui/cj;
.source "SponsoredAdActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SponsoredAdActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aho;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aho;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    packed-switch p1, :pswitch_data_a

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/aho;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->a(Lcom/bbm/ui/activities/SponsoredAdActivity;)V

    goto :goto_3

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
