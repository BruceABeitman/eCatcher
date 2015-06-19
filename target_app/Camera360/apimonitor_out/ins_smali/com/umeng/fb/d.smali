.class  Lcom/umeng/fb/d;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/fb/ConversationActivity;
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/umeng/fb/d;)Lcom/umeng/fb/ConversationActivity;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/fb/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;
const-class v2, Lcom/umeng/fb/ContactActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
iget-object v1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;
invoke-virtual {v1, v0}, Lcom/umeng/fb/ConversationActivity;->startActivity(Landroid/content/Intent;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/4 v1, 0x4
if-le v0, v1, :cond_20
new-instance v0, Lcom/umeng/fb/e;
invoke-direct {v0, p0}, Lcom/umeng/fb/e;-><init>(Lcom/umeng/fb/d;)V
iget-object v1, p0, Lcom/umeng/fb/d;->a:Lcom/umeng/fb/ConversationActivity;
invoke-virtual {v0, v1}, Lcom/umeng/fb/e;->a(Landroid/app/Activity;)V
:cond_20
const-string v1, " - Lcom/umeng/fb/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method