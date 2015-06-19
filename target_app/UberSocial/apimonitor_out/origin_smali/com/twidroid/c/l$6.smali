.class final Lcom/twidroid/c/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/l;->a(Lcom/twidroid/TwidroidClient;Lcom/twidroid/UberSocialApplication;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/l$6;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/c/l$6;->a:Lcom/twidroid/TwidroidClient;

    const-class v2, Lcom/twidroid/activity/SendTweet;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Kindle Fire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twidroid/c/l$6;->a:Lcom/twidroid/TwidroidClient;

    const v3, 0x7f0c02be

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_26
    const-string v1, "twidroyd_display_message"

    iget-object v2, p0, Lcom/twidroid/c/l$6;->a:Lcom/twidroid/TwidroidClient;

    const v3, 0x7f0c02bf

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "twidroyd_disable_attach_buttons"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/c/l$6;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "shout-out"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Answer"

    aput-object v3, v1, v2

    const-string v2, "Yes"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_57
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twidroid/c/l$6;->a:Lcom/twidroid/TwidroidClient;

    const v3, 0x7f0c02bd

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26
.end method
