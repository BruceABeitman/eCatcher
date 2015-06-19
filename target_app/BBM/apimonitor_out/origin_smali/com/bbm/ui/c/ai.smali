.class final Lcom/bbm/ui/c/ai;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ai;->a:Lcom/bbm/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/c/ai;->a:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/bbm/ui/c/ai;->a:Lcom/bbm/ui/c/l;

    invoke-static {v2}, Lcom/bbm/ui/c/l;->l(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/c/ai;->a:Lcom/bbm/ui/c/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/c/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
