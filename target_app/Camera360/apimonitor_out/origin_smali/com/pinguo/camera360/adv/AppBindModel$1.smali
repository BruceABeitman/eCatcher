.class Lcom/pinguo/camera360/adv/AppBindModel$1;
.super Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
.source "AppBindModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/adv/AppBindModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/adv/AppBindModel;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/adv/AppBindModel;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/adv/AppBindModel$1;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
