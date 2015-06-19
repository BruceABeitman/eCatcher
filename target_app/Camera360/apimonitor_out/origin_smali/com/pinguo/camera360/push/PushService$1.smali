.class Lcom/pinguo/camera360/push/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/push/PushService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/push/PushService;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/push/PushService;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushService$1;->this$0:Lcom/pinguo/camera360/push/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, ".json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
