.class final Lcom/bbm/ui/activities/xh;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bbm/ui/b/f;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bbm/ui/b/a;

.field final synthetic c:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;ILcom/bbm/ui/b/a;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/xh;->c:Lcom/bbm/ui/activities/MainActivity;

    iput p2, p0, Lcom/bbm/ui/activities/xh;->a:I

    iput-object p3, p0, Lcom/bbm/ui/activities/xh;->b:Lcom/bbm/ui/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget v0, p0, Lcom/bbm/ui/activities/xh;->a:I

    const v1, 0x7f0a0036

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/activities/xh;->c:Lcom/bbm/ui/activities/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/activities/xh;->c:Lcom/bbm/ui/activities/MainActivity;

    const-class v3, Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/bbm/ui/activities/xh;->b:Lcom/bbm/ui/b/a;

    invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V

    return-void

    :cond_1b
    iget v0, p0, Lcom/bbm/ui/activities/xh;->a:I

    const v1, 0x7f0a0038

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/activities/xh;->c:Lcom/bbm/ui/activities/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/activities/xh;->c:Lcom/bbm/ui/activities/MainActivity;

    const-class v3, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method
