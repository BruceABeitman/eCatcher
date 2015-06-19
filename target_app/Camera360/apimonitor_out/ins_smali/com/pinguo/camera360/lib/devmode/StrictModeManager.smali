.class public Lcom/pinguo/camera360/lib/devmode/StrictModeManager;
.super Ljava/lang/Object;
.source "StrictModeManager.java"
.field private static STRICTMODE_MODE_ON:Z
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/lib/devmode/StrictModeManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/devmode/StrictModeManager;->TAG:Ljava/lang/String;
const/4 v0, 0x1
sput-boolean v0, Lcom/pinguo/camera360/lib/devmode/StrictModeManager;->STRICTMODE_MODE_ON:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static enableStrictMode()V
.registers 0
return-void
.end method