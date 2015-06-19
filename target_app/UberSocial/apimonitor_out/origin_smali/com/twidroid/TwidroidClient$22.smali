.class Lcom/twidroid/TwidroidClient$22;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/TwidroidClient;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0150

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Twitter has just turned off API v1."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0151

    new-instance v2, Lcom/twidroid/TwidroidClient$22$1;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$22$1;-><init>(Lcom/twidroid/TwidroidClient$22;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    const-string v1, "com.ubersocial.networkerror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "NETWORK_ERROR_STRING"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "NETWORK_ERROR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string v1, "NETWORK_ERROR"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9c

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v2, "Could not authenticate with OAuth"

    iget-object v3, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;Landroid/view/View;)V

    const-string v1, "show_error"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Message"

    aput-object v3, v2, v5

    const-string v3, "Could not authenticate with OAuth"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "string"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_59
    :goto_59
    const-string v1, "com.ubersocial.info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v3, "NETWORK_ERROR"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/twidroid/net/b;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const v4, 0x7f0901a8

    invoke-virtual {v3, v4}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_83
    const-string v1, "broadcast.show.streaming.hint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v1, ""

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_9b
    return-void

    :cond_9c
    iget-object v1, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v2, "NETWORK_ERROR_STRING"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;Landroid/view/View;)V

    const-string v1, "show_error"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Message"

    aput-object v3, v2, v5

    const-string v3, "NETWORK_ERROR_STRING"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "string"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_59

    :cond_d1
    iget-object v1, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v3, "NETWORK_ERROR"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/twidroid/net/b;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/TwidroidClient;->a(Ljava/lang/String;Landroid/view/View;)V

    const-string v1, "show_error"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Message"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v4, "NETWORK_ERROR"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/twidroid/net/b;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "code"

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_59
.end method
