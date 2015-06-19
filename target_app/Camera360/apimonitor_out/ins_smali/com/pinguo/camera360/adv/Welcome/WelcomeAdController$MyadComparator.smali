.class  Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController$MyadComparator;
.super Ljava/lang/Object;
.source "WelcomeAdController.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;
.method constructor <init>(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController$MyadComparator;->this$0:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;)I
.registers 7
iget-wide v0, p1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->opTimeStamp:J
iget-wide v2, p1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->opTimeStamp:J
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;
check-cast p2, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController$MyadComparator;->compare(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;)I
move-result v0
return v0
.end method