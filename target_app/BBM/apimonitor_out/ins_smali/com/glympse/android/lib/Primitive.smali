.class public Lcom/glympse/android/lib/Primitive;
.super Ljava/lang/Object;
.source "Primitive.java"
.implements Lcom/glympse/android/core/GPrimitive;
.field private _bool:Z
.field private _type:I
.field private rm:Lcom/glympse/android/hal/GVector;
.field private rn:Ljava/util/Hashtable;
.field private ro:J
.field private rp:D
.field private rq:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x40
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
const-wide/high16 v0, 0x7ff8
iput-wide v0, p0, Lcom/glympse/android/lib/Primitive;->rp:D
return-void
.end method
.method public constructor <init>(D)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-wide p1, p0, Lcom/glympse/android/lib/Primitive;->rp:D
double-to-long v0, p1
iput-wide v0, p0, Lcom/glympse/android/lib/Primitive;->ro:J
return-void
.end method
.method public constructor <init>(I)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
const/4 v0, 0x1
if-ne v0, p1, :cond_1b
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
:goto_e
iput-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x2
if-ne v0, p1, :cond_18
new-instance v1, Ljava/util/Hashtable;
invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
:cond_18
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
return-void
:cond_1b
move-object v0, v1
goto :goto_e
.end method
.method public constructor <init>(J)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x8
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-wide p1, p0, Lcom/glympse/android/lib/Primitive;->ro:J
long-to-double v0, p1
iput-wide v0, p0, Lcom/glympse/android/lib/Primitive;->rp:D
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x20
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-object p1, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x10
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-boolean p1, p0, Lcom/glympse/android/lib/Primitive;->_bool:Z
return-void
.end method
.method public clone()Lcom/glympse/android/core/GPrimitive;
.registers 6
new-instance v2, Lcom/glympse/android/lib/Primitive;
iget v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
invoke-direct {v2, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-wide v0, p0, Lcom/glympse/android/lib/Primitive;->ro:J
iput-wide v0, v2, Lcom/glympse/android/lib/Primitive;->ro:J
iget-boolean v0, p0, Lcom/glympse/android/lib/Primitive;->_bool:Z
iput-boolean v0, v2, Lcom/glympse/android/lib/Primitive;->_bool:Z
iget-wide v0, p0, Lcom/glympse/android/lib/Primitive;->rp:D
iput-wide v0, v2, Lcom/glympse/android/lib/Primitive;->rp:D
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iput-object v0, v2, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iget v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
packed-switch v0, :pswitch_data_60
:cond_1c
return-object v2
:pswitch_1d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_25
if-ge v1, v3, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
iget-object v4, v2, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->clone()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_25
:pswitch_3c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v3
:goto_42
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GPrimitive;
iget-object v4, v2, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->clone()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_42
:pswitch_data_60
.packed-switch 0x1
:pswitch_1d
:pswitch_3c
.end packed-switch
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/Primitive;->clone()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public get(I)Lcom/glympse/android/core/GPrimitive;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
goto :goto_d
.end method
.method public get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
goto :goto_5
.end method
.method public getArray()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getBool()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/Primitive;->_bool:Z
return v0
.end method
.method public getBool(I)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v0
goto :goto_d
.end method
.method public getBool(Ljava/lang/String;)Z
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_7
move v0, v1
:goto_6
return v0
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_13
move v0, v1
goto :goto_6
:cond_13
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v0
goto :goto_6
.end method
.method public getDouble()D
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/Primitive;->rp:D
return-wide v0
.end method
.method public getDouble(I)D
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_f
:cond_c
const-wide/16 v0, 0x0
:goto_e
return-wide v0
:cond_f
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getDouble()D
move-result-wide v0
goto :goto_e
.end method
.method public getDouble(Ljava/lang/String;)D
.registers 5
const-wide/16 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_8
move-wide v0, v1
:goto_7
return-wide v0
:cond_8
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_14
move-wide v0, v1
goto :goto_7
:cond_14
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getDouble()D
move-result-wide v0
goto :goto_7
.end method
.method public getKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v0
goto :goto_5
.end method
.method public getLong()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/Primitive;->ro:J
return-wide v0
.end method
.method public getLong(I)J
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_f
:cond_c
const-wide/16 v0, 0x0
:goto_e
return-wide v0
:cond_f
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getLong()J
move-result-wide v0
goto :goto_e
.end method
.method public getLong(Ljava/lang/String;)J
.registers 5
const-wide/16 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_8
move-wide v0, v1
:goto_7
return-wide v0
:cond_8
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_14
move-wide v0, v1
goto :goto_7
:cond_14
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getLong()J
move-result-wide v0
goto :goto_7
.end method
.method public getString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
return-object v0
.end method
.method public getString(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method public getString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_7
move-object v0, v1
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_13
move-object v0, v1
goto :goto_6
:cond_13
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public hasKey(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public insert(ILcom/glympse/android/core/GPrimitive;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-ge v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p2, p1}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public isArray()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_6
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isBool()Z
.registers 3
const/16 v0, 0x10
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isDouble()Z
.registers 3
const/4 v0, 0x4
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
check-cast p1, Lcom/glympse/android/lib/Primitive;
if-nez p1, :cond_8
move v0, v2
:goto_7
return v0
:cond_8
iget v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iget v1, p1, Lcom/glympse/android/lib/Primitive;->_type:I
if-eq v0, v1, :cond_10
move v0, v2
goto :goto_7
:cond_10
iget v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
sparse-switch v0, :sswitch_data_b8
:cond_15
move v0, v3
goto :goto_7
:sswitch_17
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v5
iget-object v0, p1, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-eq v5, v0, :cond_27
move v0, v2
goto :goto_7
:cond_27
move v4, v2
:goto_28
if-ge v4, v5, :cond_15
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v4}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
iget-object v1, p1, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, v4}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v0
if-nez v0, :cond_42
move v0, v2
goto :goto_7
:cond_42
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_28
:sswitch_46
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v0
iget-object v1, p1, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->size()I
move-result v1
if-eq v0, v1, :cond_56
move v0, v2
goto :goto_7
:cond_56
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v4
:cond_5c
invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_15
invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GPrimitive;
iget-object v5, p1, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_80
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v0
if-nez v0, :cond_5c
:cond_80
move v0, v2
goto :goto_7
:sswitch_82
iget-wide v0, p0, Lcom/glympse/android/lib/Primitive;->rp:D
iget-wide v4, p1, Lcom/glympse/android/lib/Primitive;->rp:D
cmpl-double v0, v0, v4
if-nez v0, :cond_8d
move v0, v3
goto/16 :goto_7
:cond_8d
move v0, v2
goto/16 :goto_7
:sswitch_90
iget-wide v0, p0, Lcom/glympse/android/lib/Primitive;->ro:J
iget-wide v4, p1, Lcom/glympse/android/lib/Primitive;->ro:J
cmp-long v0, v0, v4
if-nez v0, :cond_9b
move v0, v3
goto/16 :goto_7
:cond_9b
move v0, v2
goto/16 :goto_7
:sswitch_9e
iget-boolean v0, p0, Lcom/glympse/android/lib/Primitive;->_bool:Z
iget-boolean v1, p1, Lcom/glympse/android/lib/Primitive;->_bool:Z
if-ne v0, v1, :cond_a7
move v0, v3
goto/16 :goto_7
:cond_a7
move v0, v2
goto/16 :goto_7
:sswitch_aa
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iget-object v1, p1, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
goto/16 :goto_7
:sswitch_b4
move v0, v3
goto/16 :goto_7
nop
:sswitch_data_b8
.sparse-switch
0x1 -> :sswitch_17
0x2 -> :sswitch_46
0x4 -> :sswitch_82
0x8 -> :sswitch_90
0x10 -> :sswitch_9e
0x20 -> :sswitch_aa
0x40 -> :sswitch_b4
.end sparse-switch
.end method
.method public isLong()Z
.registers 3
const/16 v0, 0x8
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isNull()Z
.registers 3
const/16 v0, 0x40
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isObject()Z
.registers 3
const/4 v0, 0x2
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public isString()Z
.registers 3
const/16 v0, 0x20
iget v1, p0, Lcom/glympse/android/lib/Primitive;->_type:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public put(D)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p1, p2}, Lcom/glympse/android/lib/Primitive;-><init>(D)V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public put(ID)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2, p3}, Lcom/glympse/android/lib/Primitive;-><init>(D)V
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public put(IJ)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2, p3}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public put(ILcom/glympse/android/core/GPrimitive;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p2, p1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public put(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2}, Lcom/glympse/android/lib/Primitive;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public put(IZ)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public put(J)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p1, p2}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public put(Lcom/glympse/android/core/GPrimitive;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public put(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p1}, Lcom/glympse/android/lib/Primitive;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public put(Ljava/lang/String;D)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2, p3}, Lcom/glympse/android/lib/Primitive;-><init>(D)V
invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public put(Ljava/lang/String;J)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2, p3}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public put(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2}, Lcom/glympse/android/lib/Primitive;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public put(Ljava/lang/String;Z)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p2}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V
invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public put(Z)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, p1}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public putNull(I)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-gt v0, p1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1}, Lcom/glympse/android/lib/Primitive;-><init>()V
invoke-virtual {v0, v1, p1}, Lcom/glympse/android/hal/GVector;->setElementAt(Ljava/lang/Object;I)V
goto :goto_c
.end method
.method public putNull(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1}, Lcom/glympse/android/lib/Primitive;-><init>()V
invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public remove(I)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
goto :goto_4
.end method
.method public remove(Lcom/glympse/android/core/GPrimitive;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
goto :goto_4
.end method
.method public remove(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method public set(D)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x4
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-wide p1, p0, Lcom/glympse/android/lib/Primitive;->rp:D
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
return-void
.end method
.method public set(J)V
.registers 5
const/4 v1, 0x0
const/16 v0, 0x8
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-wide p1, p0, Lcom/glympse/android/lib/Primitive;->ro:J
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
return-void
.end method
.method public set(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
const/16 v0, 0x20
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-object p1, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
return-void
.end method
.method public set(Z)V
.registers 4
const/4 v1, 0x0
const/16 v0, 0x10
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-boolean p1, p0, Lcom/glympse/android/lib/Primitive;->_bool:Z
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
return-void
.end method
.method public setNull()V
.registers 3
const/4 v1, 0x0
const/16 v0, 0x40
iput v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rq:Ljava/lang/String;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
iput-object v1, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
return-void
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rm:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
:goto_a
return v0
:cond_b
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/Primitive;->rn:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v0
goto :goto_a
:cond_16
const/4 v0, 0x0
goto :goto_a
.end method
.method public type()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/Primitive;->_type:I
return v0
.end method