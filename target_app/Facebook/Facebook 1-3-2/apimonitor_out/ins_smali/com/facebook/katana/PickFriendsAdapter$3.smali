.class  Lcom/facebook/katana/PickFriendsAdapter$3;
.super Ljava/lang/Object;
.source "PickFriendsAdapter.java"
.implements Ljava/util/Comparator;
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsAdapter;
.method constructor <init>(Lcom/facebook/katana/PickFriendsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PickFriendsAdapter$3;->this$0:Lcom/facebook/katana/PickFriendsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Lcom/facebook/katana/service/api/FacebookUser;Lcom/facebook/katana/service/api/FacebookUser;)I
.registers 5
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/facebook/katana/service/api/FacebookUser;
check-cast p2, Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/PickFriendsAdapter$3;->compare(Lcom/facebook/katana/service/api/FacebookUser;Lcom/facebook/katana/service/api/FacebookUser;)I
move-result v0
return v0
.end method