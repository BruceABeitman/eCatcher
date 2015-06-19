.class public final Lcom/facebook/b/i;
.super Ljava/lang/RuntimeException;
.source "FacebookError.java"
.field private a:I
.field private b:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/b/i;->a:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/b/i;->a:I
iput-object p2, p0, Lcom/facebook/b/i;->b:Ljava/lang/String;
iput p3, p0, Lcom/facebook/b/i;->a:I
return-void
.end method