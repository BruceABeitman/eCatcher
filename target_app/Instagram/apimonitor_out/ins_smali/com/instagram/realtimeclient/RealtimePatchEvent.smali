.class public Lcom/instagram/realtimeclient/RealtimePatchEvent;
.super Lcom/instagram/realtimeclient/RealtimeEvent;
.source "RealtimePatchEvent.java"
.field public id:Ljava/lang/String;
.field public operations:Ljava/util/Collection;
.field public sequence:Ljava/lang/String;
.field public topic:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeEvent;-><init>()V
return-void
.end method
.method public static compareSequences(Ljava/lang/String;Ljava/lang/String;)I
.registers 4
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x0
:cond_5
:goto_5
return v0
:cond_6
const/4 v0, -0x1
goto :goto_5
:cond_8
if-nez p1, :cond_c
const/4 v0, 0x1
goto :goto_5
:cond_c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
sub-int/2addr v0, v1
if-nez v0, :cond_5
invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto :goto_5
.end method