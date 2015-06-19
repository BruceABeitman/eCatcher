.class final Lcom/bbm/ui/activities/iv;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/activities/iu;
.method constructor <init>(Lcom/bbm/ui/activities/iu;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/iv;->a:Lcom/bbm/ui/activities/iu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/bbm/d/fl;
check-cast p2, Lcom/bbm/d/fl;
iget-object v0, p2, Lcom/bbm/d/fl;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/bbm/d/fl;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method