.class final Lcom/bbm/ui/activities/ta;
.super Lcom/bbm/ui/cj;
.source "GroupProfileActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->h()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    packed-switch p1, :pswitch_data_38

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->e(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupProfileActivity;->f(Lcom/bbm/ui/activities/GroupProfileActivity;)I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v0, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    const/16 v1, 0x2726

    iget-object v2, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_3

    :cond_28
    iget-object v0, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/ta;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    const v2, 0x7f0e041b

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
