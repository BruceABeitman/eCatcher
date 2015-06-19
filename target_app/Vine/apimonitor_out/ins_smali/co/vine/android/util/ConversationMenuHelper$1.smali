.class  Lco/vine/android/util/ConversationMenuHelper$1;
.super Ljava/lang/Object;
.source "ConversationMenuHelper.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/util/ConversationMenuHelper;
.method constructor <init>(Lco/vine/android/util/ConversationMenuHelper;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$1;->this$0:Lco/vine/android/util/ConversationMenuHelper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/util/ConversationMenuHelper$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$1;->this$0:Lco/vine/android/util/ConversationMenuHelper;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/util/ConversationMenuHelper;->toggleContactSearch(Z)V
const-string v1, " - Lco/vine/android/util/ConversationMenuHelper$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method