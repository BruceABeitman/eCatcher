.class  Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"
.field final intent:Landroid/content/Intent;
.field final receivers:Ljava/util/ArrayList;
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;
iput-object p2, p0, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;
return-void
.end method