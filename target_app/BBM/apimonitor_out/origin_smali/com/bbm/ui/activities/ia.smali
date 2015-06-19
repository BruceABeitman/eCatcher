.class final Lcom/bbm/ui/activities/ia;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ia;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "quickshare attach dropbox file"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ia;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->az(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/b/a/a/i;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/l;->a:Lcom/b/a/a/l;

    if-nez v1, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An app key must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v1, v1, Lcom/b/a/a/l;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/a/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/ia;->a:Lcom/bbm/ui/activities/ConversationActivity;

    new-instance v2, Lcom/b/a/a/j;

    invoke-direct {v2, v0, v1}, Lcom/b/a/a/j;-><init>(Lcom/b/a/a/i;Landroid/app/Activity;)V

    invoke-interface {v2}, Lcom/b/a/a/a;->c()Landroid/support/v4/app/n;

    move-result-object v1

    if-nez v1, :cond_38

    invoke-interface {v2}, Lcom/b/a/a/a;->b()Landroid/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dropbox Chooser requires Fragments. If below API level 11, pass in a FragmentActivity from the support library."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    invoke-interface {v2}, Lcom/b/a/a/a;->a()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_46

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DbxChooser\'s launch() must be called when there is an Activity available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-interface {v2}, Lcom/b/a/a/a;->a()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/i;->a(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_72

    invoke-interface {v2}, Lcom/b/a/a/a;->c()Landroid/support/v4/app/n;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/b/a/a/f;->a()Lcom/b/a/a/f;

    move-result-object v0

    invoke-interface {v2}, Lcom/b/a/a/a;->c()Landroid/support/v4/app/n;

    move-result-object v1

    const-string v2, "com.dropbox.chooser.android.DIALOG"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/f;->show(Landroid/support/v4/app/n;Ljava/lang/String;)V

    :goto_63
    return-void

    :cond_64
    invoke-static {}, Lcom/b/a/a/c;->a()Lcom/b/a/a/c;

    move-result-object v0

    invoke-interface {v2}, Lcom/b/a/a/a;->b()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "com.dropbox.chooser.android.DIALOG"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_63

    :cond_72
    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lcom/b/a/a/i;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EXTRA_APP_KEY"

    iget-object v0, v0, Lcom/b/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SDK_VERSION"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_87
    invoke-interface {v2, v0}, Lcom/b/a/a/a;->a(Landroid/content/Intent;)V
    :try_end_8a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_63

    :catch_8b
    move-exception v0

    throw v0
.end method
