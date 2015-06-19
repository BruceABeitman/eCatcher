.class public final Lcom/mobileapptracker/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Z


# direct methods
.method protected constructor <init>(Lcom/mobileapptracker/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobileapptracker/c;->d:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobileapptracker/c;->e:Z

    iput-object p2, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobileapptracker/c;->d:Lorg/json/JSONObject;

    iput-boolean p5, p0, Lcom/mobileapptracker/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_74
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_5f

    :try_start_e
    const-string v1, "link"

    iget-object v2, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "post_body"

    iget-object v2, p0, Lcom/mobileapptracker/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "first_session"

    iget-boolean v2, p0, Lcom/mobileapptracker/c;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_74
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_2a} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_2a} :catch_5f

    :try_start_2a
    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-virtual {v1}, Lcom/mobileapptracker/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-virtual {v2, v1}, Lcom/mobileapptracker/b;->a(I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-virtual {v2, v0, v1}, Lcom/mobileapptracker/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_74
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_40} :catch_5f

    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string v1, "MobileAppTracker"

    const-string v2, "Failed creating event for queueing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_74
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_55} :catch_5f

    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_49

    :catch_5f
    move-exception v0

    :try_start_60
    const-string v1, "MobileAppTracker"

    const-string v2, "Interrupted adding event to queue"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_74

    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_49

    :catchall_74
    move-exception v0

    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/b;

    invoke-static {v1}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
