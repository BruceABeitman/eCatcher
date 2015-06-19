.class final Lcom/bbm/ui/activities/n;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/n;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/n;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    const-class v2, Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/bbm/ui/activities/n;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->b(Lcom/bbm/ui/activities/AddChannelPostActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/n;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
