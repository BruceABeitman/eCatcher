.class Lcom/twidroid/service/BackgroundService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/service/BackgroundService;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/BackgroundService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/twidroid/service/f;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-direct {v1, v0}, Lcom/twidroid/service/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/twidroid/service/f;->a()Z

    move-result v3

    const-string v0, "UberSocialBackgroundService"

    const-string v4, "UberSocialBackground Service ThreadStart"

    invoke-static {v0, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    new-instance v4, Lcom/twidroid/d/v;

    iget-object v5, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-direct {v4, v5}, Lcom/twidroid/d/v;-><init>(Lcom/twidroid/service/BackgroundService;)V

    iput-object v4, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->aG()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/twidroid/b/a/b;->a(I)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aj()Z

    move-result v0

    if-eqz v0, :cond_41

    :try_start_3a
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->A()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_41} :catch_416

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->B()I

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->v()Z

    move-result v0

    if-eqz v0, :cond_ff

    :cond_55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "hh:mm a"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "UberSocialBackgroundService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Background Check started"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_80
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v5, v0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    if-eqz v3, :cond_14a

    move-object v0, v1

    :goto_9e
    invoke-static {v4, v5, v0}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v5, v0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    if-eqz v3, :cond_14d

    move-object v0, v1

    :goto_aa
    invoke-static {v4, v5, v0}, Lcom/twidroid/service/BackgroundService;->b(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v5, v0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    if-eqz v3, :cond_150

    move-object v0, v1

    :goto_b6
    invoke-static {v4, v5, v0}, Lcom/twidroid/service/BackgroundService;->c(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c1
    :goto_c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_153

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-boolean v4, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v4, :cond_c1

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d8} :catch_d9

    goto :goto_c1

    :catch_d9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "UberSocialBackgroundService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::run >> Exception in Background Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f9
    if-eqz v1, :cond_fe

    invoke-virtual {v1}, Lcom/twidroid/service/f;->b()V

    :cond_fe
    :goto_fe
    return-void

    :cond_ff
    const-string v0, "UberSocialBackgroundService"

    const-string v1, "background notifications disabled - removing from alarmservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v1}, Lcom/twidroid/service/BackgroundService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twidroid/service/BackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v1}, Lcom/twidroid/service/BackgroundService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/twidroid/service/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Lcom/twidroid/service/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const v1, 0x7f0c0162

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_fe

    :cond_14a
    move-object v0, v2

    goto/16 :goto_9e

    :cond_14d
    move-object v0, v2

    goto/16 :goto_aa

    :cond_150
    move-object v0, v2

    goto/16 :goto_b6

    :cond_153
    :try_start_153
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15b

    :cond_16f
    sget-wide v3, Lcom/twidroid/net/a/c/c;->g:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_184

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-static {v3}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/service/BackgroundService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-wide v4, Lcom/twidroid/net/a/c/c;->g:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_184
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/d/v;->d(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/d/v;->c(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/d/v;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-static {v0, v3}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)I

    move-result v0

    const-string v3, "UberSocialBackgroundService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New InnerCircle messages count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v3, v4, v0}, Lcom/twidroid/d/v;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->A()Z

    move-result v0

    if-nez v0, :cond_1f3

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1f3
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->E()Z

    move-result v0

    if-nez v0, :cond_204

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_204
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->C()Z

    move-result v0

    if-nez v0, :cond_215

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_215
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_237

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v0}, Lcom/twidroid/service/BackgroundService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->i()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/twidroid/service/BackgroundService;->a(Ljava/util/List;)V

    :cond_237
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24c

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    const-string v3, "TAB_TIMELINE"

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/service/BackgroundService;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_24c
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_270

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v0}, Lcom/twidroid/service/BackgroundService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->j()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    const-string v3, "TAB_MENTIONS"

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v4, v4, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/service/BackgroundService;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_270
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36e

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v6, v6, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    iget-object v0, v0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v6, v6, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2c2
    :goto_2c2
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v0}, Lcom/twidroid/service/BackgroundService;->a()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2e5

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2e5

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f1

    :cond_2e5
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->h:Landroid/os/Handler;

    new-instance v3, Lcom/twidroid/service/BackgroundService$1$1;

    invoke-direct {v3, p0}, Lcom/twidroid/service/BackgroundService$1$1;-><init>(Lcom/twidroid/service/BackgroundService$1;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-static {v4}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/service/BackgroundService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_328

    const-string v0, "UberSocialBackgroundService"

    const-string v3, "Last Update Check in the future. Timezone changed? Resetting to present"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v3, Lcom/twidroid/net/a/c/c;->g:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_328

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-static {v3}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/service/BackgroundService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-wide v4, Lcom/twidroid/net/a/c/c;->g:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_328
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-static {v0}, Lcom/twidroid/service/BackgroundService;->b(Lcom/twidroid/service/BackgroundService;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-static {v0, v3}, Lcom/twidroid/service/BackgroundService;->b(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-static {v0, v3}, Lcom/twidroid/service/BackgroundService;->c(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v3, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-static {v0, v3}, Lcom/twidroid/service/BackgroundService;->d(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)V

    if-eqz v1, :cond_34e

    invoke-virtual {v1}, Lcom/twidroid/service/f;->b()V

    move-object v1, v2

    :cond_34e
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v3}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/twidroid/service/MuteSyncService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/twidroid/service/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    invoke-virtual {v0}, Lcom/twidroid/service/BackgroundService;->stopSelf()V

    const-string v0, "UberSocialBackgroundService"

    const-string v2, "background task finished"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    :cond_36e
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c2

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v6, v6, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v6, v6, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2c2

    :cond_3c2
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c2

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v3, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v4, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v6, v6, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v6, v6, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_414
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_414} :catch_d9

    goto/16 :goto_2c2

    :catch_416
    move-exception v0

    goto/16 :goto_41
.end method
