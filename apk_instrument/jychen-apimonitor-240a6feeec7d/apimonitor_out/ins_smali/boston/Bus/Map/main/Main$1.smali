.class  Lboston/Bus/Map/main/Main$1;
.super Ljava/lang/Object;
.source "Main.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Lboston/Bus/Map/main/Main;
.method constructor <init>(Lboston/Bus/Map/main/Main;)V
.registers 2
iput-object p1, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lboston/Bus/Map/main/Main$1; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->firstRunMode:Z
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$000(Lboston/Bus/Map/main/Main;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
const/4 v1, 0x0
#setter for: Lboston/Bus/Map/main/Main;->firstRunMode:Z
invoke-static {v0, v1}, Lboston/Bus/Map/main/Main;->access$002(Lboston/Bus/Map/main/Main;Z)Z
:cond_e
:goto_e
const-string v1, " - Lboston/Bus/Map/main/Main$1; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_f
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$100(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/data/Locations;
move-result-object v0
if-eqz v0, :cond_e
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;
move-result-object v0
if-eqz v0, :cond_e
if-ltz p3, :cond_26
sget-object v0, Lboston/Bus/Map/main/Main;->modesSupported:[I
array-length v0, v0
if-lt p3, v0, :cond_43
:cond_26
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->setSelectedBusPredictions(I)V
:goto_30
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;
move-result-object v0
invoke-virtual {v0}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate()V
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;
move-result-object v0
invoke-virtual {v0}, Lboston/Bus/Map/main/UpdateHandler;->immediateRefresh()V
goto :goto_e
:cond_43
iget-object v0, p0, Lboston/Bus/Map/main/Main$1;->this$0:Lboston/Bus/Map/main/Main;
#getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;
move-result-object v0
sget-object v1, Lboston/Bus/Map/main/Main;->modesSupported:[I
aget v1, v1, p3
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->setSelectedBusPredictions(I)V
goto :goto_30
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lboston/Bus/Map/main/Main$1; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lboston/Bus/Map/main/Main$1; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method