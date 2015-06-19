.class final Lcom/bbm/util/aq;
.super Lcom/bbm/ui/d/a;
.source "ChannelUtil.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/ap;


# direct methods
.method constructor <init>(Lcom/bbm/util/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    invoke-direct {p0}, Lcom/bbm/ui/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-boolean v0, v0, Lcom/bbm/util/ap;->d:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-object v1, v1, Lcom/bbm/util/ap;->e:Landroid/app/Activity;

    const-class v2, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-object v1, v1, Lcom/bbm/util/ap;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-object v0, v0, Lcom/bbm/util/ap;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bbm/ui/activities/MainActivity;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-object v0, v0, Lcom/bbm/util/ap;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_27
    return-void
.end method

.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-object v0, v0, Lcom/bbm/util/ap;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/util/aq;->a:Lcom/bbm/util/ap;

    iget-object v1, v1, Lcom/bbm/util/ap;->e:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
