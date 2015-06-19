.class  Lcom/twidroid/service/b;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/service/ConnectionAvailableReceiver$1;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/service/b;-><init>()V
return-void
.end method
.method protected varargs a([Landroid/content/Context;)Landroid/content/Context;
.registers 8
const/4 v5, 0x0
invoke-static {}, Lcom/twidroid/service/ConnectionAvailableReceiver;->b()Lcom/twidroid/b/a/b;
move-result-object v0
const/16 v1, 0x32
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(I)V
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "hh:mm a"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v1, "ConnectionAvailableReceiver"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " sending tweets in background"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_start_35
invoke-static {}, Lcom/twidroid/service/ConnectionAvailableReceiver;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->m()I
:try_end_40
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_4d
const/4 v0, 0x0
:try_start_41
invoke-static {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver;->a(Z)Z
invoke-static {}, Lcom/twidroid/service/ConnectionAvailableReceiver;->c()Z
:try_end_47
.catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_6b
move-result v0
if-eqz v0, :cond_58
:goto_4a
aget-object v0, p1, v5
:goto_4c
return-object v0
:catch_4d
move-exception v0
const/4 v0, 0x0
:try_start_4f
aget-object v0, p1, v0
invoke-static {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver;->a(Landroid/content/Context;)V
const/4 v0, 0x0
aget-object v0, p1, v0
goto :goto_4c
:cond_58
const/4 v0, 0x1
invoke-static {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver;->b(Z)Z
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_6b
:try_start_5c
invoke-static {}, Lcom/twidroid/service/ConnectionAvailableReceiver;->b()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->b(Landroid/content/Context;)Z
:try_end_66
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_8c
:goto_66
const/4 v0, 0x0
:try_start_67
invoke-static {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver;->b(Z)Z
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b
goto :goto_4a
:catch_6b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "ConnectionAvailableReceiver"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::run >> Update Receiver failed "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_4a
:catch_8c
move-exception v0
:try_start_8d
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_90
.catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_6b
goto :goto_66
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/content/Context;
invoke-virtual {p0, p1}, Lcom/twidroid/service/b;->a([Landroid/content/Context;)Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 2
const/4 v0, 0x1
invoke-static {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver;->a(Z)Z
return-void
.end method
.method protected a(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-static {v0}, Lcom/twidroid/service/ConnectionAvailableReceiver;->a(Z)Z
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/content/Context;
invoke-virtual {p0, p1}, Lcom/twidroid/service/b;->a(Landroid/content/Context;)V
return-void
.end method