.class final Lcom/rim/bbm/BbmPlatformService$1;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"
.implements Ljava/lang/Runnable;
.field final synthetic val$error:I
.field final synthetic val$pin:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;I)V
.registers 3
iput-object p1, p0, Lcom/rim/bbm/BbmPlatformService$1;->val$pin:Ljava/lang/String;
iput p2, p0, Lcom/rim/bbm/BbmPlatformService$1;->val$error:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Lcom/rim/bbm/BbmPlatformService$PinState;
invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$PinState;-><init>()V
iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$1;->val$pin:Ljava/lang/String;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->pin:Ljava/lang/String;
iget v1, p0, Lcom/rim/bbm/BbmPlatformService$1;->val$error:I
const/4 v2, -0x1
if-ne v1, v2, :cond_1a
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
:goto_12
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$000()Lcom/rim/bbm/BbmPlatformService$IDSDelegate;
move-result-object v1
invoke-interface {v1, v0}, Lcom/rim/bbm/BbmPlatformService$IDSDelegate;->pinUpdated(Lcom/rim/bbm/BbmPlatformService$PinState;)V
return-void
:cond_1a
sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_FAILURE:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$PinState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;
goto :goto_12
.end method