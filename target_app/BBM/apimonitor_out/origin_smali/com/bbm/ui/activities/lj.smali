.class final Lcom/bbm/ui/activities/lj;
.super Ljava/lang/Object;
.source "GroupAdminValidatePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/lj;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    const-string v0, "password field afterTextChanged"

    const-class v1, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/lj;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->c(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/lj;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
