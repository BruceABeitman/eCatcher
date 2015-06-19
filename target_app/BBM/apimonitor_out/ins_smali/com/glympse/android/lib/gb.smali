.class  Lcom/glympse/android/lib/gb;
.super Ljava/lang/Object;
.source "MethodArgument.java"
.implements Lcom/glympse/android/lib/GMethodArgument;
.field private _name:Ljava/lang/String;
.field private _type:I
.field private _value:Ljava/lang/String;
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/glympse/android/lib/gb;->_type:I
iput-object p2, p0, Lcom/glympse/android/lib/gb;->_name:Ljava/lang/String;
iput-object p3, p0, Lcom/glympse/android/lib/gb;->_value:Ljava/lang/String;
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gb;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/gb;->_type:I
return v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gb;->_value:Ljava/lang/String;
return-object v0
.end method