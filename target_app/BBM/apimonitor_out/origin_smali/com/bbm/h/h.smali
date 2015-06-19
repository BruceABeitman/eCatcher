.class final Lcom/bbm/h/h;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/g/t;

.field final synthetic b:Lcom/bbm/h/a;


# direct methods
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/g/t;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/h;->b:Lcom/bbm/h/a;

    iput-object p2, p0, Lcom/bbm/h/h;->a:Lcom/bbm/g/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "incoming group invite clicked"

    const-class v1, Lcom/bbm/h/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/h/h;->b:Lcom/bbm/h/a;

    invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "invite_id"

    iget-object v2, p0, Lcom/bbm/h/h;->a:Lcom/bbm/g/t;

    iget-object v2, v2, Lcom/bbm/g/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/h/h;->b:Lcom/bbm/h/a;

    invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/h/h;->b:Lcom/bbm/h/a;

    invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040001

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
