.class public final Lcom/spotify/bouncer/proto/SocialStory$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/g",
        "<",
        "Lcom/spotify/bouncer/proto/SocialStory;",
        ">;"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public metadata:Lcom/spotify/bouncer/proto/Metadata;

.field public related:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/bouncer/proto/SocialStory;",
            ">;"
        }
    .end annotation
.end field

.field public timestamp:Ljava/lang/Long;

.field public type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;

.field public uri:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public weight:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/bouncer/proto/SocialStory;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->timestamp:Ljava/lang/Long;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->username:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->uri:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->metadata:Lcom/spotify/bouncer/proto/Metadata;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->metadata:Lcom/spotify/bouncer/proto/Metadata;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->related:Ljava/util/List;

    invoke-static {v0}, Lcom/spotify/bouncer/proto/SocialStory;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->related:Ljava/util/List;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStory;->weight:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->weight:Ljava/lang/Integer;

    goto :goto_5
.end method


# virtual methods
.method public final build()Lcom/spotify/bouncer/proto/SocialStory;
    .registers 3

    new-instance v0, Lcom/spotify/bouncer/proto/SocialStory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spotify/bouncer/proto/SocialStory;-><init>(Lcom/spotify/bouncer/proto/SocialStory$Builder;B)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/bouncer/proto/SocialStory$Builder;->build()Lcom/spotify/bouncer/proto/SocialStory;

    move-result-object v0

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Lcom/spotify/bouncer/proto/Metadata;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->metadata:Lcom/spotify/bouncer/proto/Metadata;

    return-object p0
.end method

.method public final related(Ljava/util/List;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/bouncer/proto/SocialStory;",
            ">;)",
            "Lcom/spotify/bouncer/proto/SocialStory$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/spotify/bouncer/proto/SocialStory$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->related:Ljava/util/List;

    return-object p0
.end method

.method public final timestamp(Ljava/lang/Long;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final type(Lcom/spotify/bouncer/proto/SocialStory$StoryType;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->type:Lcom/spotify/bouncer/proto/SocialStory$StoryType;

    return-object p0
.end method

.method public final uri(Ljava/lang/String;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final username(Ljava/lang/String;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->username:Ljava/lang/String;

    return-object p0
.end method

.method public final weight(Ljava/lang/Integer;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/bouncer/proto/SocialStory$Builder;->weight:Ljava/lang/Integer;

    return-object p0
.end method
