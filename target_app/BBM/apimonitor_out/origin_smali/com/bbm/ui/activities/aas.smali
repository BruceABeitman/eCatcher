.class final Lcom/bbm/ui/activities/aas;
.super Lcom/bbm/ui/cj;
.source "OwnProfileActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aas;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aas;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->i(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    return-void
.end method

.method public final a(I)V
    .registers 5

    packed-switch p1, :pswitch_data_16

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/aas;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/bbm/ui/activities/aas;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->h(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_3

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
