.class final Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
.method constructor <init>(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
iget-object v1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v1}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
move-result-object v0
if-eqz v0, :cond_49
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$2;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v1}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_56
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Illegal NextTargetState: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v2}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_3f
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
:goto_44
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
:cond_49
return-void
:pswitch_4a
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
goto :goto_44
:pswitch_50
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
invoke-static {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
goto :goto_44
:pswitch_data_56
.packed-switch 0x1
:pswitch_3f
:pswitch_4a
:pswitch_50
.end packed-switch
.end method