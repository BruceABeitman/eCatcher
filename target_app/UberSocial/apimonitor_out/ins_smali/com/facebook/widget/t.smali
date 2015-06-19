.class  Lcom/facebook/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final c:I = 0x1d
.field private static final d:I = 0x25
.field  a:Ljava/net/URL;
.field  b:Ljava/lang/Object;
.method constructor <init>(Ljava/net/URL;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;
iput-object p2, p0, Lcom/facebook/widget/t;->b:Ljava/lang/Object;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_16
instance-of v1, p1, Lcom/facebook/widget/t;
if-eqz v1, :cond_16
check-cast p1, Lcom/facebook/widget/t;
iget-object v1, p1, Lcom/facebook/widget/t;->a:Ljava/net/URL;
iget-object v2, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;
if-ne v1, v2, :cond_16
iget-object v1, p1, Lcom/facebook/widget/t;->b:Ljava/lang/Object;
iget-object v2, p0, Lcom/facebook/widget/t;->b:Ljava/lang/Object;
if-ne v1, v2, :cond_16
const/4 v0, 0x1
:cond_16
return v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;
invoke-virtual {v0}, Ljava/net/URL;->hashCode()I
move-result v0
add-int/lit16 v0, v0, 0x431
mul-int/lit8 v0, v0, 0x25
iget-object v1, p0, Lcom/facebook/widget/t;->b:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method