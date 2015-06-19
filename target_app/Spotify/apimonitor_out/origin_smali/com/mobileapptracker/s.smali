.class final Lcom/mobileapptracker/s;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/g;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/g;)V
    .registers 2

    iput-object p1, p0, Lcom/mobileapptracker/s;->a:Lcom/mobileapptracker/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/mobileapptracker/s;->a:Lcom/mobileapptracker/g;

    iget-boolean v0, v0, Lcom/mobileapptracker/g;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mobileapptracker/s;->a:Lcom/mobileapptracker/g;

    invoke-virtual {v0}, Lcom/mobileapptracker/g;->b()V

    :cond_b
    return-void
.end method
