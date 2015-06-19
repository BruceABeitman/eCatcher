.class public final Lcom/google/android/gms/cast/MediaTrack;
.super Ljava/lang/Object;
.field public static final SUBTYPE_CAPTIONS:I = 0x2
.field public static final SUBTYPE_CHAPTERS:I = 0x4
.field public static final SUBTYPE_DESCRIPTIONS:I = 0x3
.field public static final SUBTYPE_METADATA:I = 0x5
.field public static final SUBTYPE_NONE:I = 0x0
.field public static final SUBTYPE_SUBTITLES:I = 0x1
.field public static final SUBTYPE_UNKNOWN:I = -0x1
.field public static final TYPE_AUDIO:I = 0x2
.field public static final TYPE_TEXT:I = 0x1
.field public static final TYPE_UNKNOWN:I = 0x0
.field public static final TYPE_VIDEO:I = 0x3
.field private AP:J
.field private AQ:I
.field private AR:I
.field private Ao:Ljava/lang/String;
.field private Aq:Ljava/lang/String;
.field private As:Ljava/lang/String;
.field private Ax:Lorg/json/JSONObject;
.field private mName:Ljava/lang/String;
.method constructor <init>(JI)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0}, Lcom/google/android/gms/cast/MediaTrack;->clear()V
iput-wide p1, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
if-lez p3, :cond_d
const/4 v0, 0x3
if-le p3, v0, :cond_26
:cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "invalid type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
iput p3, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
return-void
.end method
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaTrack;->b(Lorg/json/JSONObject;)V
return-void
.end method
.method private b(Lorg/json/JSONObject;)V
.registers 8
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lcom/google/android/gms/cast/MediaTrack;->clear()V
const-string v0, "trackId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
const-string v0, "type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "TEXT"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_60
iput v3, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
:goto_1f
const-string v0, "trackContentId"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
const-string v0, "trackContentType"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
const-string v0, "name"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
const-string v0, "language"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
const-string v0, "subtype"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d6
const-string v0, "subtype"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "SUBTITLES"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8f
iput v3, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
:goto_57
const-string v0, "customData"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
return-void
:cond_60
const-string v1, "AUDIO"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6b
iput v4, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
goto :goto_1f
:cond_6b
const-string v1, "VIDEO"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_76
iput v5, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
goto :goto_1f
:cond_76
new-instance v1, Lorg/json/JSONException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "invalid type: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
:cond_8f
const-string v1, "CAPTIONS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_9a
iput v4, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
goto :goto_57
:cond_9a
const-string v1, "DESCRIPTIONS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a5
iput v5, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
goto :goto_57
:cond_a5
const-string v1, "CHAPTERS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b1
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
goto :goto_57
:cond_b1
const-string v1, "METADATA"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_bd
const/4 v0, 0x5
iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
goto :goto_57
:cond_bd
new-instance v1, Lorg/json/JSONException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "invalid subtype: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
:cond_d6
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
goto/16 :goto_57
.end method
.method private clear()V
.registers 4
const/4 v2, 0x0
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
iput-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
return-void
.end method
.method  R(I)V
.registers 5
const/4 v0, -0x1
if-le p1, v0, :cond_6
const/4 v0, 0x5
if-le p1, v0, :cond_1f
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "invalid subtype "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
if-eqz p1, :cond_2e
iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
const/4 v1, 0x1
if-eq v0, v1, :cond_2e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "subtypes are only valid for text tracks"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
iput p1, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
return-void
.end method
.method public dU()Lorg/json/JSONObject;
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string v1, "trackId"
iget-wide v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
packed-switch v1, :pswitch_data_94
:goto_11
iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
if-eqz v1, :cond_1c
const-string v1, "trackContentId"
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1c
iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
if-eqz v1, :cond_27
const-string v1, "trackContentType"
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_27
iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
if-eqz v1, :cond_32
const-string v1, "name"
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_32
iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_41
const-string v1, "language"
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_41
iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
packed-switch v1, :pswitch_data_9e
:goto_46
iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
if-eqz v1, :cond_51
const-string v1, "customData"
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_51
:goto_51
return-object v0
:pswitch_52
const-string v1, "type"
const-string v2, "TEXT"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_11
:catch_5a
move-exception v1
goto :goto_51
:pswitch_5c
const-string v1, "type"
const-string v2, "AUDIO"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_11
:pswitch_64
const-string v1, "type"
const-string v2, "VIDEO"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_11
:pswitch_6c
const-string v1, "subtype"
const-string v2, "SUBTITLES"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_46
:pswitch_74
const-string v1, "subtype"
const-string v2, "CAPTIONS"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_46
:pswitch_7c
const-string v1, "subtype"
const-string v2, "DESCRIPTIONS"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_46
:pswitch_84
const-string v1, "subtype"
const-string v2, "CHAPTERS"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_46
:pswitch_8c
const-string v1, "subtype"
const-string v2, "METADATA"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_93
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_93} :catch_5a
goto :goto_46
:pswitch_data_94
.packed-switch 0x1
:pswitch_52
:pswitch_5c
:pswitch_64
.end packed-switch
:pswitch_data_9e
.packed-switch 0x1
:pswitch_6c
:pswitch_74
:pswitch_7c
:pswitch_84
:pswitch_8c
.end packed-switch
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_6
move v2, v1
:goto_5
:cond_5
return v2
:cond_6
instance-of v0, p1, Lcom/google/android/gms/cast/MediaTrack;
if-eqz v0, :cond_5
check-cast p1, Lcom/google/android/gms/cast/MediaTrack;
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
if-nez v0, :cond_68
move v0, v1
:goto_11
iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
if-nez v3, :cond_6a
move v3, v1
:goto_16
if-ne v0, v3, :cond_5
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
if-eqz v0, :cond_2a
iget-object v0, p1, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/io;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
:cond_2a
iget-wide v3, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
iget-wide v5, p1, Lcom/google/android/gms/cast/MediaTrack;->AP:J
cmp-long v0, v3, v5
if-nez v0, :cond_6c
iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
iget v3, p1, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
if-ne v0, v3, :cond_6c
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6c
iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
iget v3, p1, Lcom/google/android/gms/cast/MediaTrack;->AR:I
if-ne v0, v3, :cond_6c
:goto_66
move v2, v1
goto :goto_5
:cond_68
move v0, v2
goto :goto_11
:cond_6a
move v3, v2
goto :goto_16
:cond_6c
move v1, v2
goto :goto_66
.end method
.method public getContentId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
return-object v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
return-object v0
.end method
.method public getCustomData()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
return-object v0
.end method
.method public getId()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
return-wide v0
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getSubtype()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
return v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
return v0
.end method
.method public hashCode()I
.registers 5
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-wide v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AP:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AQ:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x5
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x6
iget v2, p0, Lcom/google/android/gms/cast/MediaTrack;->AR:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public setContentId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->Aq:Ljava/lang/String;
return-void
.end method
.method public setContentType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->As:Ljava/lang/String;
return-void
.end method
.method  setCustomData(Lorg/json/JSONObject;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->Ax:Lorg/json/JSONObject;
return-void
.end method
.method  setLanguage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->Ao:Ljava/lang/String;
return-void
.end method
.method  setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->mName:Ljava/lang/String;
return-void
.end method