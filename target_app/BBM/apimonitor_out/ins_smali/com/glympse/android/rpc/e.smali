.class  Lcom/glympse/android/rpc/e;
.super Ljava/lang/Object;
.source "MessageUser.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/core/GPrimitive;Z)V
.registers 7
const/4 v2, 0x2
const/4 v3, 0x1
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_15
const-string v1, "id"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_15
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_28
const-string v1, "name"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_28
if-eqz p2, :cond_48
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rpc/c;->a(Lcom/glympse/android/core/GDrawable;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_48
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rpc/c;->a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "avatar"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_48
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_65
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v0, v2, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;Z)V
invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "tickets"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_65
return-void
.end method
.method public static a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;Z)V
.registers 8
const/4 v2, 0x0
invoke-interface {p0}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
move v1, v2
:goto_6
if-ge v1, v3, :cond_31
invoke-interface {p0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GUser;
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v4
if-nez v4, :cond_2d
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v4
if-eqz v4, :cond_2d
if-nez p2, :cond_22
invoke-interface {v4}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v4
if-eqz v4, :cond_2d
:cond_22
const/4 v4, 0x2
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
invoke-static {v0, v4, v2}, Lcom/glympse/android/rpc/e;->a(Lcom/glympse/android/api/GUser;Lcom/glympse/android/core/GPrimitive;Z)V
invoke-interface {p1, v4}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_2d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_31
return-void
.end method
.method public static a(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/core/GPrimitive;)V
.registers 7
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameCore(Ljava/lang/String;)V
const-string v0, "tickets"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_3f
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
const/4 v0, 0x0
:goto_2b
if-ge v0, v2, :cond_3f
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
const/4 v4, 0x1
invoke-static {v4}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;
move-result-object v4
invoke-static {v4, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
invoke-interface {p0, v4}, Lcom/glympse/android/lib/GUserPrivate;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_3f
const-string v0, "avatar"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_68
const-string v1, "data"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rpc/c;->R(Ljava/lang/String;)Lcom/glympse/android/core/GDrawable;
move-result-object v1
if-eqz v1, :cond_68
invoke-interface {p0}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setDrawable(Lcom/glympse/android/core/GDrawable;)V
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
:cond_68
return-void
.end method
.method public static b(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
.registers 6
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v1
const/4 v0, 0x0
:goto_8
if-ge v0, v1, :cond_2
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {}, Lcom/glympse/android/lib/LibFactory;->createUser()Lcom/glympse/android/lib/GUserPrivate;
move-result-object v3
invoke-static {v3, v2}, Lcom/glympse/android/rpc/e;->a(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/core/GPrimitive;)V
invoke-virtual {p0, v3}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_8
.end method