.class public Lcom/pinguo/camera360/order/model/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"
.field public createTime:J
.field public detail:Ljava/util/List;
.field public oid:Ljava/lang/String;
.field public showStatus:Ljava/lang/String;
.field public stateChanged:Z
.field public status:Ljava/lang/String;
.field public type:Ljava/lang/String;
.field public userId:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/order/model/OrderBean;->stateChanged:Z
return-void
.end method