.class  Lcom/glympse/android/lib/gp;
.super Ljava/lang/Object;
.source "PersonBase.java"
.implements Lcom/glympse/android/lib/gq;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/go$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/gp;-><init>()V
return-void
.end method
.method private static t(I)I
.registers 2
packed-switch p0, :pswitch_data_e
:pswitch_3
const/4 v0, 0x4
:goto_4
return v0
:pswitch_5
const/4 v0, 0x0
goto :goto_4
:pswitch_7
const/4 v0, 0x1
goto :goto_4
:pswitch_9
const/4 v0, 0x2
goto :goto_4
:pswitch_b
const/4 v0, 0x3
goto :goto_4
nop
:pswitch_data_e
.packed-switch 0x1
:pswitch_5
:pswitch_7
:pswitch_3
:pswitch_b
:pswitch_3
:pswitch_3
:pswitch_3
:pswitch_9
.end packed-switch
.end method
.method public a(Lcom/glympse/android/lib/GContact;Lcom/glympse/android/lib/GContact;)I
.registers 6
invoke-interface {p1}, Lcom/glympse/android/lib/GContact;->getType()I
move-result v0
invoke-static {v0}, Lcom/glympse/android/lib/gp;->t(I)I
move-result v0
mul-int/lit8 v0, v0, 0x64
invoke-interface {p1}, Lcom/glympse/android/lib/GContact;->getSortRank()I
move-result v1
add-int/2addr v0, v1
invoke-interface {p2}, Lcom/glympse/android/lib/GContact;->getType()I
move-result v1
invoke-static {v1}, Lcom/glympse/android/lib/gp;->t(I)I
move-result v1
mul-int/lit8 v1, v1, 0x64
invoke-interface {p2}, Lcom/glympse/android/lib/GContact;->getSortRank()I
move-result v2
add-int/2addr v1, v2
sub-int/2addr v0, v1
if-nez v0, :cond_2d
invoke-interface {p1}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
:cond_2d
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/glympse/android/lib/GContact;
check-cast p2, Lcom/glympse/android/lib/GContact;
invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/gp;->a(Lcom/glympse/android/lib/GContact;Lcom/glympse/android/lib/GContact;)I
move-result v0
return v0
.end method