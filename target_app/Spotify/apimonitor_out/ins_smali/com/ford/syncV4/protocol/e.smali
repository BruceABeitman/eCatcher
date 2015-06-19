.class public final Lcom/ford/syncV4/protocol/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:B
.field private b:Lcom/ford/syncV4/protocol/enums/d;
.field private c:Lcom/ford/syncV4/protocol/enums/MessageType;
.field private d:B
.field private e:B
.field private f:I
.field private g:I
.field private h:I
.field private i:[B
.field private j:[B
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-byte v0, p0, Lcom/ford/syncV4/protocol/e;->a:B
sget-object v0, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;
iput-object v0, p0, Lcom/ford/syncV4/protocol/e;->b:Lcom/ford/syncV4/protocol/enums/d;
sget-object v0, Lcom/ford/syncV4/protocol/enums/MessageType;->a:Lcom/ford/syncV4/protocol/enums/MessageType;
iput-object v0, p0, Lcom/ford/syncV4/protocol/e;->c:Lcom/ford/syncV4/protocol/enums/MessageType;
const/4 v0, 0x0
iput-byte v0, p0, Lcom/ford/syncV4/protocol/e;->d:B
iput-object v1, p0, Lcom/ford/syncV4/protocol/e;->i:[B
iput-object v1, p0, Lcom/ford/syncV4/protocol/e;->j:[B
return-void
.end method
.method public final a()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/protocol/e;->a:B
return v0
.end method
.method public final a(B)V
.registers 2
iput-byte p1, p0, Lcom/ford/syncV4/protocol/e;->a:B
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/ford/syncV4/protocol/e;->f:I
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/MessageType;)V
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/protocol/e;->c:Lcom/ford/syncV4/protocol/enums/MessageType;
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;)V
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/protocol/e;->b:Lcom/ford/syncV4/protocol/enums/d;
return-void
.end method
.method public final a([B)V
.registers 3
iput-object p1, p0, Lcom/ford/syncV4/protocol/e;->i:[B
array-length v0, p1
iput v0, p0, Lcom/ford/syncV4/protocol/e;->h:I
return-void
.end method
.method public final b()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/protocol/e;->d:B
return v0
.end method
.method public final b(B)V
.registers 2
iput-byte p1, p0, Lcom/ford/syncV4/protocol/e;->d:B
return-void
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/ford/syncV4/protocol/e;->g:I
return-void
.end method
.method public final b([B)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/ford/syncV4/protocol/e;->j:[B
if-eqz v0, :cond_8
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/protocol/e;->j:[B
:cond_8
array-length v0, p1
new-array v0, v0, [B
iput-object v0, p0, Lcom/ford/syncV4/protocol/e;->j:[B
iget-object v0, p0, Lcom/ford/syncV4/protocol/e;->j:[B
array-length v1, p1
invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public final c(B)V
.registers 2
iput-byte p1, p0, Lcom/ford/syncV4/protocol/e;->e:B
return-void
.end method
.method public final c()[B
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/protocol/e;->i:[B
return-object v0
.end method
.method public final d()[B
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/protocol/e;->j:[B
return-object v0
.end method
.method public final e()Lcom/ford/syncV4/protocol/enums/d;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/protocol/e;->b:Lcom/ford/syncV4/protocol/enums/d;
return-object v0
.end method
.method public final f()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/protocol/e;->e:B
return v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/ford/syncV4/protocol/e;->f:I
return v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/ford/syncV4/protocol/e;->g:I
return v0
.end method
.method public final i()I
.registers 2
iget v0, p0, Lcom/ford/syncV4/protocol/e;->h:I
return v0
.end method