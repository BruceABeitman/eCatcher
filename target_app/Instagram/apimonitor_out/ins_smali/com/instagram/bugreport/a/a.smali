.class final Lcom/instagram/bugreport/a/a;
.super Lcom/instagram/bugreport/a/b;
.source "FbFlytrapRequest.java"
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct/range {p0 .. p5}, Lcom/instagram/bugreport/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p6, p0, Lcom/instagram/bugreport/a/a;->b:Ljava/lang/String;
iput-object p7, p0, Lcom/instagram/bugreport/a/a;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Lcom/instagram/common/a/c/b;
.registers 4
invoke-super {p0}, Lcom/instagram/bugreport/a/b;->a()Lcom/instagram/common/a/c/b;
move-result-object v0
const-string v1, "access_token"
iget-object v2, p0, Lcom/instagram/bugreport/a/a;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final c_()Ljava/lang/String;
.registers 5
const-string v0, "https://graph.facebook.com/%s/bugs"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/bugreport/a/a;->c:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method