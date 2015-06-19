.class Lcom/pinguo/camera360/adv/AppBindModel$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "AppBindModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/adv/AppBindModel;->getAppBindItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/adv/AppBindModel;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/adv/AppBindModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/adv/AppBindModel$3;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
