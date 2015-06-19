.class final Lcom/bbm/ui/activities/agm;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Lcom/bbm/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;Lcom/bbm/ui/b/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/agm;->b:Lcom/bbm/ui/activities/SettingsActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/agm;->a:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const-string v0, "onDeleteChatHistoryClicked Dialog RightButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/agm;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/activities/agm;->b:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;

    move-result-object v0

    new-instance v1, Lcom/bbm/d/bc;

    invoke-direct {v1}, Lcom/bbm/d/bc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/agm;->b:Lcom/bbm/ui/activities/SettingsActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/agm;->b:Lcom/bbm/ui/activities/SettingsActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/ui/activities/agm;->b:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-virtual {v3}, Lcom/bbm/ui/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0670

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Landroid/app/Dialog;)V

    return-void
.end method
