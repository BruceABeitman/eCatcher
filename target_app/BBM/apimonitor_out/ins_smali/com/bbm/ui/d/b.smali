.class public final Lcom/bbm/ui/d/b;
.super Ljava/lang/Object;
.source "ChannelErrorListener.java"
.implements Lcom/bbm/ui/d/c;
.field  a:[Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "NotSubscribed"
iput-object v0, p0, Lcom/bbm/ui/d/b;->b:Ljava/lang/String;
const-string v0, "ChannelListChanging"
iput-object v0, p0, Lcom/bbm/ui/d/b;->c:Ljava/lang/String;
const-string v0, "ChannelNotFound"
iput-object v0, p0, Lcom/bbm/ui/d/b;->d:Ljava/lang/String;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "channelBlockUserError"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "channelInvitationSendError"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "channelOwnerProfileUpdateError"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/bbm/ui/d/b;->a:[Ljava/lang/String;
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 5
iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
iget-object v1, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "error"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "channelInvitationSendError"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_19
const v0, 0x7f0e01a5
:goto_15
invoke-static {v0}, Lcom/bbm/util/fb;->a(I)V
return-void
:cond_19
const-string v2, "channelBlockUserError"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_49
const-string v0, "NotSubscribed"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
const v0, 0x7f0e017d
goto :goto_15
:cond_2d
const-string v0, "ChannelListChanging"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
const v0, 0x7f0e017c
goto :goto_15
:cond_39
const-string v0, "ChannelNotFound"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
const v0, 0x7f0e0178
goto :goto_15
:cond_45
const v0, 0x7f0e017b
goto :goto_15
:cond_49
const-string v1, "channelOwnerProfileUpdateError"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
const v0, 0x7f0e01c1
goto :goto_15
:cond_55
const/4 v0, 0x0
goto :goto_15
.end method