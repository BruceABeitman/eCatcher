.class public Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;
.super Ljava/lang/Object;
.source "DevModeFragmentManager.java"
.field private static SINGLE_INSTANCE:Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;->SINGLE_INSTANCE:Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;
.registers 1
sget-object v0, Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;->SINGLE_INSTANCE:Lcom/pinguo/camera360/lib/devmode/activity/DevModeFragmentManager;
return-object v0
.end method