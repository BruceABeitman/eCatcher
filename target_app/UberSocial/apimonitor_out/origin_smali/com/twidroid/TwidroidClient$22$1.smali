.class Lcom/twidroid/TwidroidClient$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$22;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$22;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$22;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$22$1;->a:Lcom/twidroid/TwidroidClient$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$22$1;->a:Lcom/twidroid/TwidroidClient$22;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->finish()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$22$1;->a:Lcom/twidroid/TwidroidClient$22;

    iget-object v1, v1, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-class v2, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$22$1;->a:Lcom/twidroid/TwidroidClient$22;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/twidroid/TwidroidClient$22$1;->a:Lcom/twidroid/TwidroidClient$22;

    iget-object v4, v4, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v4}, Lcom/twidroid/TwidroidClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/twidroid/TwidroidClient$22$1;->a:Lcom/twidroid/TwidroidClient$22;

    iget-object v6, v6, Lcom/twidroid/TwidroidClient$22;->a:Lcom/twidroid/TwidroidClient;

    const-class v7, Lcom/twidroid/TwidroidClient;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    return-void
.end method
