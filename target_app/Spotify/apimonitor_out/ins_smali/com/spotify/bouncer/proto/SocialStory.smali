.class public final Lcom/spotify/bouncer/proto/SocialStory;
.super Lcom/squareup/wire/Message;
.source "SourceFile"
.field public static final DEFAULT_ID:Ljava/lang/String; = ""
.field public static final DEFAULT_RELATED:Ljava/util/List; = null
.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long; = null
.field public static final DEFAULT_TYPE:Lcom/spotify/bouncer/proto/SocialStory$StoryType; = null
.field public static final DEFAULT_URI:Ljava/lang/String; = ""
.field public static final DEFAULT_USERNAME:Ljava/lang/String; = ""
.field public static final DEFAULT_WEIGHT:Ljava/lang/Integer;
.field public final id:Ljava/lang/String;
.field public final metadata:Lcom/spotify/bouncer/proto/Metadata;
.field public final related:Ljava/util/List;
.field public final timestamp:Ljava/lang/Long;
.field public final type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
.field public final uri:Ljava/lang/String;
.field public final username:Ljava/lang/String;
.field public final weight:Ljava/lang/Integer;
.method static constructor <clinit>()V
.registers 2
sget-object v0, Lcom/spotify/bouncer/proto/SocialStory$StoryType;->a:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
sput-object v0, Lcom/spotify/bouncer/proto/SocialStory;->DEFAULT_TYPE:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
const-wide/16 v0, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
sput-object v0, Lcom/spotify/bouncer/proto/SocialStory;->DEFAULT_TIMESTAMP:Ljava/lang/Long;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/bouncer/proto/SocialStory;->DEFAULT_RELATED:Ljava/util/List;
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
sput-object v0, Lcom/spotify/bouncer/proto/SocialStory;->DEFAULT_WEIGHT:Ljava/lang/Integer;
return-void
.end method
.method private constructor <init>(Lcom/spotify/bouncer/proto/SocialStory$Builder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->id:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->id:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->timestamp:Ljava/lang/Long;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->timestamp:Ljava/lang/Long;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->username:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->username:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->uri:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->uri:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->metadata:Lcom/spotify/bouncer/proto/Metadata;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->metadata:Lcom/spotify/bouncer/proto/Metadata;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->related:Ljava/util/List;
invoke-static {v0}, Lcom/spotify/bouncer/proto/SocialStory;->c(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->related:Ljava/util/List;
iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory$Builder;->weight:Ljava/lang/Integer;
iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->weight:Ljava/lang/Integer;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/bouncer/proto/SocialStory$Builder;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/bouncer/proto/SocialStory;-><init>(Lcom/spotify/bouncer/proto/SocialStory$Builder;)V
return-void
.end method
.method static synthetic a(Ljava/util/List;)Ljava/util/List;
.registers 2
invoke-static {p0}, Lcom/spotify/bouncer/proto/SocialStory;->b(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/spotify/bouncer/proto/SocialStory;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/bouncer/proto/SocialStory;
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->id:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->id:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->timestamp:Ljava/lang/Long;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->timestamp:Ljava/lang/Long;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->username:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->username:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->uri:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->uri:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->metadata:Lcom/spotify/bouncer/proto/Metadata;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->metadata:Lcom/spotify/bouncer/proto/Metadata;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->related:Ljava/util/List;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->related:Ljava/util/List;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/util/List;Ljava/util/List;)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->weight:Ljava/lang/Integer;
iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialStory;->weight:Ljava/lang/Integer;
invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_5d
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->hashCode:I
if-nez v0, :cond_6c
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->id:Ljava/lang/String;
if-eqz v0, :cond_6d
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->id:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_f
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
if-eqz v0, :cond_6f
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
invoke-virtual {v0}, Lcom/spotify/bouncer/proto/SocialStory$StoryType;->hashCode()I
move-result v0
:goto_1b
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->timestamp:Ljava/lang/Long;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->timestamp:Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I
move-result v0
:goto_28
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->username:Ljava/lang/String;
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->username:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_35
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->uri:Ljava/lang/String;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->uri:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_42
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->metadata:Lcom/spotify/bouncer/proto/Metadata;
if-eqz v0, :cond_77
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->metadata:Lcom/spotify/bouncer/proto/Metadata;
invoke-virtual {v0}, Lcom/spotify/bouncer/proto/Metadata;->hashCode()I
move-result v0
:goto_4f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->related:Ljava/util/List;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->related:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
:goto_5c
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x25
iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialStory;->weight:Ljava/lang/Integer;
if-eqz v2, :cond_69
iget-object v1, p0, Lcom/spotify/bouncer/proto/SocialStory;->weight:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I
move-result v1
:cond_69
add-int/2addr v0, v1
iput v0, p0, Lcom/spotify/bouncer/proto/SocialStory;->hashCode:I
:cond_6c
return v0
:cond_6d
move v0, v1
goto :goto_f
:cond_6f
move v0, v1
goto :goto_1b
:cond_71
move v0, v1
goto :goto_28
:cond_73
move v0, v1
goto :goto_35
:cond_75
move v0, v1
goto :goto_42
:cond_77
move v0, v1
goto :goto_4f
:cond_79
const/4 v0, 0x1
goto :goto_5c
.end method