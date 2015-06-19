.class public final Lcom/instagram/f/a/a/q;
.super Lcom/instagram/api/j/b;
.source "LikeDirectShareRequest.java"
.field private final a:Lcom/instagram/feed/d/l;
.field private final b:I
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;I)V
.registers 7
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/l;
iput p4, p0, Lcom/instagram/f/a/a/q;->b:I
return-void
.end method
.method public final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/l;
invoke-static {v0}, Lcom/instagram/feed/d/r;->a(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 6
const-string v1, "direct_share/%s/%s/"
const/4 v0, 0x2
new-array v2, v0, [Ljava/lang/Object;
const/4 v0, 0x0
iget-object v3, p0, Lcom/instagram/f/a/a/q;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
const/4 v3, 0x1
iget v0, p0, Lcom/instagram/f/a/a/q;->b:I
sget v4, Lcom/instagram/feed/d/o;->a:I
if-ne v0, v4, :cond_1e
const-string v0, "like"
:goto_17
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1e
const-string v0, "unlike"
goto :goto_17
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final c(Lcom/instagram/api/j/j;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method