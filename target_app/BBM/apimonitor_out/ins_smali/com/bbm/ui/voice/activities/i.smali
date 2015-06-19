.class final Lcom/bbm/ui/voice/activities/i;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/b/f/a/l;
.field final synthetic b:Lcom/bbm/ui/voice/activities/h;
.method constructor <init>(Lcom/bbm/ui/voice/activities/h;Lcom/google/b/f/a/l;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/voice/activities/i;->b:Lcom/bbm/ui/voice/activities/h;
iput-object p2, p0, Lcom/bbm/ui/voice/activities/i;->a:Lcom/google/b/f/a/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/bbm/ui/voice/activities/i;->a:Lcom/google/b/f/a/l;
invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/voice/activities/i;->b:Lcom/bbm/ui/voice/activities/h;
iget-object v1, v1, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_13
.end method