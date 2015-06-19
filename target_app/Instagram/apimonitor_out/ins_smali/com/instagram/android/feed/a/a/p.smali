.class final Lcom/instagram/android/feed/a/a/p;
.super Landroid/os/Handler;
.source "FeedVideoPlayer.java"
.field final synthetic a:Lcom/instagram/android/feed/a/a/j;
.method private constructor <init>(Lcom/instagram/android/feed/a/a/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/j;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/p;-><init>(Lcom/instagram/android/feed/a/a/j;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0, p1}, Lcom/instagram/android/feed/a/a/p;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/p;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_da
:goto_5
return-void
:pswitch_6
const/4 v1, 0x0
:try_start_7
invoke-static {}, Lcom/instagram/common/e/c/a;->a()Lcom/instagram/common/e/c/a;
move-result-object v2
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/instagram/common/e/c/a;->b(Ljava/lang/String;)Lcom/instagram/common/e/c/e;
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_44
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_26
move-result-object v0
if-eqz v0, :cond_22
:try_start_15
iget-object v1, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/common/e/c/e;->a()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/android/m/a/c;->a(Ljava/io/FileDescriptor;)V
:try_end_22
.catchall {:try_start_15 .. :try_end_22} :catchall_d4
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_d7
:cond_22
invoke-static {v0}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V
goto :goto_5
:catch_26
move-exception v0
move-object v0, v1
:goto_28
:try_start_28
invoke-static {}, Lcom/instagram/android/feed/a/a/j;->j()Ljava/lang/Class;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to set video for uri "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
:try_end_40
.catchall {:try_start_28 .. :try_end_40} :catchall_d4
invoke-static {v0}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V
goto :goto_5
:catchall_44
move-exception p1
move-object v0, v1
:goto_46
invoke-static {v0}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V
throw p1
:try_start_4a
:pswitch_4a
new-instance v1, Ljava/io/FileInputStream;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/android/m/a/c;->a(Ljava/io/FileDescriptor;)V
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_63
.catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_63} :catch_64
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_63} :catch_7e
goto :goto_5
:catch_64
move-exception v0
invoke-static {}, Lcom/instagram/android/feed/a/a/j;->j()Ljava/lang/Class;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to play local video "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
:catch_7e
move-exception v0
invoke-static {}, Lcom/instagram/android/feed/a/a/j;->j()Ljava/lang/Class;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to play local video "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_5
:pswitch_99
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/p;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->e()V
goto/16 :goto_5
:pswitch_a8
iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;Z)Z
goto/16 :goto_5
:pswitch_b0
iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->d(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->k(Lcom/instagram/android/feed/a/a/j;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->d(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
sget v1, Lcom/instagram/android/widget/o;->d:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V
goto/16 :goto_5
:catchall_d4
move-exception p1
goto/16 :goto_46
:catch_d7
move-exception v1
goto/16 :goto_28
:pswitch_data_da
.packed-switch 0x1
:pswitch_6
:pswitch_99
:pswitch_a8
:pswitch_b0
:pswitch_4a
.end packed-switch
.end method