.class  Lcom/glympse/android/lib/gv;
.super Ljava/lang/Object;
.source "PhoneFavorite.java"
.implements Lcom/glympse/android/lib/GPhoneFavorite;
.field private _name:Ljava/lang/String;
.field private _type:I
.field private ew:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/gv;->_name:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/gv;->ew:Ljava/lang/String;
iput p3, p0, Lcom/glympse/android/lib/gv;->_type:I
return-void
.end method
.method public getAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gv;->ew:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gv;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/gv;->_type:I
return v0
.end method
.method public toTicket()Lcom/glympse/android/api/GTicket;
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
invoke-static {v0, v1, v1}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
iget v1, p0, Lcom/glympse/android/lib/gv;->_type:I
iget-object v2, p0, Lcom/glympse/android/lib/gv;->_name:Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/lib/gv;->ew:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/api/GTicket;->addInvite(Lcom/glympse/android/api/GInvite;)Z
return-object v0
.end method