.class  Lcom/twidroid/activity/UberBarMaintenance$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/ui/widgets/e;
.field final synthetic a:Lcom/twidroid/activity/UberBarMaintenance;
.method constructor <init>(Lcom/twidroid/activity/UberBarMaintenance;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberBarMaintenance$3;->a:Lcom/twidroid/activity/UberBarMaintenance;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(II)V
.registers 6
const-string v0, "UberBarConfiguration"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "drag from "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method