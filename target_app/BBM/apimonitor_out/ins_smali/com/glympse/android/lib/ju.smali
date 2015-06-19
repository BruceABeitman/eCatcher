.class  Lcom/glympse/android/lib/ju;
.super Ljava/lang/Object;
.source "UserManager.java"
.implements Lcom/glympse/android/lib/js;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/jr$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/ju;-><init>()V
return-void
.end method
.method public a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GUser;)I
.registers 11
const/16 v7, 0x10
const/4 v2, 0x0
const/4 v3, -0x1
const/4 v1, 0x1
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v0
if-eqz v0, :cond_d
move v1, v3
:cond_c
:goto_c
return v1
:cond_d
invoke-interface {p2}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v0
if-nez v0, :cond_c
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v5
invoke-interface {p2}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v6
if-nez v5, :cond_21
if-nez v6, :cond_c
move v1, v2
goto :goto_c
:cond_21
if-nez v6, :cond_25
move v1, v3
goto :goto_c
:cond_25
invoke-interface {v5}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v0
if-ne v0, v7, :cond_39
move v0, v1
:goto_2c
invoke-interface {v6}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v4
if-ne v4, v7, :cond_3b
move v4, v1
:goto_33
if-eq v0, v4, :cond_3d
if-eqz v0, :cond_c
move v1, v3
goto :goto_c
:cond_39
move v0, v2
goto :goto_2c
:cond_3b
move v4, v2
goto :goto_33
:cond_3d
invoke-interface {v5}, Lcom/glympse/android/api/GTicket;->getStartTime()J
move-result-wide v4
invoke-interface {v6}, Lcom/glympse/android/api/GTicket;->getStartTime()J
move-result-wide v6
cmp-long v0, v4, v6
if-lez v0, :cond_4b
move v1, v3
goto :goto_c
:cond_4b
cmp-long v0, v4, v6
if-ltz v0, :cond_c
move v1, v2
goto :goto_c
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/glympse/android/api/GUser;
check-cast p2, Lcom/glympse/android/api/GUser;
invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/ju;->a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GUser;)I
move-result v0
return v0
.end method