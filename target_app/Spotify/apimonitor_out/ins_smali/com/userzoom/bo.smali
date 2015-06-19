.class public final Lcom/userzoom/bo;
.super Ljava/lang/Object;
.field private a:Landroid/content/Context;
.field private synthetic b:Luserzoom/com/UzEventsFeatureService;
.method public constructor <init>(Luserzoom/com/UzEventsFeatureService;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/userzoom/bo;->b:Luserzoom/com/UzEventsFeatureService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/userzoom/bo;->a:Landroid/content/Context;
return-void
.end method
.method public final fillUserCode(Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Lcom/userzoom/bo;->b:Luserzoom/com/UzEventsFeatureService;
invoke-static {v0, p1}, Luserzoom/com/UzEventsFeatureService;->a(Luserzoom/com/UzEventsFeatureService;Ljava/lang/String;)Ljava/lang/String;
const-string v0, "UzEventsFeatureService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "**"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/userzoom/bo;->b:Luserzoom/com/UzEventsFeatureService;
invoke-static {v2}, Luserzoom/com/UzEventsFeatureService;->a(Luserzoom/com/UzEventsFeatureService;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "**"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;
move-result-object v0
iget-object v1, p0, Lcom/userzoom/bo;->b:Luserzoom/com/UzEventsFeatureService;
invoke-static {v1}, Luserzoom/com/UzEventsFeatureService;->a(Luserzoom/com/UzEventsFeatureService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/userzoom/n;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/bo;->b:Luserzoom/com/UzEventsFeatureService;
invoke-static {v0}, Luserzoom/com/UzEventsFeatureService;->b(Luserzoom/com/UzEventsFeatureService;)V
goto :goto_2
.end method
.method public final javascriptFileLoaded()V
.registers 2
iget-object v0, p0, Lcom/userzoom/bo;->a:Landroid/content/Context;
check-cast v0, Luserzoom/com/UzEventsFeatureService;
invoke-virtual {v0}, Luserzoom/com/UzEventsFeatureService;->a()V
return-void
.end method
.method public final log(Ljava/lang/String;)V
.registers 3
const-string v0, "UzEventsFeatureService"
invoke-static {v0, p1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method