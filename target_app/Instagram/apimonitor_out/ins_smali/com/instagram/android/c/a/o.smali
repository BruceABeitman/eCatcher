.class public final Lcom/instagram/android/c/a/o;
.super Lcom/instagram/android/c/a/b;
.source "ReviewGeoMediaRequest.java"
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/c/a/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
return-void
.end method
.method protected final b_()Ljava/lang/String;
.registers 6
const-string v1, "maps/review_media/%s"
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/android/c/a/o;->a:Ljava/lang/String;
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_32
new-instance v0, Ljava/lang/StringBuilder;
const-string v4, "?user_id="
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/instagram/android/c/a/o;->a:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2b
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_32
const-string v0, ""
goto :goto_2b
.end method