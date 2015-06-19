.class public Lcom/facebook/katana/EventGuestsAdapter$Item;
.super Ljava/lang/Object;
.source "EventGuestsAdapter.java"
.field private final mStatus:Ljava/lang/String;
.field private final mUser:Lcom/facebook/katana/service/api/FacebookUser;
.field private final mWeight:I
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookUser;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/EventGuestsAdapter$Item;->mStatus:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/katana/EventGuestsAdapter$Item;->mUser:Lcom/facebook/katana/service/api/FacebookUser;
iput p3, p0, Lcom/facebook/katana/EventGuestsAdapter$Item;->mWeight:I
return-void
.end method
.method public getStatus()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter$Item;->mStatus:Ljava/lang/String;
return-object v0
.end method
.method public getUser()Lcom/facebook/katana/service/api/FacebookUser;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter$Item;->mUser:Lcom/facebook/katana/service/api/FacebookUser;
return-object v0
.end method
.method public getWeight()I
.registers 2
iget v0, p0, Lcom/facebook/katana/EventGuestsAdapter$Item;->mWeight:I
return v0
.end method