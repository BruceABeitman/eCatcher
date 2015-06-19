.class public Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source "LocaleSyntaxException.java"
.field private static final serialVersionUID:J = 0x1L
.field private _index:I
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I
iput p2, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I
return-void
.end method
.method public getErrorIndex()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I
return v0
.end method