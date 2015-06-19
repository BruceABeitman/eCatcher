.class public Lcom/twidroid/net/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "com.ubermedia.wax.action"
.field public static final b:Ljava/lang/String; = "com.ubermedia.wax.action.chime_posted"
.field public static final c:Ljava/lang/String; = "com.ubermedia.wax.action.chime_hidden"
.field public static final d:Ljava/lang/String; = "broadcast.show.streaming.hint"
.field public static final e:Ljava/lang/String; = "EXTRA_PARAM_CHIME"
.field private static final f:Ljava/lang/String; = "BroadcastHelper"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
.registers 4
invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v0, "BroadcastHelper"
const-string v1, "Broadcast receiver unregistered"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
.registers 7
new-instance v1, Landroid/content/IntentFilter;
invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V
array-length v2, p2
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_11
aget-object v3, p2, v0
invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_11
invoke-virtual {p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const-string v0, "BroadcastHelper"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Broadcast receiver registered for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.ubermedia.wax.action.chime_posted"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_c
return-void
.end method