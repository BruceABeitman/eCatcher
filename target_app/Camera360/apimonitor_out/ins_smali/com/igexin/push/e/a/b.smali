.class public abstract Lcom/igexin/push/e/a/b;
.super Lcom/igexin/a/a/d/a;
.field  e:Ljava/lang/String;
.field  f:[B
.field  g:Ljava/io/InputStream;
.field  h:J
.field public i:Z
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V
iput-object p1, p0, Lcom/igexin/push/e/a/b;->e:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/Exception;)V
.registers 2
return-void
.end method
.method public a([B)V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/igexin/push/e/a/b;->i:Z
if-nez p1, :cond_6
:cond_5
:goto_5
return-void
:cond_6
array-length v0, p1
const/4 v1, 0x7
if-lt v0, v1, :cond_5
const/4 v0, 0x5
aget-byte v0, p1, v0
const/16 v1, 0x6f
if-ne v0, v1, :cond_5
const/4 v0, 0x6
aget-byte v0, p1, v0
const/16 v1, 0x6b
if-ne v0, v1, :cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/e/a/b;->i:Z
goto :goto_5
.end method
.method public b([B)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/e/a/b;->f:[B
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/e/a/b;->e:Ljava/lang/String;
return-object v0
.end method
.method public d()[B
.registers 2
iget-object v0, p0, Lcom/igexin/push/e/a/b;->f:[B
return-object v0
.end method
.method public e()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/igexin/push/e/a/b;->g:Ljava/io/InputStream;
return-object v0
.end method
.method public f()J
.registers 3
iget-wide v0, p0, Lcom/igexin/push/e/a/b;->h:J
return-wide v0
.end method