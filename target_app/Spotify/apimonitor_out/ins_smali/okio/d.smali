.class final Lokio/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:[B
.field  b:I
.field  c:I
.field  d:Lokio/d;
.field  e:Lokio/d;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x800
new-array v0, v0, [B
iput-object v0, p0, Lokio/d;->a:[B
return-void
.end method
.method public final a()Lokio/d;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lokio/d;->d:Lokio/d;
if-eq v0, p0, :cond_18
iget-object v0, p0, Lokio/d;->d:Lokio/d;
:goto_7
iget-object v2, p0, Lokio/d;->e:Lokio/d;
iget-object v3, p0, Lokio/d;->d:Lokio/d;
iput-object v3, v2, Lokio/d;->d:Lokio/d;
iget-object v2, p0, Lokio/d;->d:Lokio/d;
iget-object v3, p0, Lokio/d;->e:Lokio/d;
iput-object v3, v2, Lokio/d;->e:Lokio/d;
iput-object v1, p0, Lokio/d;->d:Lokio/d;
iput-object v1, p0, Lokio/d;->e:Lokio/d;
return-object v0
:cond_18
move-object v0, v1
goto :goto_7
.end method