.class final Lcom/spotify/mobile/android/spotlets/share/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/share/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/share/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/a$2;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/share/a$2; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a$2;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/share/a;->c(Lcom/spotify/mobile/android/spotlets/share/a;)Lcom/spotify/mobile/android/spotlets/share/a/a;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/a$2;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/share/a;->a(Lcom/spotify/mobile/android/spotlets/share/a;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/share/a$2;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/share/a;->b(Lcom/spotify/mobile/android/spotlets/share/a;)Landroid/widget/EditText;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
new-array v5, v5, [Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;)V
new-instance v2, Lcom/spotify/mobile/android/spotlets/share/PostFragment$3$1;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
const-class v4, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/share/PostFragment$3$1;-><init>(Lcom/spotify/mobile/android/spotlets/share/a$2;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/share/a/a;->a(Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/spotlets/share/a$2; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method