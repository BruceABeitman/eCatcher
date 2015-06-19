.class public Lcom/facebook/katana/service/api/FacebookEvent;
.super Ljava/lang/Object;
.source "FacebookEvent.java"
.field static final synthetic $assertionsDisabled:Z = false
.field public static final INVALID_ID:J = -0x1L
.field public static final KEY_VENUE_CITY:Ljava/lang/String; = "city"
.field public static final KEY_VENUE_COUNTRY:Ljava/lang/String; = "country"
.field public static final KEY_VENUE_STATE:Ljava/lang/String; = "state"
.field public static final KEY_VENUE_STREET:Ljava/lang/String; = "street"
.field private static final TAG:Ljava/lang/String; = "FacebookEvent"
.field static intStatusMapper:Ljava/util/Map;
.field static statusStringMapper:Ljava/util/Map;
.field static stringStatusMapper:Ljava/util/Map;
.field protected mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
.field protected mCreatorId:J
.field protected mDescription:Ljava/lang/String;
.field protected mEndTime:J
.field protected mEventId:J
.field protected mEventSubtype:Ljava/lang/String;
.field protected mEventType:Ljava/lang/String;
.field protected mHideGuestList:Z
.field protected mHost:Ljava/lang/String;
.field protected mImageUrl:Ljava/lang/String;
.field protected mLocation:Ljava/lang/String;
.field protected mMediumImageUrl:Ljava/lang/String;
.field protected mName:Ljava/lang/String;
.field protected mRsvpStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
.field protected mStartTime:J
.field protected mTagline:Ljava/lang/String;
.field protected mVenue:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 5
const-class v1, Lcom/facebook/katana/service/api/FacebookEvent;
invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v1
if-nez v1, :cond_69
const/4 v1, 0x1
:goto_9
sput-boolean v1, Lcom/facebook/katana/service/api/FacebookEvent;->$assertionsDisabled:Z
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
sput-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->intStatusMapper:Ljava/util/Map;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
sput-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
sput-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->statusStringMapper:Ljava/util/Map;
sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
const-string v2, "attending"
new-instance v3, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
sget-object v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-direct {v3, v4}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;-><init>(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;)V
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
const-string v2, "unsure"
new-instance v3, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
sget-object v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-direct {v3, v4}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;-><init>(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;)V
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
const-string v2, "declined"
new-instance v3, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
sget-object v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-direct {v3, v4}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;-><init>(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;)V
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
const-string v2, "not_replied"
new-instance v3, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
sget-object v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-direct {v3, v4}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;-><init>(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;)V
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_62
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_6b
return-void
:cond_69
const/4 v1, 0x0
goto :goto_9
:cond_6b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
sget-object v3, Lcom/facebook/katana/service/api/FacebookEvent;->intStatusMapper:Ljava/util/Map;
new-instance v4, Ljava/lang/Integer;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v1, v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I
move-result v1
invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v3, Lcom/facebook/katana/service/api/FacebookEvent;->statusStringMapper:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_62
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventId:J
return-void
.end method
.method public static deserializeVenue([B)Ljava/util/Map;
.registers 6
new-instance v0, Ljava/io/ByteArrayInputStream;
invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v2, Ljava/io/ObjectInputStream;
invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_a
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/Map;
:try_end_10
.catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_11
return-object p0
:catch_11
move-exception v3
move-object v1, v3
new-instance v3, Ljava/io/IOException;
invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public static getRsvpStatus(I)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
.registers 3
sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent;->intStatusMapper:Ljava/util/Map;
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
return-object p0
.end method
.method public static getRsvpStatus(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
.registers 2
sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
return-object p0
.end method
.method public static getRsvpStatusString(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)Ljava/lang/String;
.registers 2
sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent;->statusStringMapper:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
return-object p0
.end method
.method public static parseFromJSON(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookEvent;
.registers 7
const/4 v0, 0x0
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
new-instance v2, Lcom/facebook/katana/service/api/FacebookEvent;
invoke-direct {v2}, Lcom/facebook/katana/service/api/FacebookEvent;-><init>()V
sget-boolean v4, Lcom/facebook/katana/service/api/FacebookEvent;->$assertionsDisabled:Z
if-nez v4, :cond_18
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v3, v4, :cond_18
new-instance v4, Ljava/lang/AssertionError;
invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V
throw v4
:cond_18
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
:goto_1c
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_21
return-object v2
:cond_21
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_35
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v1, v4}, Lcom/facebook/katana/service/api/FacebookEvent;->parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
:goto_30
:cond_30
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
goto :goto_1c
:cond_35
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
if-eq v3, v4, :cond_3d
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_4c
:cond_3d
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_4a
const/4 v4, 0x1
:goto_46
invoke-virtual {v2, v1, v4}, Lcom/facebook/katana/service/api/FacebookEvent;->parseBooleanField(Ljava/lang/String;Z)Z
goto :goto_30
:cond_4a
const/4 v4, 0x0
goto :goto_46
:cond_4c
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_5c
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v4
invoke-virtual {v2, v1, v4, v5}, Lcom/facebook/katana/service/api/FacebookEvent;->parseLongField(Ljava/lang/String;J)Z
goto :goto_30
:cond_5c
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_6a
invoke-virtual {v2, v0, p0}, Lcom/facebook/katana/service/api/FacebookEvent;->parseObjectField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
move-result v4
if-nez v4, :cond_30
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_30
:cond_6a
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_78
invoke-virtual {v2, v0, p0}, Lcom/facebook/katana/service/api/FacebookEvent;->parseArrayField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
move-result v4
if-nez v4, :cond_30
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_30
:cond_78
sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_30
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_30
.end method
.method public static parseRsvpStatus(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;)V
.registers 9
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
const/4 v1, 0x0
const/4 v2, 0x0
sget-boolean v5, Lcom/facebook/katana/service/api/FacebookEvent;->$assertionsDisabled:Z
if-nez v5, :cond_14
sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v5, :cond_14
new-instance v5, Ljava/lang/AssertionError;
invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V
throw v5
:cond_14
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
:goto_18
sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v5, :cond_22
if-eqz v1, :cond_21
invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
return-void
:cond_22
sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v5, :cond_2a
sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v5, :cond_7d
:cond_2a
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v5, "eid"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_3e
const-string v5, "uid"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_5a
:cond_3e
sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v5, :cond_50
new-instance v1, Ljava/lang/Long;
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v5
invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V
:goto_4b
:cond_4b
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
goto :goto_18
:cond_50
new-instance v1, Ljava/lang/Long;
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
goto :goto_4b
:cond_5a
const-string v5, "rsvp_status"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4b
sget-boolean v5, Lcom/facebook/katana/service/api/FacebookEvent;->$assertionsDisabled:Z
if-nez v5, :cond_70
sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v5, :cond_70
new-instance v5, Ljava/lang/AssertionError;
invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V
throw v5
:cond_70
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
sget-object v5, Lcom/facebook/katana/service/api/FacebookEvent;->stringStatusMapper:Ljava/util/Map;
invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
goto :goto_4b
:cond_7d
sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v5, :cond_85
sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v5, :cond_4b
:cond_85
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_4b
.end method
.method public static serializeVenue(Ljava/util/Map;)[B
.registers 4
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v1, Ljava/io/ObjectOutputStream;
invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
return-object v2
.end method
.method public getCreator()Lcom/facebook/katana/service/api/FacebookProfile;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
return-object v0
.end method
.method public getCreatorId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreatorId:J
return-wide v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mDescription:Ljava/lang/String;
return-object v0
.end method
.method public getEndTime()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEndTime:J
return-wide v0
.end method
.method public getEventId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventId:J
return-wide v0
.end method
.method public getEventSubtype()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventSubtype:Ljava/lang/String;
return-object v0
.end method
.method public getEventType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventType:Ljava/lang/String;
return-object v0
.end method
.method public getHideGuestList()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mHideGuestList:Z
return v0
.end method
.method public getHost()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mHost:Ljava/lang/String;
return-object v0
.end method
.method public getImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mImageUrl:Ljava/lang/String;
return-object v0
.end method
.method public getLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mLocation:Ljava/lang/String;
return-object v0
.end method
.method public getMediumImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mMediumImageUrl:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getRsvpStatus()Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mRsvpStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
return-object v0
.end method
.method public getStartTime()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mStartTime:J
return-wide v0
.end method
.method public getTagline()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mTagline:Ljava/lang/String;
return-object v0
.end method
.method public getVenue()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mVenue:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method protected parseArrayField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method protected parseBooleanField(Ljava/lang/String;Z)Z
.registers 4
const-string v0, "hide_guest_list"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
iput-boolean p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mHideGuestList:Z
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected parseLongField(Ljava/lang/String;J)Z
.registers 5
const-string v0, "eid"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventId:J
:goto_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const-string v0, "start_time"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mStartTime:J
goto :goto_a
:cond_17
const-string v0, "end_time"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEndTime:J
goto :goto_a
:cond_22
const-string v0, "creator"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreatorId:J
goto :goto_a
:cond_2d
const/4 v0, 0x0
goto :goto_b
.end method
.method protected parseObjectField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
.registers 8
const-string v1, "venue"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_80
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mVenue:Ljava/util/Map;
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
sget-boolean v1, Lcom/facebook/katana/service/api/FacebookEvent;->$assertionsDisabled:Z
if-nez v1, :cond_21
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v0, v1, :cond_21
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V
throw v1
:cond_21
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_25
sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_2b
const/4 v1, 0x1
:goto_2a
return v1
:cond_2b
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_41
iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mVenue:Ljava/util/Map;
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_3c
:cond_3c
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_25
:cond_41
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_57
iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mVenue:Ljava/util/Map;
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F
move-result v3
invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3c
:cond_57
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_6d
iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mVenue:Ljava/util/Map;
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3c
:cond_6d
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v0, v1, :cond_75
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_3c
:cond_75
const-string v1, "FacebookEvent"
const-string v2, "Unexpected object/array in venue"
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_3c
:cond_80
const/4 v1, 0x0
goto :goto_2a
.end method
.method protected parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
const-string v1, "null"
const-string v0, "name"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mName:Ljava/lang/String;
:goto_1e
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const-string v0, "tagline"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mTagline:Ljava/lang/String;
goto :goto_1e
:cond_3d
const-string v0, "pic_small"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_56
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mImageUrl:Ljava/lang/String;
goto :goto_1e
:cond_56
const-string v0, "pic"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6f
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mMediumImageUrl:Ljava/lang/String;
goto :goto_1e
:cond_6f
const-string v0, "host"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8c
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mHost:Ljava/lang/String;
goto :goto_1e
:cond_8c
const-string v0, "description"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_aa
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mDescription:Ljava/lang/String;
goto/16 :goto_1e
:cond_aa
const-string v0, "event_type"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c8
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventType:Ljava/lang/String;
goto/16 :goto_1e
:cond_c8
const-string v0, "event_subtype"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e6
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventSubtype:Ljava/lang/String;
goto/16 :goto_1e
:cond_e6
const-string v0, "location"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_104
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mLocation:Ljava/lang/String;
goto/16 :goto_1e
:cond_104
const/4 v0, 0x0
goto/16 :goto_1f
.end method
.method public setCreator(Lcom/facebook/katana/service/api/FacebookProfile;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
return-void
.end method
.method public setRsvpStatus(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mRsvpStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
return-void
.end method
.method public writeContentValues(Landroid/content/ContentValues;)V
.registers 6
iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mVenue:Ljava/util/Map;
invoke-static {v1}, Lcom/facebook/katana/service/api/FacebookEvent;->serializeVenue(Ljava/util/Map;)[B
move-result-object v0
const-string v1, "event_id"
iget-wide v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventId:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v1, "event_name"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mName:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "tagline"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mTagline:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "image_url"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mImageUrl:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "medium_image_url"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mMediumImageUrl:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "host"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mHost:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "description"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mDescription:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "event_type"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventType:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "event_subtype"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEventSubtype:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "start_time"
iget-wide v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mStartTime:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v1, "end_time"
iget-wide v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mEndTime:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
if-eqz v1, :cond_88
const-string v1, "creator_id"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookProfile;->getId()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v1, "display_name"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookProfile;->getDisplayName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "creator_image_url"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mCreator:Lcom/facebook/katana/service/api/FacebookProfile;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookProfile;->getImageUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_88
const-string v1, "location"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mLocation:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "venue"
invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
const-string v1, "hide_guest_list"
iget-boolean v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mHideGuestList:Z
if-eqz v2, :cond_b4
const/4 v2, 0x1
:goto_9b
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "rsvp_status"
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookEvent;->mRsvpStatus:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v2, v2, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
return-void
:cond_b4
const/4 v2, 0x0
goto :goto_9b
.end method