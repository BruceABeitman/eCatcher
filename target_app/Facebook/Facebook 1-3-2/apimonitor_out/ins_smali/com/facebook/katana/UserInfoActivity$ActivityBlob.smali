.class  Lcom/facebook/katana/UserInfoActivity$ActivityBlob;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"
.field final mBlobAreFriends:Z
.field final mBlobInfo:Lcom/facebook/katana/service/api/FacebookUserFull;
.field final synthetic this$0:Lcom/facebook/katana/UserInfoActivity;
.method public constructor <init>(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/service/api/FacebookUserFull;Z)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;->this$0:Lcom/facebook/katana/UserInfoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;->mBlobInfo:Lcom/facebook/katana/service/api/FacebookUserFull;
iput-boolean p3, p0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;->mBlobAreFriends:Z
return-void
.end method