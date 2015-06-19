.class public final Lcom/spotify/bouncer/proto/SocialStoryList$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/g",
        "<",
        "Lcom/spotify/bouncer/proto/SocialStoryList;",
        ">;"
    }
.end annotation


# instance fields
.field public stories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/bouncer/proto/SocialStory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/bouncer/proto/SocialStoryList;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStoryList;->stories:Ljava/util/List;

    invoke-static {v0}, Lcom/spotify/bouncer/proto/SocialStoryList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList$Builder;->stories:Ljava/util/List;

    goto :goto_5
.end method


# virtual methods
.method public final build()Lcom/spotify/bouncer/proto/SocialStoryList;
    .registers 3

    new-instance v0, Lcom/spotify/bouncer/proto/SocialStoryList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spotify/bouncer/proto/SocialStoryList;-><init>(Lcom/spotify/bouncer/proto/SocialStoryList$Builder;B)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/bouncer/proto/SocialStoryList$Builder;->build()Lcom/spotify/bouncer/proto/SocialStoryList;

    move-result-object v0

    return-object v0
.end method

.method public final stories(Ljava/util/List;)Lcom/spotify/bouncer/proto/SocialStoryList$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/bouncer/proto/SocialStory;",
            ">;)",
            "Lcom/spotify/bouncer/proto/SocialStoryList$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/spotify/bouncer/proto/SocialStoryList$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList$Builder;->stories:Ljava/util/List;

    return-object p0
.end method
