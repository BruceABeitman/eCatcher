.class public Lcom/facebook/katana/EventsAdapter$byTime;
.super Ljava/lang/Object;
.source "EventsAdapter.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/facebook/katana/EventsAdapter;
.method public constructor <init>(Lcom/facebook/katana/EventsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/EventsAdapter$byTime;->this$0:Lcom/facebook/katana/EventsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/facebook/katana/EventsAdapter$Item;Lcom/facebook/katana/EventsAdapter$Item;)I
.registers 7
invoke-virtual {p1}, Lcom/facebook/katana/EventsAdapter$Item;->getStartingTime()J
move-result-wide v0
invoke-virtual {p2}, Lcom/facebook/katana/EventsAdapter$Item;->getStartingTime()J
move-result-wide v2
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/facebook/katana/EventsAdapter$Item;
check-cast p2, Lcom/facebook/katana/EventsAdapter$Item;
invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/EventsAdapter$byTime;->compare(Lcom/facebook/katana/EventsAdapter$Item;Lcom/facebook/katana/EventsAdapter$Item;)I
move-result v0
return v0
.end method