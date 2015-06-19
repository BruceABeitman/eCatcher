.class public Lcom/ubermedia/net/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private b:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/ubermedia/net/e;->a:I
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/ubermedia/net/e;->a:I
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/net/e;->b:Ljava/lang/String;
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/net/e;->b:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget v0, p0, Lcom/ubermedia/net/e;->a:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method