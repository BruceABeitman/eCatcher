.class  Lcom/umeng/common/net/e;
.super Ljava/lang/Object;
.source "DownloadingService.java"
.implements Lcom/umeng/common/net/DownloadingService$a;
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(I)V
.registers 10
const/4 v7, 0x1
const/4 v1, 0x0
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
iget-object v2, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
if-eqz v2, :cond_3b
aget-wide v3, v2, v7
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-lez v3, :cond_3b
aget-wide v3, v2, v1
long-to-float v1, v3
aget-wide v2, v2, v7
long-to-float v2, v2
div-float/2addr v1, v2
const/high16 v2, 0x42c8
mul-float/2addr v1, v2
float-to-int v1, v1
const/16 v2, 0x64
if-le v1, v2, :cond_3b
const/16 v1, 0x63
:cond_3b
iget-object v2, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
iget-object v3, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;
invoke-static {v2, v3, p1, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;
move-result-object v1
iput-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;
iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
move-result-object v0
invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:cond_4e
return-void
.end method
.method public a(II)V
.registers 10
const/4 v6, 0x0
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_85
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;
iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;
iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/umeng/common/a/a;->c(Landroid/content/Context;)I
move-result v3
const/16 v4, 0x64
invoke-virtual {v2, v3, v4, p2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V
iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I
move-result v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "%"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v2, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
move-result-object v2
invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
const/4 v4, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
iget-object v1, v1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;
aput-object v1, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_85
return-void
.end method
.method public a(ILjava/lang/Exception;)V
.registers 8
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_53
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;
iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;
iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I
move-result v3
new-instance v4, Ljava/lang/StringBuilder;
iget-object v1, v1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, " \u4e0b\u8f7d\u5931\u8d25\u3002"
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v1, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
move-result-object v1
invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
:cond_53
return-void
.end method
.method public a(ILjava/lang/String;)V
.registers 11
const/16 v7, 0x64
const/4 v6, 0x5
const/4 v5, 0x1
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8d
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
if-eqz v0, :cond_8d
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;
iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;
iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
iget-object v2, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I
move-result v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "%"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;
move-result-object v0
iget-object v2, v1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;
iget-object v3, v1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;
invoke-virtual {v0, v2, v3, v7}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "filename"
invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, v1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;
const-string/jumbo v3, "delta_update"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_8e
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v2
const/4 v3, 0x6
iput v3, v2, Landroid/os/Message;->what:I
iput v5, v2, Landroid/os/Message;->arg1:I
iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
iput p1, v2, Landroid/os/Message;->arg2:I
invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:goto_8d
:cond_8d
return-void
:cond_8e
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v2
iput v6, v2, Landroid/os/Message;->what:I
iput v5, v2, Landroid/os/Message;->arg1:I
iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
iput p1, v2, Landroid/os/Message;->arg2:I
invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v2
iput v6, v2, Landroid/os/Message;->what:I
iput v5, v2, Landroid/os/Message;->arg1:I
iput p1, v2, Landroid/os/Message;->arg2:I
invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
:try_start_b3
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_ca
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Messenger;
invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:cond_ca
iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
:try_end_cf
.catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_cf} :catch_d0
goto :goto_8d
:catch_d0
move-exception v0
iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
goto :goto_8d
.end method