.class public final Lcom/instagram/common/a/f/d;
.super Ljava/lang/Object;
.source "FileParam.java"
.implements Lcom/instagram/common/a/f/h;
.field private final a:Ljava/lang/String;
.field private final b:Ljava/io/File;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/a/f/d;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/common/a/f/d;->b:Ljava/io/File;
iput-object p3, p0, Lcom/instagram/common/a/f/d;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/f/d;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()J
.registers 3
iget-object v0, p0, Lcom/instagram/common/a/f/d;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v0
return-wide v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/f/d;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/FileInputStream;
iget-object v1, p0, Lcom/instagram/common/a/f/d;->b:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
return-object v0
.end method