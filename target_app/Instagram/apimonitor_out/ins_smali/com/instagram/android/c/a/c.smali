.class public final Lcom/instagram/android/c/a/c;
.super Lcom/instagram/api/j/b;
.source "FlagRemovePopularRequest.java"
.field private a:Lcom/instagram/feed/d/l;
.method public constructor <init>(Lcom/instagram/feed/d/l;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 6
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p1, p0, Lcom/instagram/android/c/a/c;->a:Lcom/instagram/feed/d/l;
return-void
.end method
.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 5
const-string v0, "media/%s/remove_from_popular/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/android/c/a/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
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