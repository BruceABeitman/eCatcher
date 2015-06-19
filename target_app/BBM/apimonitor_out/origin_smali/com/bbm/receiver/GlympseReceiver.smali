.class public Lcom/bbm/receiver/GlympseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlympseReceiver.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const-string v0, "com.glympse.android.hal.service.STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/o;->a(Landroid/content/Context;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v0, "com.glympse.android.hal.service.NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object p1, p0, Lcom/bbm/receiver/GlympseReceiver;->a:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    iget-object v5, v0, Lcom/bbm/o;->b:Lcom/bbm/util/a/a;

    iget-object v0, v5, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_42
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/bbm/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_59} :catch_5a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_42 .. :try_end_59} :catch_7a

    goto :goto_46

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_62
    :try_start_62
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/bbm/util/a/a;->c(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/NullPointerException; {:try_start_62 .. :try_end_79} :catch_5a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_62 .. :try_end_79} :catch_7a

    goto :goto_66

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_17

    :cond_7f
    :try_start_7f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    if-eqz v0, :cond_bc

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getDuration()I

    move-result v5

    if-le v5, v1, :cond_bc

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getDuration()I

    move-result v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_a8
    move-object v2, v1

    move v1, v0

    goto :goto_83

    :cond_ab
    if-eqz v2, :cond_17

    iget-object v0, p0, Lcom/bbm/receiver/GlympseReceiver;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bbm/util/a/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_ba
    .catch Ljava/lang/NullPointerException; {:try_start_7f .. :try_end_ba} :catch_5a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7f .. :try_end_ba} :catch_7a

    goto/16 :goto_17

    :cond_bc
    move v0, v1

    move-object v1, v2

    goto :goto_a8
.end method
