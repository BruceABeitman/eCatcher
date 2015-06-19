.class public final Lcom/instagram/creation/b/c/a/f;
.super Lcom/instagram/common/a/a/a;
.source "UploadVideoChunkRequest.java"
.field private b:Lcom/instagram/creation/b/a/i;
.field private c:Ljava/io/File;
.field private d:I
.field private e:I
.field private f:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/creation/b/a/i;Ljava/io/File;II)V
.registers 6
invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V
iput-object p1, p0, Lcom/instagram/creation/b/c/a/f;->f:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/creation/b/c/a/f;->b:Lcom/instagram/creation/b/a/i;
iput-object p3, p0, Lcom/instagram/creation/b/c/a/f;->c:Ljava/io/File;
iput p4, p0, Lcom/instagram/creation/b/c/a/f;->d:I
iput p5, p0, Lcom/instagram/creation/b/c/a/f;->e:I
return-void
.end method
.method public final a()Lcom/instagram/common/a/c/b;
.registers 5
new-instance v0, Lcom/instagram/creation/b/c/a/h;
iget-object v1, p0, Lcom/instagram/creation/b/c/a/f;->c:Ljava/io/File;
iget v2, p0, Lcom/instagram/creation/b/c/a/f;->d:I
iget v3, p0, Lcom/instagram/creation/b/c/a/f;->e:I
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/b/c/a/h;-><init>(Ljava/io/File;II)V
const-string v1, "video"
iget-object v2, p0, Lcom/instagram/creation/b/c/a/f;->c:Ljava/io/File;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;)V
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final c_()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/c/a/f;->b:Lcom/instagram/creation/b/a/i;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/i;->c()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final m()Ljava/util/List;
.registers 9
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x4
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v2, "Content-Disposition"
const-string v3, "attachment; filename=\\\"video.mov\\\""
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v2, "Content-Range"
const-string v3, "bytes %s-%s/%s"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget v6, p0, Lcom/instagram/creation/b/c/a/f;->d:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
iget v6, p0, Lcom/instagram/creation/b/c/a/f;->d:I
iget v7, p0, Lcom/instagram/creation/b/c/a/f;->e:I
add-int/2addr v6, v7
add-int/lit8 v6, v6, -0x1
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
iget-object v6, p0, Lcom/instagram/creation/b/c/a/f;->c:Ljava/io/File;
invoke-virtual {v6}, Ljava/io/File;->length()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v2, "Session-ID"
iget-object v3, p0, Lcom/instagram/creation/b/c/a/f;->f:Ljava/lang/String;
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v2, "job"
iget-object v3, p0, Lcom/instagram/creation/b/c/a/f;->b:Lcom/instagram/creation/b/a/i;
invoke-virtual {v3}, Lcom/instagram/creation/b/a/i;->b()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method