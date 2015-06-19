.class public final Lcom/instagram/android/c/a/t;
.super Lcom/instagram/api/j/b;
.source "ShareLaterMediaRequest.java"
.field private a:Lcom/instagram/sharelater/ShareLaterMedia;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Lcom/instagram/sharelater/ShareLaterMedia;)V
.registers 6
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p4, p0, Lcom/instagram/android/c/a/t;->a:Lcom/instagram/sharelater/ShareLaterMedia;
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/c/a/t;->a:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v0, p1}, Lcom/instagram/sharelater/ShareLaterMedia;->a(Lcom/instagram/common/a/c/b;)V
return-void
.end method
.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "media/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/android/c/a/t;->a:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v1}, Lcom/instagram/sharelater/ShareLaterMedia;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/share/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method