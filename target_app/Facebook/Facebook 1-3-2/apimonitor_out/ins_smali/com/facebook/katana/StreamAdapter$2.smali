.class  Lcom/facebook/katana/StreamAdapter$2;
.super Ljava/lang/Object;
.source "StreamAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/StreamAdapter;
.field private final synthetic val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;
.method constructor <init>(Lcom/facebook/katana/StreamAdapter;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/StreamAdapter$2;->this$0:Lcom/facebook/katana/StreamAdapter;
iput-object p2, p0, Lcom/facebook/katana/StreamAdapter$2;->val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/StreamAdapter$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter$2;->val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;
invoke-interface {v1, v0}, Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;->onOpenMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
const-string v1, " - Lcom/facebook/katana/StreamAdapter$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method