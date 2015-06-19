.class final Lcom/bbm/h/i;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/g/v;

.field final synthetic b:Lcom/bbm/g/a;

.field final synthetic c:Lcom/bbm/h/a;


# direct methods
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/g/v;Lcom/bbm/g/a;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/h/i;->c:Lcom/bbm/h/a;

    iput-object p2, p0, Lcom/bbm/h/i;->a:Lcom/bbm/g/v;

    iput-object p3, p0, Lcom/bbm/h/i;->b:Lcom/bbm/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "outgoing group invite clicked"

    const-class v1, Lcom/bbm/h/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/h/i;->c:Lcom/bbm/h/a;

    invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/SentPendingInviteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "inviteId"

    iget-object v2, p0, Lcom/bbm/h/i;->a:Lcom/bbm/g/v;

    iget-object v2, v2, Lcom/bbm/g/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "invitee"

    iget-object v2, p0, Lcom/bbm/h/i;->a:Lcom/bbm/g/v;

    iget-object v2, v2, Lcom/bbm/g/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isGroup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "group_timestamp"

    iget-object v2, p0, Lcom/bbm/h/i;->a:Lcom/bbm/g/v;

    iget-wide v2, v2, Lcom/bbm/g/v;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "group_name"

    iget-object v2, p0, Lcom/bbm/h/i;->b:Lcom/bbm/g/a;

    iget-object v2, v2, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/h/i;->c:Lcom/bbm/h/a;

    invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/h/i;->c:Lcom/bbm/h/a;

    invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040001

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
