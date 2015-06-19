.class  Lcom/baidu/location/a;
.super Ljava/lang/Object;
.field private static if:Ljava/lang/String;
.field private a:Z
.field private do:Ljava/util/ArrayList;
.field private for:Z
.field private int:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "baidu_location_service"
sput-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/os/Handler;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
iput-object v1, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;
iput-boolean v0, p0, Lcom/baidu/location/a;->for:Z
iput-boolean v0, p0, Lcom/baidu/location/a;->a:Z
iput-object p1, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
return-void
.end method
.method private a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
if-nez v0, :cond_7
move-object v0, v1
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
iget-object v3, v0, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d
goto :goto_6
:cond_22
move-object v0, v1
goto :goto_6
.end method
.method private a()V
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
iget-object v0, v0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
const-string/jumbo v3, "kuikedefancaiburudashahaochi"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36
const/4 v0, 0x1
:goto_22
move v1, v0
goto :goto_8
:cond_24
iget-boolean v0, p0, Lcom/baidu/location/a;->a:Z
if-eq v0, v1, :cond_35
iput-boolean v1, p0, Lcom/baidu/location/a;->a:Z
iget-object v0, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;
const/16 v1, 0x51
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_35
return-void
:cond_36
move v0, v1
goto :goto_22
.end method
.method private a(Lcom/baidu/location/a$a;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p1, Lcom/baidu/location/a$a;->for:Landroid/os/Messenger;
invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
move-result-object v0
if-eqz v0, :cond_11
const/16 v0, 0xe
invoke-static {p1, v0}, Lcom/baidu/location/a$a;->a(Lcom/baidu/location/a$a;I)V
goto :goto_2
:cond_11
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p1, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " registered "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0xd
invoke-static {p1, v0}, Lcom/baidu/location/a$a;->a(Lcom/baidu/location/a$a;I)V
goto :goto_2
.end method
.method private do()V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/a;->int()V
invoke-direct {p0}, Lcom/baidu/location/a;->a()V
invoke-virtual {p0}, Lcom/baidu/location/a;->new()V
return-void
.end method
.method private int()V
.registers 7
const/4 v3, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
move v2, v0
:goto_a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
iget-object v5, v0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->case:Z
if-eqz v5, :cond_1d
move v2, v3
:cond_1d
iget-object v0, v0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z
if-eqz v0, :cond_3a
move v0, v3
:goto_24
move v1, v0
goto :goto_a
:cond_26
sput-boolean v1, Lcom/baidu/location/j;->H:Z
iget-boolean v0, p0, Lcom/baidu/location/a;->for:Z
if-eq v0, v2, :cond_39
iput-boolean v2, p0, Lcom/baidu/location/a;->for:Z
iget-object v0, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;
const/16 v1, 0x34
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_39
return-void
:cond_3a
move v0, v1
goto :goto_24
.end method
.method static synthetic try()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;
return-object v0
.end method
.method public a(Landroid/os/Message;)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
const/4 v5, 0x1
if-eqz p1, :cond_8
iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
if-nez v1, :cond_11
:cond_8
sget-object v1, Lcom/baidu/location/a;->if:Ljava/lang/String;
const-string/jumbo v2, "invalid Poirequest"
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_10
:cond_10
return-object v0
:cond_11
iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {p0, v1}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
move-result-object v1
if-eqz v1, :cond_10
iget-object v0, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string/jumbo v3, "num"
iget-object v4, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v4, v4, Lcom/baidu/location/LocationClientOption;->a:I
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
iput v2, v0, Lcom/baidu/location/LocationClientOption;->a:I
iget-object v0, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string/jumbo v3, "distance"
iget-object v4, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v4, v4, Lcom/baidu/location/LocationClientOption;->do:F
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F
move-result v2
iput v2, v0, Lcom/baidu/location/LocationClientOption;->do:F
iget-object v0, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string/jumbo v3, "extraInfo"
iget-object v4, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->if:Z
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->if:Z
iget-object v0, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iput-boolean v5, v0, Lcom/baidu/location/LocationClientOption;->else:Z
const-string/jumbo v0, "&poi=%.1f|%d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v4, v4, Lcom/baidu/location/LocationClientOption;->do:F
invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v4
aput-object v4, v2, v3
iget-object v3, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v3, v3, Lcom/baidu/location/LocationClientOption;->a:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->if:Z
if-eqz v1, :cond_10
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|1"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method public a(Ljava/lang/String;)V
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a$a;->if(Ljava/lang/String;)V
iget v3, v0, Lcom/baidu/location/a$a;->if:I
const/4 v4, 0x4
if-le v3, v4, :cond_b
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
if-eqz v1, :cond_49
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_49
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
sget-object v2, Lcom/baidu/location/a;->if:Ljava/lang/String;
const-string/jumbo v3, "remove dead object..."
invoke-static {v2, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_2f
:cond_49
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
invoke-virtual {v0, p1, p2}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;I)V
iget v3, v0, Lcom/baidu/location/a$a;->if:I
const/4 v4, 0x4
if-le v3, v4, :cond_b
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
if-eqz v1, :cond_49
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_49
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
sget-object v2, Lcom/baidu/location/a;->if:Ljava/lang/String;
const-string/jumbo v3, "remove dead object..."
invoke-static {v2, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_2f
:cond_49
return-void
.end method
.method public a(Ljava/lang/String;Landroid/os/Message;)V
.registers 6
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0, p1}, Lcom/baidu/location/a$a;->if(Ljava/lang/String;)V
iget v1, v0, Lcom/baidu/location/a$a;->if:I
const/4 v2, 0x4
if-le v1, v2, :cond_4
iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_4
:cond_1b
sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;
const-string/jumbo v1, "not found the client messener..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method public byte()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuffer;
const/16 v0, 0x100
invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
iget-object v2, v0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
if-eqz v2, :cond_1d
iget-object v2, v0, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1d
iget-object v2, v0, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
if-eqz v2, :cond_32
const-string/jumbo v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, v0, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v0, "|"
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_32
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_56
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_56
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "&prod="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_55
return-object v0
:cond_56
const/4 v0, 0x0
goto :goto_55
.end method
.method public do(Landroid/os/Message;)I
.registers 5
const/4 v0, 0x1
if-eqz p1, :cond_7
iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {p0, v1}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
move-result-object v1
if-eqz v1, :cond_7
iget-object v2, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
if-eqz v2, :cond_7
iget-object v0, v1, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v0, v0, Lcom/baidu/location/LocationClientOption;->goto:I
goto :goto_7
.end method
.method public for()Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/a;->for:Z
return v0
.end method
.method public for(Landroid/os/Message;)Z
.registers 11
const/16 v8, 0x3e8
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {p0, v2}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
move-result-object v2
if-nez v2, :cond_d
:goto_c
return v1
:cond_d
iget-object v3, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v3, v3, Lcom/baidu/location/LocationClientOption;->int:I
iget-object v4, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
const-string/jumbo v6, "scanSpan"
iget-object v7, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v7, v7, Lcom/baidu/location/LocationClientOption;->int:I
invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v5
iput v5, v4, Lcom/baidu/location/LocationClientOption;->int:I
iget-object v4, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v4, v4, Lcom/baidu/location/LocationClientOption;->int:I
if-ge v4, v8, :cond_c2
sput-boolean v1, Lcom/baidu/location/j;->R:Z
:goto_2c
iget-object v4, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v4, v4, Lcom/baidu/location/LocationClientOption;->int:I
const/16 v5, 0x3e7
if-le v4, v5, :cond_d0
if-ge v3, v8, :cond_d0
:goto_36
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "openGPS"
iget-object v5, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->case:Z
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
iput-boolean v3, v1, Lcom/baidu/location/LocationClientOption;->case:Z
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v3, "coorType"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v3, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
if-eqz v1, :cond_c6
const-string/jumbo v4, ""
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_c6
:goto_61
iput-object v1, v3, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v3, "addrType"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v3, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
if-eqz v1, :cond_cb
const-string/jumbo v4, ""
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_cb
:goto_7b
iput-object v1, v3, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
sput-object v1, Lcom/baidu/location/j;->A:Ljava/lang/String;
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "timeOut"
iget-object v5, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v5, v5, Lcom/baidu/location/LocationClientOption;->long:I
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v3
iput v3, v1, Lcom/baidu/location/LocationClientOption;->long:I
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "location_change_notify"
iget-object v5, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->void:Z
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
iput-boolean v3, v1, Lcom/baidu/location/LocationClientOption;->void:Z
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "priority"
iget-object v2, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget v2, v2, Lcom/baidu/location/LocationClientOption;->goto:I
invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
iput v2, v1, Lcom/baidu/location/LocationClientOption;->goto:I
invoke-direct {p0}, Lcom/baidu/location/a;->do()V
move v1, v0
goto/16 :goto_c
:cond_c2
sput-boolean v0, Lcom/baidu/location/j;->R:Z
goto/16 :goto_2c
:cond_c6
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
goto :goto_61
:cond_cb
iget-object v1, v2, Lcom/baidu/location/a$a;->do:Lcom/baidu/location/LocationClientOption;
iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
goto :goto_7b
:cond_d0
move v0, v1
goto/16 :goto_36
.end method
.method public if()V
.registers 3
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()V
goto :goto_6
:cond_16
return-void
.end method
.method public if(Landroid/os/Message;)V
.registers 6
iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
move-result-object v0
if-eqz v0, :cond_28
sget-object v1, Lcom/baidu/location/a;->if:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, v0, Lcom/baidu/location/a$a;->int:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " unregistered"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_28
invoke-direct {p0}, Lcom/baidu/location/a;->do()V
return-void
.end method
.method public if(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
invoke-virtual {v0, p1}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;)V
goto :goto_6
:cond_16
return-void
.end method
.method public int(Landroid/os/Message;)V
.registers 4
if-eqz p1, :cond_6
iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
if-nez v0, :cond_f
:cond_6
sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;
const-string/jumbo v1, "invalid regist client"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_e
return-void
:cond_f
new-instance v0, Lcom/baidu/location/a$a;
invoke-direct {v0, p0, p1}, Lcom/baidu/location/a$a;-><init>(Lcom/baidu/location/a;Landroid/os/Message;)V
invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Lcom/baidu/location/a$a;)V
invoke-direct {p0}, Lcom/baidu/location/a;->do()V
goto :goto_e
.end method
.method public new()V
.registers 3
iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/a$a;
invoke-virtual {v0}, Lcom/baidu/location/a$a;->if()V
goto :goto_6
:cond_16
return-void
.end method