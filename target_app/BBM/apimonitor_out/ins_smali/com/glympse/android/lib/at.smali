.class  Lcom/glympse/android/lib/at;
.super Ljava/lang/Object;
.source "DataRow.java"
.implements Lcom/glympse/android/api/GDataRow;
.field private _name:Ljava/lang/String;
.field private _time:J
.field private jA:J
.field private jB:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/glympse/android/lib/at;->_time:J
iput-wide p3, p0, Lcom/glympse/android/lib/at;->jA:J
iput-object p5, p0, Lcom/glympse/android/lib/at;->_name:Ljava/lang/String;
iput-object p6, p0, Lcom/glympse/android/lib/at;->jB:Lcom/glympse/android/core/GPrimitive;
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/at;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getPartnerId()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/at;->jA:J
return-wide v0
.end method
.method public getTime()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/at;->_time:J
return-wide v0
.end method
.method public getValue()Lcom/glympse/android/core/GPrimitive;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/at;->jB:Lcom/glympse/android/core/GPrimitive;
return-object v0
.end method