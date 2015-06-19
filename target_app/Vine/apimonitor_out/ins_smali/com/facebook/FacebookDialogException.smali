.class public Lcom/facebook/FacebookDialogException;
.super Lcom/facebook/FacebookException;
.source "FacebookDialogException.java"
.field static final serialVersionUID:J = 0x1L
.field private errorCode:I
.field private failingUrl:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
iput p2, p0, Lcom/facebook/FacebookDialogException;->errorCode:I
iput-object p3, p0, Lcom/facebook/FacebookDialogException;->failingUrl:Ljava/lang/String;
return-void
.end method
.method public getErrorCode()I
.registers 2
iget v0, p0, Lcom/facebook/FacebookDialogException;->errorCode:I
return v0
.end method
.method public getFailingUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/FacebookDialogException;->failingUrl:Ljava/lang/String;
return-object v0
.end method