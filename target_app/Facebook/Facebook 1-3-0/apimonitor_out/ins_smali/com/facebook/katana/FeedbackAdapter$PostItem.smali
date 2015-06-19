.class public Lcom/facebook/katana/FeedbackAdapter$PostItem;
.super Lcom/facebook/katana/FeedbackAdapter$Item;
.source "FeedbackAdapter.java"
.field protected final mPost:Lcom/facebook/katana/service/api/FacebookPost;
.method protected constructor <init>(Lcom/facebook/katana/service/api/FacebookPost;I)V
.registers 3
invoke-direct {p0, p2}, Lcom/facebook/katana/FeedbackAdapter$Item;-><init>(I)V
iput-object p1, p0, Lcom/facebook/katana/FeedbackAdapter$PostItem;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
return-void
.end method
.method public getPost()Lcom/facebook/katana/service/api/FacebookPost;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$PostItem;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
return-object v0
.end method