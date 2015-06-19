.class public Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;
.super Landroid/os/Binder;
.source "PhotoProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoProcessBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/pinguo/camera360/save/processer/PhotoProcessService;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;

    return-object v0
.end method
