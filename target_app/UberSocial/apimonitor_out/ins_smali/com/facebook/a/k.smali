.class public Lcom/facebook/a/k;
.super Ljava/lang/RuntimeException;
.source "SourceFile"
.field private static final a:J = 0x1L
.field private b:I
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/a/k;->b:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/a/k;->b:I
iput-object p2, p0, Lcom/facebook/a/k;->c:Ljava/lang/String;
iput p3, p0, Lcom/facebook/a/k;->b:I
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/facebook/a/k;->b:I
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a/k;->c:Ljava/lang/String;
return-object v0
.end method