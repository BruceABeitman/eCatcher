.class Lcom/lenovo/anyshare/sdk/internal/f$4;
.super Ljava/lang/Object;
.source "ShareChannel.java"

# interfaces
.implements Lcom/lenovo/channel/base/IUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/f;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 11

    sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    if-ne p1, v3, :cond_3b

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/channel/base/ShareRecord;

    sget-object v3, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;

    invoke-virtual {v2, v3}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    const/4 v4, 0x0

    new-instance v5, Lcom/lenovo/channel/exception/TransmitException;

    const/4 v6, 0x1

    const-string/jumbo v7, "local user offline"

    invoke-direct {v5, v6, v7}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v2, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V

    goto :goto_12

    :cond_33
    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/f$4$1;

    invoke-direct {v3, p0}, Lcom/lenovo/anyshare/sdk/internal/f$4$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/f$4;)V

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;)V

    :cond_3b
    return-void
.end method

.method public onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 12

    sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    if-ne p1, v3, :cond_5b

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$a;

    move-result-object v3

    iget-object v4, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/h$a;->a(Ljava/lang/String;)Ljava/util/Collection;

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;

    move-result-object v3

    iget-object v4, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/channel/base/ShareRecord;

    sget-object v3, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;

    invoke-virtual {v2, v3}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    const/4 v4, 0x0

    new-instance v5, Lcom/lenovo/channel/exception/TransmitException;

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " had offline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v2, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V

    goto :goto_1f

    :cond_53
    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/f$4$2;

    invoke-direct {v3, p0}, Lcom/lenovo/anyshare/sdk/internal/f$4$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/f$4;)V

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;)V

    :cond_5b
    sget-boolean v3, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z

    if-eqz v3, :cond_73

    sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    if-ne p1, v3, :cond_73

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v4, v4, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;

    const-string/jumbo v5, "UserOnline"

    iget-object v6, p2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    return-void
.end method
