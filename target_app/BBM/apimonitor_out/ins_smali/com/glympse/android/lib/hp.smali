.class  Lcom/glympse/android/lib/hp;
.super Lcom/glympse/android/lib/k;
.source "ServiceMotd.java"
.field public static final sj:I = 0x1
.field public static final sk:I = 0x2
.field public static final sl:I = 0x3
.field public jF:Ljava/lang/String;
.field public sc:Ljava/lang/String;
.field public se:Lcom/glympse/android/lib/gg;
.field public sf:Z
.field public sg:J
.field public sh:J
.field public si:J
.field public sm:I
.field private sn:Lcom/glympse/android/lib/json/b;
.field public so:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;)V
.registers 6
const/4 v3, 0x0
const-wide/16 v1, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/hp;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v0, Lcom/glympse/android/lib/gg;
invoke-direct {v0}, Lcom/glympse/android/lib/gg;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
iput-boolean v3, p0, Lcom/glympse/android/lib/hp;->sf:Z
iput-wide v1, p0, Lcom/glympse/android/lib/hp;->sg:J
iput-wide v1, p0, Lcom/glympse/android/lib/hp;->sh:J
iput-wide v1, p0, Lcom/glympse/android/lib/hp;->si:J
iput v3, p0, Lcom/glympse/android/lib/hp;->sm:I
return-void
.end method
.method public endObject(I)Z
.registers 9
const/4 v2, 0x2
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/hp;->sm:I
if-ne v2, p1, :cond_2b
iget-object v1, p0, Lcom/glympse/android/lib/hp;->sn:Lcom/glympse/android/lib/json/b;
if-eqz v1, :cond_2b
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v1, p0, Lcom/glympse/android/lib/hp;->so:Lcom/glympse/android/core/GPrimitive;
iget-object v1, p0, Lcom/glympse/android/lib/hp;->sn:Lcom/glympse/android/lib/json/b;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/b;->de()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
:goto_1b
if-ge v0, v2, :cond_2b
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(I)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/glympse/android/lib/hp;->so:Lcom/glympse/android/core/GPrimitive;
const-wide/16 v5, 0x0
invoke-interface {v4, v3, v5, v6}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_2b
const/4 v0, 0x1
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
packed-switch p1, :pswitch_data_120
:goto_5
:cond_5
return v2
:pswitch_6
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hp;->hf:Ljava/lang/String;
goto :goto_5
:pswitch_17
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "context"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hp;->sc:Ljava/lang/String;
goto :goto_5
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/hp;->_time:J
goto :goto_5
:cond_39
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hp;->hg:Ljava/lang/String;
goto :goto_5
:cond_4a
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hp;->hh:Ljava/lang/String;
goto :goto_5
:pswitch_5b
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "title"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/gg;->setTitle(Ljava/lang/String;)V
iput-boolean v2, p0, Lcom/glympse/android/lib/hp;->sf:Z
goto :goto_5
:cond_71
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "body"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_88
iget-object v0, p0, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/gg;->z(Ljava/lang/String;)V
iput-boolean v2, p0, Lcom/glympse/android/lib/hp;->sf:Z
goto/16 :goto_5
:cond_88
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "close_text"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9d
iget-object v0, p0, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/gg;->A(Ljava/lang/String;)V
goto/16 :goto_5
:cond_9d
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "action_text"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b2
iget-object v0, p0, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/gg;->B(Ljava/lang/String;)V
goto/16 :goto_5
:cond_b2
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "action_url"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/gg;->C(Ljava/lang/String;)V
goto/16 :goto_5
:pswitch_c7
iget v0, p0, Lcom/glympse/android/lib/hp;->sm:I
if-ne v2, v0, :cond_109
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "f_level"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e1
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/ho;->D(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/hp;->sg:J
goto/16 :goto_5
:cond_e1
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "d_level"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f7
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/ho;->D(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/hp;->sh:J
goto/16 :goto_5
:cond_f7
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "url"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hp;->jF:Ljava/lang/String;
goto/16 :goto_5
:cond_109
const/4 v0, 0x2
iget v1, p0, Lcom/glympse/android/lib/hp;->sm:I
if-ne v0, v1, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "get_rate"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/hp;->si:J
goto/16 :goto_5
:pswitch_data_120
.packed-switch 0x1
:pswitch_6
:pswitch_17
:pswitch_5b
:pswitch_c7
.end packed-switch
.end method
.method public startObject(I)Z
.registers 5
const/4 v2, 0x1
const/4 v0, 0x4
if-ne v0, p1, :cond_10
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "logging"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iput v2, p0, Lcom/glympse/android/lib/hp;->sm:I
:goto_10
:cond_10
return v2
:cond_11
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "params"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
const/4 v0, 0x2
iput v0, p0, Lcom/glympse/android/lib/hp;->sm:I
goto :goto_10
:cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "lhg"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x3
iput v0, p0, Lcom/glympse/android/lib/hp;->sm:I
goto :goto_10
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 5
iput-object p2, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const/4 v0, 0x3
if-ne v0, p1, :cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/hp;->he:Ljava/lang/String;
const-string v1, "urls"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
new-instance v0, Lcom/glympse/android/lib/json/b;
iget-object v1, p0, Lcom/glympse/android/lib/hp;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/json/b;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
iput-object v0, p0, Lcom/glympse/android/lib/hp;->sn:Lcom/glympse/android/lib/json/b;
iget-object v0, p0, Lcom/glympse/android/lib/hp;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iget-object v1, p0, Lcom/glympse/android/lib/hp;->sn:Lcom/glympse/android/lib/json/b;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
:cond_1f
const/4 v0, 0x1
return v0
.end method