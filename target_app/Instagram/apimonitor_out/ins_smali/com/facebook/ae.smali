.class final Lcom/facebook/ae;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"
.field private final a:I
.field private final b:I
.method private constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/ae;->a:I
iput p2, p0, Lcom/facebook/ae;->b:I
return-void
.end method
.method synthetic constructor <init>(IIB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/facebook/ae;-><init>(II)V
return-void
.end method
.method final a(I)Z
.registers 3
iget v0, p0, Lcom/facebook/ae;->a:I
if-gt v0, p1, :cond_a
iget v0, p0, Lcom/facebook/ae;->b:I
if-gt p1, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method