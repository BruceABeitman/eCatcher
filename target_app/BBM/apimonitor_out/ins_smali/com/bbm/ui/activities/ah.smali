.class final Lcom/bbm/ui/activities/ah;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"
.implements Lcom/bbm/ui/br;
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ah;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/ah;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/activities/ah;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-static {v0, p1}, Lcom/bbm/ui/EmoticonPicker;->a(Landroid/widget/EditText;Ljava/lang/String;)V
:cond_11
iget-object v0, p0, Lcom/bbm/ui/activities/ah;->a:Lcom/bbm/ui/activities/BroadcastActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Lcom/bbm/ui/activities/BroadcastActivity;Z)V
return-void
.end method