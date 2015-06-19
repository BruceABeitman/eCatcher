.class final Lcom/bbm/ui/activities/ot;
.super Lcom/bbm/ui/cj;
.source "GroupListsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ot;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ot;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListsActivity;->h()V

    return-void
.end method

.method public final a(I)V
    .registers 4

    packed-switch p1, :pswitch_data_e

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/ot;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/ot;->a:Lcom/bbm/ui/activities/GroupListsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupListsActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
