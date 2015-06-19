.class final Lcom/bbm/ui/activities/ja;
.super Lcom/bbm/ui/activities/jc;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method private constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ja;->a:Lcom/bbm/ui/activities/ConversationActivity;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/activities/jc;-><init>(Lcom/bbm/ui/activities/ConversationActivity;B)V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ja;-><init>(Lcom/bbm/ui/activities/ConversationActivity;)V
return-void
.end method
.method protected final a(Ljava/lang/StringBuilder;)Z
.registers 8
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "simple text"
invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ja;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ja;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ja;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v2, 0x7f0e0228
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x11
move v4, v3
move v5, v3
invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
const/4 v0, 0x1
return v0
.end method