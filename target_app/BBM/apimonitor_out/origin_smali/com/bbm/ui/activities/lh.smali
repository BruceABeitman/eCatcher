.class final Lcom/bbm/ui/activities/lh;
.super Ljava/lang/Object;
.source "GroupAdminValidatePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "mHeaderActionBar Positive Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/li;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/li;-><init>(Lcom/bbm/ui/activities/lh;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/g/am;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bbm/g/aq;

    invoke-direct {v3, v1, v2}, Lcom/bbm/g/aq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    return-void
.end method
