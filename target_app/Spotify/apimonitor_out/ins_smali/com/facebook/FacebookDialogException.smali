.class public Lcom/facebook/FacebookDialogException;
.super Lcom/facebook/FacebookException;
.source "SourceFile"
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