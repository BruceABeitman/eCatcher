.class  Lcom/facebook/katana/binding/AppSession$2;
.super Ljava/lang/Object;
.source "AppSession.java"
.implements Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;
.field final synthetic this$0:Lcom/facebook/katana/binding/AppSession;
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$2;->this$0:Lcom/facebook/katana/binding/AppSession;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPhotoDecoded(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$2;->this$0:Lcom/facebook/katana/binding/AppSession;
#getter for: Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;
invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->access$4(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_11
return-void
:cond_11
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;
iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$2;->this$0:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0, v2, p1, p2}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
goto :goto_a
.end method
.method public onPhotoRequested(Landroid/content/Context;Ljava/lang/String;I)V
.registers 12
const-wide/16 v3, -0x1
const/4 v5, 0x0
packed-switch p3, :pswitch_data_28
:goto_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$2;->this$0:Lcom/facebook/katana/binding/AppSession;
const/16 v2, 0x49
move-object v1, p1
move-object v6, v5
move-object v7, p2
#calls: Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invoke-static/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->access$5(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
goto :goto_6
:pswitch_12
iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$2;->this$0:Lcom/facebook/katana/binding/AppSession;
const/16 v2, 0x48
move-object v1, p1
move-object v6, v5
move-object v7, p2
#calls: Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invoke-static/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->access$5(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
goto :goto_6
:pswitch_1d
iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$2;->this$0:Lcom/facebook/katana/binding/AppSession;
const/16 v2, 0x4d
move-object v1, p1
move-object v6, v5
move-object v7, p2
#calls: Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invoke-static/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->access$5(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
goto :goto_6
:pswitch_data_28
.packed-switch 0x1
:pswitch_7
:pswitch_12
:pswitch_1d
.end packed-switch
.end method