.class Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;
.super Ljava/lang/Object;
.source "SonyWifiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private store:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->store:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V

    return-void
.end method


# virtual methods
.method getAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
