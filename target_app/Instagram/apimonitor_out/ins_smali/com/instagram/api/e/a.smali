.class public abstract Lcom/instagram/api/e/a;
.super Lcom/instagram/common/a/a/d;
.source "AbstractFacebookGraphRequest.java"
.field private final b:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/a/a/d;-><init>()V
iput-object p1, p0, Lcom/instagram/api/e/a;->b:Ljava/lang/String;
return-void
.end method
.method public a()Lcom/instagram/common/a/c/b;
.registers 4
new-instance v0, Lcom/instagram/common/a/c/b;
invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V
const-string v1, "access_token"
iget-object v2, p0, Lcom/instagram/api/e/a;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method protected abstract b()Ljava/lang/String;
.end method
.method public c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method
.method public final c_()Ljava/lang/String;
.registers 5
const-string v0, "%s%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "https://graph.facebook.com/"
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/instagram/api/e/a;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method