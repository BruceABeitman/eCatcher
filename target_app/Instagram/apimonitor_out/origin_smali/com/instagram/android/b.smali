.class final Lcom/instagram/android/b;
.super Landroid/content/BroadcastReceiver;
.source "InstagramApplication.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/InstagramApplication;

.field private b:Lcom/instagram/bugreport/rageshake/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/InstagramApplication;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Lcom/instagram/bugreport/rageshake/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/b;->b:Lcom/instagram/bugreport/rageshake/a;

    if-nez v0, :cond_d

    new-instance v0, Lcom/instagram/bugreport/rageshake/a;

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-direct {v0, v1}, Lcom/instagram/bugreport/rageshake/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/b;->b:Lcom/instagram/bugreport/rageshake/a;

    :cond_d
    iget-object v0, p0, Lcom/instagram/android/b;->b:Lcom/instagram/bugreport/rageshake/a;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "userid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "0"

    :cond_a
    invoke-static {v0}, Lcom/instagram/e/a;->b(Ljava/lang/String;)V

    const-string v0, "loggedin"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/b;->a()Lcom/instagram/bugreport/rageshake/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/a/b;->a(Lcom/instagram/common/l/a/a;)V

    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "autocomplete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-virtual {v1, v0}, Lcom/instagram/android/InstagramApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-virtual {v1, v0}, Lcom/instagram/android/InstagramApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instagram/android/service/AutoCompleteHashtagService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-static {v1}, Lcom/instagram/android/InstagramApplication;->a(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/user/userservice/a/e;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-static {v1}, Lcom/instagram/android/InstagramApplication;->b(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/user/userservice/b/g;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :goto_89
    return-void

    :cond_8a
    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-direct {p0}, Lcom/instagram/android/b;->a()Lcom/instagram/bugreport/rageshake/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/bugreport/rageshake/a;->c()V

    invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/b;->a()Lcom/instagram/bugreport/rageshake/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/a/b;->b(Lcom/instagram/common/l/a/a;)V

    :cond_a2
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-static {v1}, Lcom/instagram/android/InstagramApplication;->a(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/user/userservice/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/b;->a:Lcom/instagram/android/InstagramApplication;

    invoke-static {v1}, Lcom/instagram/android/InstagramApplication;->b(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/user/userservice/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_89
.end method
