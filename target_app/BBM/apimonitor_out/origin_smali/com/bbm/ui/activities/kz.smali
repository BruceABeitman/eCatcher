.class final Lcom/bbm/ui/activities/kz;
.super Lcom/bbm/ui/cj;
.source "GroupAdminEditActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminEditActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/kz;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "menu back onBackAction"

    const-class v1, Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/kz;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    packed-switch p1, :pswitch_data_24

    :goto_3
    return-void

    :pswitch_4
    const-string v0, "menu add onAction"

    const-class v1, Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/kz;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    const-class v2, Lcom/bbm/ui/activities/GroupAdminAddActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/kz;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/kz;->a:Lcom/bbm/ui/activities/GroupAdminEditActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
