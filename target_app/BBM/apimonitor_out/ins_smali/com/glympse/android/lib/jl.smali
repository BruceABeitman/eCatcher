.class  Lcom/glympse/android/lib/jl;
.super Ljava/lang/Object;
.source "User.java"
.implements Lcom/glympse/android/lib/jk;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/jj$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/jl;-><init>()V
return-void
.end method
.method public a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GTicket;)I
.registers 11
const/16 v5, 0x10
const/4 v3, -0x1
const/4 v2, 0x0
const/4 v1, 0x1
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v0
if-ne v0, v5, :cond_19
move v0, v1
:goto_c
invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v4
if-ne v4, v5, :cond_1b
move v4, v1
:goto_13
if-eq v0, v4, :cond_1d
if-eqz v0, :cond_18
move v1, v3
:cond_18
:goto_18
return v1
:cond_19
move v0, v2
goto :goto_c
:cond_1b
move v4, v2
goto :goto_13
:cond_1d
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getStartTime()J
move-result-wide v4
invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getStartTime()J
move-result-wide v6
cmp-long v0, v4, v6
if-lez v0, :cond_2b
move v1, v3
goto :goto_18
:cond_2b
cmp-long v0, v4, v6
if-ltz v0, :cond_18
move v1, v2
goto :goto_18
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/glympse/android/api/GTicket;
check-cast p2, Lcom/glympse/android/api/GTicket;
invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/jl;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GTicket;)I
move-result v0
return v0
.end method