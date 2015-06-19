.class public Lco/vine/android/util/SeekInfoManager;
.super Ljava/lang/Object;
.source "SeekInfoManager.java"
.field public static final NO_LOOP_LIMIT:Lco/vine/android/util/SeekInfoManager$SeekInfo;
.field private final mAppController:Lco/vine/android/client/AppController;
.field private final mDurations:Ljava/util/HashMap;
.field private final mSeekInfoMap:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 5
new-instance v0, Lco/vine/android/util/SeekInfoManager$SeekInfo;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-wide/16 v3, 0x2
mul-long/2addr v1, v3
const/16 v3, 0x1b58
const v4, 0x7fffffff
invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/util/SeekInfoManager$SeekInfo;-><init>(JII)V
sput-object v0, Lco/vine/android/util/SeekInfoManager;->NO_LOOP_LIMIT:Lco/vine/android/util/SeekInfoManager$SeekInfo;
return-void
.end method
.method public constructor <init>(Lco/vine/android/client/AppController;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/util/SeekInfoManager;->mSeekInfoMap:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/util/SeekInfoManager;->mDurations:Ljava/util/HashMap;
iput-object p1, p0, Lco/vine/android/util/SeekInfoManager;->mAppController:Lco/vine/android/client/AppController;
return-void
.end method
.method public get(J)Lco/vine/android/util/SeekInfoManager$SeekInfo;
.registers 5
iget-object v0, p0, Lco/vine/android/util/SeekInfoManager;->mSeekInfoMap:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/SeekInfoManager$SeekInfo;
return-object v0
.end method
.method public getSeekInfo(Lco/vine/android/player/VideoViewInterface;Lco/vine/android/api/VinePrivateMessage;)Lco/vine/android/util/SeekInfoManager$SeekInfo;
.registers 10
iget-object v3, p0, Lco/vine/android/util/SeekInfoManager;->mSeekInfoMap:Ljava/util/HashMap;
iget-wide v4, p2, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/SeekInfoManager$SeekInfo;
if-nez v2, :cond_78
iget-wide v3, p2, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-eqz v3, :cond_76
iget-object v3, p0, Lco/vine/android/util/SeekInfoManager;->mDurations:Ljava/util/HashMap;
iget-wide v4, p2, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_44
if-eqz p1, :cond_67
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->getDuration()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_44
iget-object v3, p0, Lco/vine/android/util/SeekInfoManager;->mDurations:Ljava/util/HashMap;
iget-wide v4, p2, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_44
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
if-gtz v3, :cond_6f
const/16 v1, 0x1b58
:goto_4c
new-instance v2, Lco/vine/android/util/SeekInfoManager$SeekInfo;
iget-wide v3, p2, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
iget v5, p2, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-direct {v2, v3, v4, v1, v5}, Lco/vine/android/util/SeekInfoManager$SeekInfo;-><init>(JII)V
const-string v3, "Adding SeekInfo: {}."
invoke-static {v3, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v3, p0, Lco/vine/android/util/SeekInfoManager;->mSeekInfoMap:Ljava/util/HashMap;
iget-wide v4, p2, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v3, v2
:goto_66
return-object v3
:cond_67
new-instance v3, Ljava/lang/IllegalStateException;
const-string v4, "Duration cannot be determined."
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_6f
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
add-int/lit8 v1, v3, 0x64
goto :goto_4c
:cond_76
const/4 v3, 0x0
goto :goto_66
:cond_78
move-object v3, v2
goto :goto_66
.end method
.method public markAsRead(ILco/vine/android/api/VinePrivateMessage;)Lco/vine/android/util/SeekInfoManager$SeekInfo;
.registers 10
if-gtz p1, :cond_2c
const/16 v0, 0x1b58
:goto_4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p2, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
new-instance v1, Lco/vine/android/util/SeekInfoManager$SeekInfo;
iget v4, p2, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-direct {v1, v2, v3, v0, v4}, Lco/vine/android/util/SeekInfoManager$SeekInfo;-><init>(JII)V
const-string v4, "Adding SeekInfo: {}."
invoke-static {v4, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v4, p0, Lco/vine/android/util/SeekInfoManager;->mSeekInfoMap:Ljava/util/HashMap;
iget-wide v5, p2, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v4, "Mark as read."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
iget-object v4, p0, Lco/vine/android/util/SeekInfoManager;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4, p2}, Lco/vine/android/client/AppController;->markMessageLoopViewed(Lco/vine/android/api/VinePrivateMessage;)V
return-object v1
:cond_2c
add-int/lit8 v0, p1, 0x64
goto :goto_4
.end method