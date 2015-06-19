.class public Lcom/facebook/katana/EventGuestsAdapter$byStatusAndName;
.super Ljava/lang/Object;
.source "EventGuestsAdapter.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/facebook/katana/EventGuestsAdapter;
.method public constructor <init>(Lcom/facebook/katana/EventGuestsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/EventGuestsAdapter$byStatusAndName;->this$0:Lcom/facebook/katana/EventGuestsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/facebook/katana/EventGuestsAdapter$Item;Lcom/facebook/katana/EventGuestsAdapter$Item;)I
.registers 6
invoke-virtual {p1}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getWeight()I
move-result v1
invoke-virtual {p2}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getWeight()I
move-result v2
sub-int v0, v1, v2
if-eqz v0, :cond_e
move v1, v0
:goto_d
return v1
:cond_e
invoke-virtual {p1}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v1
goto :goto_d
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/facebook/katana/EventGuestsAdapter$Item;
check-cast p2, Lcom/facebook/katana/EventGuestsAdapter$Item;
invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/EventGuestsAdapter$byStatusAndName;->compare(Lcom/facebook/katana/EventGuestsAdapter$Item;Lcom/facebook/katana/EventGuestsAdapter$Item;)I
move-result v0
return v0
.end method