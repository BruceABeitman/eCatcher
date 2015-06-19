.class  Lcom/twidroid/fragments/e/ar;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"
.field final a:Lcom/twidroid/fragments/e/as;
.field private final b:I
.field private final c:I
.field private d:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;II)V
.registers 5
invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/twidroid/fragments/e/as;
invoke-direct {v0}, Lcom/twidroid/fragments/e/as;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/ar;->a:Lcom/twidroid/fragments/e/as;
iput p2, p0, Lcom/twidroid/fragments/e/ar;->b:I
iput p3, p0, Lcom/twidroid/fragments/e/ar;->c:I
return-void
.end method
.method public a()Ljava/util/List;
.registers 4
:try_start_0
iget v0, p0, Lcom/twidroid/fragments/e/ar;->b:I
iget v1, p0, Lcom/twidroid/fragments/e/ar;->c:I
invoke-static {v0, v1}, Lcom/twidroid/uberchannels/a/a;->a(II)Ljava/util/List;
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v0
:goto_8
return-object v0
:catch_9
move-exception v0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ar;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_8
.end method
.method public synthetic loadInBackground()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ar;->a()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected onStartLoading()V
.registers 3
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/ar; onStartLoading "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ar;->d:Ljava/util/List;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/fragments/e/ar;->d:Ljava/util/List;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ar;->deliverResult(Ljava/lang/Object;)V
:cond_9
iget-object v0, p0, Lcom/twidroid/fragments/e/ar;->a:Lcom/twidroid/fragments/e/as;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/as;->a(Landroid/content/res/Resources;)Z
move-result v0
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ar;->takeContentChanged()Z
move-result v1
if-nez v1, :cond_23
iget-object v1, p0, Lcom/twidroid/fragments/e/ar;->d:Ljava/util/List;
if-eqz v1, :cond_23
if-eqz v0, :cond_26
:cond_23
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ar;->forceLoad()V
:cond_26
const-string v1, " - Lcom/twidroid/fragments/e/ar; onStartLoading"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStopLoading()V
.registers 3
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/ar; onStopLoading "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ar;->cancelLoad()Z
const-string v1, " - Lcom/twidroid/fragments/e/ar; onStopLoading"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method