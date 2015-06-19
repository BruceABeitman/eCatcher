.class public Lcom/pinguo/camera360/lib/devmode/model/DevPasswordModel;
.super Ljava/lang/Object;
.source "DevPasswordModel.java"


# instance fields
.field private final mSb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/devmode/model/DevPasswordModel;->mSb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public checkPsw()Z
    .registers 3

    const-string/jumbo v0, "1112"

    iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/model/DevPasswordModel;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public click()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/model/DevPasswordModel;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public longClick()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/model/DevPasswordModel;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
