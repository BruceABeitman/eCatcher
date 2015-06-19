.class public final Lcom/instagram/common/a/f/a;
.super Ljava/lang/Object;
.source "ByteArrayParam.java"
.implements Lcom/instagram/common/a/f/h;
.field private final a:Ljava/lang/String;
.field private final b:[B
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/a/f/a;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/common/a/f/a;->b:[B
iput-object p3, p0, Lcom/instagram/common/a/f/a;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/f/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()J
.registers 3
iget-object v0, p0, Lcom/instagram/common/a/f/a;->b:[B
array-length v0, v0
int-to-long v0, v0
return-wide v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/f/a;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/instagram/common/a/f/a;->b:[B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method