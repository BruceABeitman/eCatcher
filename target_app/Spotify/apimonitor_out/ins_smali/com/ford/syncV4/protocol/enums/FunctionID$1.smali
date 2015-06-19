.class final Lcom/ford/syncV4/protocol/enums/FunctionID$1;
.super Ljava/util/HashMap;
.source "SourceFile"
.method constructor <init>()V
.registers 3
const/16 v0, 0x3c
invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V
const-string v0, "RegisterAppInterface"
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "UnregisterAppInterface"
const/4 v1, 0x2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SetGlobalProperties"
const/4 v1, 0x3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "ResetGlobalProperties"
const/4 v1, 0x4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "AddCommand"
const/4 v1, 0x5
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "DeleteCommand"
const/4 v1, 0x6
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "AddSubMenu"
const/4 v1, 0x7
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "DeleteSubMenu"
const/16 v1, 0x8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "CreateInteractionChoiceSet"
const/16 v1, 0x9
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "PerformInteraction"
const/16 v1, 0xa
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "DeleteInteractionChoiceSet"
const/16 v1, 0xb
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Alert"
const/16 v1, 0xc
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Show"
const/16 v1, 0xd
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Speak"
const/16 v1, 0xe
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SetMediaClockTimer"
const/16 v1, 0xf
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "PerformAudioPassThru"
const/16 v1, 0x10
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "EndAudioPassThru"
const/16 v1, 0x11
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SubscribeButton"
const/16 v1, 0x12
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "UnsubscribeButton"
const/16 v1, 0x13
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SubscribeVehicleData"
const/16 v1, 0x14
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "UnsubscribeVehicleData"
const/16 v1, 0x15
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "GetVehicleData"
const/16 v1, 0x16
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "ReadDID"
const/16 v1, 0x17
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "GetDTCs"
const/16 v1, 0x18
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "ScrollableMessage"
const/16 v1, 0x19
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Slider"
const/16 v1, 0x1a
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "ShowConstantTBT"
const/16 v1, 0x1b
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "AlertManeuver"
const/16 v1, 0x1c
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "UpdateTurnList"
const/16 v1, 0x1d
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "ChangeRegistration"
const/16 v1, 0x1e
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "GenericResponse"
const/16 v1, 0x1f
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "PutFile"
const/16 v1, 0x20
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "DeleteFile"
const/16 v1, 0x21
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "ListFiles"
const/16 v1, 0x22
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SetAppIcon"
const/16 v1, 0x23
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SetDisplayLayout"
const/16 v1, 0x24
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnHMIStatus"
const v1, 0x8000
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnAppInterfaceUnregistered"
const v1, 0x8001
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnButtonEvent"
const v1, 0x8002
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnButtonPress"
const v1, 0x8003
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnVehicleData"
const v1, 0x8004
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnCommand"
const v1, 0x8005
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnTBTClientState"
const v1, 0x8006
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnDriverDistraction"
const v1, 0x8007
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnPermissionsChange"
const v1, 0x8008
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnAudioPassThru"
const v1, 0x8009
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnLanguageChange"
const v1, 0x800a
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "EncodedSyncPData"
const/high16 v1, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "SyncPData"
const v1, 0x10001
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnEncodedSyncPData"
const v1, 0x18000
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "OnSyncPData"
const v1, 0x18001
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/enums/FunctionID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method