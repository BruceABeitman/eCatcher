.class public final Lcom/instagram/creation/b/c/a/c;
.super Lcom/instagram/api/k/a/c;
.source "CreateMediaRequest.java"
.field private final b:Lcom/instagram/creation/b/a/b;
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
iput-object p1, p0, Lcom/instagram/creation/b/c/a/c;->b:Lcom/instagram/creation/b/a/b;
return-void
.end method
.method public final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "media_type"
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
invoke-virtual {v1}, Lcom/instagram/model/a/a;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "upload_id"
iget-object v1, p0, Lcom/instagram/creation/b/c/a/c;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "upload/video/"
return-object v0
.end method