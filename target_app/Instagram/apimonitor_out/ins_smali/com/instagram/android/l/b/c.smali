.class public final Lcom/instagram/android/l/b/c;
.super Lcom/instagram/user/follow/a;
.source "FollowAllRequest.java"
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
return-void
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "friendships/create_many/"
return-object v0
.end method